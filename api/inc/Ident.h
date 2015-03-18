/*
 * Ident.h
Bloque para identificación del sistema por el método de mínimos cuadrados
 *Pk -> P en el instante k
 *Pk_1 -> P en el instante k-1
 *
 *y(k)=A*y(k-1) + B*u(k)
 *
 *Ak    -> estimación actual del parámetro A
 *Ak_1  -> estimación anterior del prámetro A
 *Bk    -> estimación actual del parámetro B
 *Bk_1  -> estimación anterior del parámetro B
 *  Created on: 03/03/2015
 *      Author: FACU
 */

#ifndef IDENT_H_
#define IDENT_H_



#endif /* IDENT_H_ */

#include <stdint.h>


typedef struct{
int n,l,i,j; //n=cantidad de componentes del vector m que corresponden a y(k-1)...y(k-n);lcantidad de componentes del vector m que corresponden a u(k-1)...u(k-n)
float m[5],Q[5],Pk[2],error,FO,Pk_1,Ak,Ak_1,Bk,Bk_1,Yk_1; // FO= Factor de Olvido
int k; //estimation number
} ident;

void estimate (ident *q,float input, float output );//estima parámetros de la planta de velocidad
void estimateRate (ident *q,float input, float output );
void ident_Init (ident *q);
