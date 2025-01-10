# Message that holds states that are exposed through the
# Fast Robot Interface (FRI).
# Following states are exposed (refer to KUKA::FRI::LBRState in friLBRState.h for documentation):
#
#  * sample_time [s]
#  * session_state [#]
#  * connection_quality [#] # POOR, FAIR, GOOD, ECELLENT
#  * safety_state [#]
#  * operation_mode [#] # T1, T2, AUT
#  * drive_state [#]    # OFF, TRANSITIONING, ACTIVE
#  * time_stamp_sec [s]
#  * time_stamp_nano_sec [ns]
#
#  * measured_joint_position [rad]
#  * measured_cartesian_pose [m, m, m, rad, rad, rad]
#  * measured_cartesian_matrix float[3][4]
#  * measured_redundancy_value [rad]
#  * ipo_redundancy_value
#  * redundancy_strategy [#] # 0 for E1, 4 for NO_STRATEGY
#  * ipo_cartesian_pose []
#  * ipo_cartesian_matrix []

#  * ipo_joint_position [rad]
#  * tracking_performance [a.u.]
#  * client_command_mode [#] # 0 for NO_COMMAND_MODE, JOINT_POSITION, WRENCH, TORQUE, CARTESIAN_POSE
#  * overlay_type [#] # 0 for NO_OVERLAY, 1 for JOINT, 2 for CARTESIAN
#  * control_mode [#] # POSITION, CART_IMP, JOINT_IMP, NO_CONTROL

#  * measured_torque [Nm]
#  * commanded_torque [Nm]
#  * external_torque [Nm]
#  * (** in FRI 3.0) external_force [N, Nm]

float64 sample_time
int8 session_state
int8 connection_quality
int8 safety_state
int8 operation_mode
int8 drive_state
float64 tracking_performance
int8 client_command_mode
int8 overlay_type
int8 control_mode
int8 redundancy_strategy

uint32 time_stamp_sec
uint32 time_stamp_nano_sec

float64[7] measured_joint_position
float64[7] ipo_joint_position

float64[7] measured_cartesian_pose
# float64[12] measured_cartesian_matrix
float64 measured_redundancy_value
float64[7] ipo_cartesian_pose
# float64[12] ipo_cartesian_matrix
float64 ipo_redundancy_value

float64[7] measured_torque
float64[7] commanded_torque
float64[7] external_torque