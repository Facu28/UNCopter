/*
 * qPTOS.c
 *
 *  Created on: 18/09/2013
 *      Author: Nelso Bedin
 */

#include "qPTOS.h"
#include <stdio.h>
#include <math.h>

void qPTOS_Init(qPTOS *q){
	q->K_2=sqrt(fabs(2*q->K_1/(q->b_angle*q->alpha)));
	q->yl=q->sat/q->K_1;
}
//TODO: corrigir a velocidade
float qPTOS_Process_(qPTOS * q, float Input, float PV){

	// Variables for local use
	float ControllerOutput;
	float error, fex, Uptos;
	int signal;

	// Error
	error=( (q->b)*(Input) ) - PV;

	// PTOS control law
	if (fabs(error) <= q->yl){
		Uptos= q->K_1*error-q->K_2*(PV-q->ctx.PV_old) ;
	}
	else{
		if (error<0){
			signal=-1;
		}
		else{
			signal=1;
		}
		fex = signal*(sqrt(2*q->alpha*q->sat*fabs(error)*q->b_angle)-q->sat/q->K_2);
		Uptos=q->K_2*(fex-(PV-q->ctx.PV_old));
	}

	// Calculate controller output for Automatic or manual mode
	switch (q->Mode){
		case MANUAL:
			ControllerOutput = Input;
			break;

		case AUTOMATIC:
			ControllerOutput =  Uptos;
			if (ControllerOutput > q->OutputMax){
				ControllerOutput = q->OutputMax;
			}else if (ControllerOutput < q->OutputMin){
				ControllerOutput = q->OutputMin;
			}
			break;

		case RELAY:
			if ((Input-PV)>=0){
				ControllerOutput = q->OutputMax;
			}else{
				ControllerOutput = q->OutputMin;
			}
			break;
		default:
			// ERROR
			ControllerOutput = NAN;
			break;
	}
	return ControllerOutput;

}
