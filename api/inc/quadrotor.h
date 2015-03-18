/*
 * quadrotor.h
 *
 *  Created on: 11/01/2013
 *      Author: alan
 */

#ifndef QUADROTOR_H_
#define QUADROTOR_H_

#include "joystick.h"
#include "qPIDs.h"
#include "qPTOS.h"
#include "mavlink.h"
#include "ident.h"

#define ROLL       0
#define PITCH      1
#define YAW        2
#define ALTITUDE   3

#define THRUST      0
#define TORQUE      1

#define K_Z      700
#define K_PHI    200//200
#define K_THETA  	0// 200//200
#define K_PSI   0//300

typedef enum {ESC_STANDBY=0, ESC_ARMED} mode_t;

typedef struct {
   float rate[3];
   float attitude[3];
   float setpoint[4];
   float rateCtrlOutput[3];
   float attiCtrlOutput[3];
   uint16_t motorOutput[4];
   uint32_t time;
   float altitude;
   float altitudeCtrlOutput;
   float floor_pressure;
   float current_pressure;
   float temperature;
   float Tm;//tiempo de muestreo calculado en datacollection
} SV_t;

typedef struct {
   float gyroBias[3];
} settings_t;

typedef struct {
   SV_t sv;
   settings_t settings;
   joystick_t joystick;
   qPID rateController[3];
   qPID attiController[3];
   qPID altitudeController;
   qPTOS data_ptos;
   mavlink_system_t mavlink_system;
   mavlink_manual_control_t mavlink_control;
   uint16_t sysload;
   mode_t mode;
   ident id_rate[3];
   ident id_atti[3];
   }quadrotor_t;

extern quadrotor_t quadrotor;


#endif /* QUADROTOR_H_ */
