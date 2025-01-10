# Message that holds commands that are exposed through the
# Fast Robot Interface (FRI).
# Following commands are exposed (refer to KUKA::FRI::LBRCommand in friLBRCommand.h for documentation):
#
#  * joint_position [rad]
#  * torque [Nm]
#  * wrench [N/Nm]
#  * cartesian_pose
#  * cartesian_matrix
#  * redundancy_value

float64[7] joint_position
float64[7] torque
float64[6] wrench

float64[7] cartesian_pose
# float64[12] cartesian_matrix
float64 redundancy_value