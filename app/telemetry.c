/*
 * telemetry.c
 *
 *  Created on: 13/09/2013
 *      Author: alan
 */

#include "quadrotor.h"
#include "board.h"
#include "DebugConsole.h"
#include "types.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "mavlink.h"
#include "mavlink_bridge.h"
#include "qUART.h"

#define PI 3.14159265359

void Telemetry(void * p){
	mavlink_message_t msg;
	uint8_t buf[MAVLINK_MAX_PACKET_LEN];
	uint16_t len;

	portTickType xLastWakeTime;
	xLastWakeTime = xTaskGetTickCount ();


	while(1){
		if (qUARTStatus[UART_GROUNDCOMM]==DEVICE_READY){

			mavlink_msg_attitude_pack(	quadrotor.mavlink_system.sysid,
										quadrotor.mavlink_system.compid,
										&msg,
										xTaskGetTickCount()/portTICK_RATE_MS,
										quadrotor.sv.attitude[0]*PI/180.0,
										quadrotor.sv.attitude[1]*PI/180.0,
										quadrotor.sv.rateCtrlOutput[ROLL],//quadrotor.sv.attitude[2]*PI/180.0,
										quadrotor.id_rate[0].Q[0],//quadrotor.sv.rate[ROLL],
										quadrotor.id_rate[0].Q[1],//quadrotor.sv.rate[1],
										quadrotor.id_rate[0].error
										//quadrotor.sv.rate[0],
										//quadrotor.sv.rate[1],
										//quadrotor.sv.rate[2]
													);

/* Tricky HUD with joystick mapping
		  mavlink_msg_attitude_pack(	quadrotor.mavlink_system.sysid,
										  quadrotor.mavlink_system.compid,
										  &msg,
										  xTaskGetTickCount()/portTICK_RATE_MS,
										  quadrotor.sv.setpoint[ROLL]*PI/180.0,
										  quadrotor.sv.setpoint[PITCH]*PI/180.0,
										  quadrotor.sv.setpoint[YAW]*PI/180.0,
										  quadrotor.sv.rate[0],
										  quadrotor.sv.rate[1],
										  quadrotor.sv.rate[2]);
*/

			len = mavlink_msg_to_send_buffer(buf, &msg);
			qUART_Send(UART_GROUNDCOMM,buf,len);
/*
			mavlink_msg_vfr_hud_pack(quadrotor.mavlink_system.sysid,
									quadrotor.mavlink_system.compid,
									&msg,
									quadrotor.id_atti[0].Q[4] ,//0.0, // Airspeed
									quadrotor.id_rate[0].error,//0.0, // Groundspeed
									250, //TODO: Change to realheading
									quadrotor.sv.rateCtrlOutput[YAW],
									quadrotor.sv.altitude,
									0.0  //TODO: Change to ascent rate
									);

			uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);
			qUART_Send(UART_GROUNDCOMM,buf,len);
*/
/*
#if USE_BAROMETER
			mavlink_msg_scaled_pressure_pack(quadrotor.mavlink_system.sysid,
											quadrotor.mavlink_system.compid,
											&msg,
											xTaskGetTickCount()/portTICK_RATE_MS,
											quadrotor.sv.current_pressure,
											quadrotor.sv.current_pressure-quadrotor.sv.floor_pressure,
											(int) quadrotor.sv.temperature * 100.0);

			uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);
			qUART_Send(UART_GROUNDCOMM,buf,len);
#endif */

		}
		vTaskDelayUntil( &xLastWakeTime, 20/portTICK_RATE_MS);
	}
}
