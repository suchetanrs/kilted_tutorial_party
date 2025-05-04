echo "====================================================running the server"

# User input in terminal 1
ros2 run examples_rclcpp_minimal_action_server action_server_member_functions &

echo "========================================================="
echo "========================================================="
echo "========================================================="

echo "====================================================running the action_client_not_composable"
echo "========================================================="
echo "========================================================="
echo "========================================================="

# User input in terminal 1
ros2 run examples_rclcpp_minimal_action_client action_client_not_composable

echo "====================================================running the action_client_not_composable_with_cancel"
echo "========================================================="
echo "========================================================="
echo "========================================================="

# User input in terminal 1
ros2 run examples_rclcpp_minimal_action_client action_client_not_composable_with_cancel

echo "====================================================running the action_client_not_composable_with_feedback"
echo "========================================================="
echo "========================================================="
echo "========================================================="

# User input in terminal 1
ros2 run examples_rclcpp_minimal_action_client action_client_not_composable_with_feedback

echo "====================================================running the action_client_member_functions"
echo "========================================================="
echo "========================================================="
echo "========================================================="

# User input in terminal 1
ros2 run examples_rclcpp_minimal_action_client action_client_member_functions
