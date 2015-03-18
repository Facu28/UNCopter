/*
 * qPTOS.h
 *
 *  Created on: 18/09/2013
 *      Author: Nelso Bedin
 */

#ifndef QPTOS_H_
#define QPTOS_H_

#include <stdint.h>
#include "qPIDs.h"

// Types
typedef struct{

	// Parameters:
	float K_1, alpha, K_2, yl, b_angle;

	float sat;			// For saturation
	float Ts;			// General property
	float b;			// For set point Weighting

	float OutputMax;	// For wind-up
	float OutputMin;	// For wind-up

	qPID_Mode			Mode;
	qPID_Context		ctx;
} qPTOS;

// Prototypes
void qPTOS_Init(qPTOS * q);
float qPTOS_Process_(qPTOS *q, float Input, float PV);
#define qPTOS_Procees(pPTOS,input,pv) qPTOS_Process_(pPTOS,input,pv);

#endif /* QPTOS_H_ */
