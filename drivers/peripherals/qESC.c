/*
 * qESC.c
 *
 *  Created on: 29/10/2012
 *      Author: alan
 */

#include "types.h"
#include "qESC.h"
#include "qPWM.h"
#include "quadrotor.h"

Status qESC_Init(){
   qPWM_Init(ESC_FREC_RATE);
   return SUCCESS;
}

Status qESC_InitChannel(qPWM_Channel * q){
   int i;
   qPWM_InitChannel(q);
   //delay(10);
   for (i=0;i<100000;i++);
   qPWM_SetDuty(q,ESC_MIN_VALUE);

   return SUCCESS;
}

Status qESC_SetOutput(qPWM_Channel * q, uint16_t duty){
   if (duty>=INPUT_MAX){qPWM_SetDuty(q,ESC_MAX_VALUE);
                  };

   if (duty<=INPUT_MAX){
      uint32_t buffer = (duty*(ESC_MAX_VALUE-ESC_MIN_VALUE));
      buffer = buffer / INPUT_MAX;
      qPWM_SetDuty(q,ESC_MIN_VALUE+buffer);
      return SUCCESS;
   }else if (duty<=0){
      qPWM_SetDuty(q,ESC_MIN_VALUE);
   }else{
      return ERROR;
   }
}

variador_t speeds;

float Adapt_ESCs(qSpeeds * q, float Input, int who){
// ADAPTA LA SALIDA DE LOS CONTROLES TANTO A LA CURVA DEL EMPUJE PARA EL TORQUE DE MODO QUE LA SALIDA DE LOS ESCs SEA E=Ke*(SALIDA DE CONTROL) Y T=Kt*(SALIDA DE CONTROL)
// ES DECIR QUE LOS ESC TENGAN UNA RESPUESTE LINEAL CON EL CONTROL
   // For local use
   float AdaptedOutput;
   float Ce,Ct,Ke,Kt,be,bt;

   Ke = q->Ke;
   Kt = q->Kt;
   be = q->be;
   bt = q->bt;

   Ce=be/Ke;
   Ct=bt/Kt;

   switch (who){
   case THRUST:
      AdaptedOutput=Input-Ce;
   case TORQUE:
      AdaptedOutput=Input-Ct;
   }
      return AdaptedOutput;
}
