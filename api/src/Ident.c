/*
 * Ident.c
 *
 *  Created on: 03/03/2015
 *      Author: FACU
 */

#include "math.h"
#include "Ident.h"
void ident_Init (ident *q){
	int r,n,l;
	n=q->n;
	l=q->l;
	q->k=0;
	q->Pk_1=100000;
	q->Ak_1=10;
	q->Ak=10;
	q->Bk_1=10;
	q->Bk=10;
	q->Pk[0]=100000;
	q->Pk[1]=100000;
	for (r=0;r<n+l;r++){
		q->m[r]= 10;
		q->Q[r]= 10;}
}

float vectors_dot_prod(float *x, float *y, int n)
{
    float res = 0.0;
    int f;
    for (f = 0; f < n; f++)
    {
        res += x[f] * y[f];
    }
    return res;
}

void estimateRate (ident *q,float Uk, float Yk ){
int k;
		k=q->k;
		k=k+1;
		q->k=k;
float Pk, Pk_1,Ak,Ak_1,Bk,Bk_1,Yk_1,Y$;
	    Pk_1 = q->Pk_1;
		Ak_1 = q->Ak ;
		Bk_1 = q->Bk;
		Yk_1 = q->Yk_1;

float m2,KA,KB; // m2=[y(k-1) u(k)]*[y(k-1) u(k)]'

m2=Yk_1*Yk_1 + Uk*Uk;

	Pk= Pk_1 - (Pk_1*m2*Pk_1)/(1+m2*Pk_1);
	//calculo de las ganancias de corrección de la matriz K KA para el parametro A y KB para el B
	KA=Pk*Yk_1;
	KB=Pk*Uk;
	//calculo Y estimada (Y$)
	Y$=Yk_1*Ak_1+Uk*Bk_1;
	//calculo parametros a ajustar
	Ak= Ak_1 + KA*(Yk-Y$);
	Bk= Bk_1 + KB*(Yk-Y$);
	//error de estimacion
q->error=Yk-Y$;
	q->Pk_1=Pk;	//guardo Pk en el contexto del bloque a identificar
	q->Yk_1=Yk;	//guardo Yk actual para el calculo en el instante siguiente
	q->Ak=Ak;
	q->Bk=Bk;

}

void estimate (ident *q,float Uk, float Yk ){
int k,n,l,t=0,r=0,i,j,FO;
		n=q->n;//Y(k-1)....Y(k-n)
		l=q->l;//U(k)....U(k-l)
		k=q->k;//numero de estumación
		i=q->i;//tomo valor de iteración de la estructura
		j=q->j;//tomo valor de iteración de la estructura
		FO=q->FO;
float m[n+l],Q[n+l],K[n+l],Y$,m2;//m= polinomio regresor, Q=parámetros a calcular, K matriz de ganancias de corrección, Y$=salida estimada,m2=polinomio regresor al cuadrado

//valores iniciales del algoritmo
if(k==0){
		q->i=0;
		q->j=0;
		q->Pk[0]=10000;
		q->Pk[1]=10000;
	for (r=0;r<n+l;r++){
		q->m[r]= 10;
		q->Q[r]= 10;}
}
k=k+1;
q->k=k;
//obtengo el polinomio regresor de la estructura ident

for(r=0;r<n+l;r++){ //obtengo la parte del polinomio regresor
	m[r]=q->m[r];
}
for(r=0;r<n+l;r++){//obtengo los coeficientes calculados anteriormente
	Q[r]=q->Q[r];
}

//obtengo el Pk (sólo para el inicio) y Pk_1
float Pk, Pk_1;
	  Pk   = q->Pk[0];
	  Pk_1 = q->Pk[1];
//calculo m[]*m'[] para el cálculo de P(k)
      m2= vectors_dot_prod(m,m,n+l);// devuelve m[]*m'[];
//calculo P(k)
      Pk= Pk_1/FO - (Pk_1*m2*Pk_1)/(FO+m2*Pk_1);
//calculo de las ganancias de corrección de la matriz K
     for (t=0;t<n+l;t++) {
    	 K[t]=Pk*m[t];}
//calculo y(k) estimada (Y$)
      Y$=vectors_dot_prod(m,Q,n+l);
//calculo los parámetros del estimador
      for (t=0;t<n+l;t++) {
          	 Q[t]=Q[t]+K[t]*(Yk-Y$);}
q->error=Yk-Y$;
//--------------------------------------------------------------
//Formo el polinomio regresor m(k) y lo guardo en la estructura tipo ident
//--------------------------------------------------------------
	//obtengo pate del polinomio regresor correspondiente a las salidas Yk
	if (i<n){
	q->m[i]=Yk;
	i++;
	q->i=i;
	}else{
	for(t=0;t<n-1;t++){
		q->m[t]=q->m[t+1];
	}
	q->m[n-1]=Yk;
	}
	if (j<l){          //obtengo parte del polinomio regresor correspondiente a las entradas de control
		q->m[n+j]=Uk;
		j++;
		q->j=j;
		}else{
			for(t=0;t<l-1;t++){
			q->m[n+t]=q->m[n+t+1];
				}
		q->m[n+l-1]=Uk;
					}
//Cargo parámetros en la estructura correspondiente
	for(t=0;t<n+l;t++){
		q->Q[t]=Q[t];
					}
//---------------------------------------------------------------
	q->Pk[1]=Pk;	//guardo Pk en el contexto del bloque a identificar

}
