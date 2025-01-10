# Cartesian Pose command for the Fast Robot Interface (FRI)
# Refer to KUKA::FRI::LBRCommand in friLBRCommand.h for documentation.
# 
# t_x, t_y, t_z, q_w, q_x, q_y, q_z
# redundancyValue [A3 Joint position (-170, 170) ~2.967, set it to a value > 3.2 to use the current position]


float64[7] cartesian_pose_quaternion
float64 redundancy_value
