cd ~/custom_ws

rm -rf build/ log/ install/

colcon build --symlink-install --packages-up-to nav2_msgs

source install/setup.bash

echo "============================ros2 interface show nav2_msgs/msg/EdgeCost"
ros2 interface show nav2_msgs/msg/EdgeCost

echo "============================ros2 interface show nav2_msgs/msg/EdgeCost.idl"
cat install/nav2_msgs/share/nav2_msgs/msg/EdgeCost.idl

echo "============================================================================"
echo "============================================================================"
echo "============================================================================"

echo "============================ros2 interface show nav2_msgs/srv/ClearCostmapAroundRobot"
ros2 interface show nav2_msgs/srv/ClearCostmapAroundRobot

echo "============================ros2 interface show nav2_msgs/srv/ClearCostmapAroundRobot.idl"
cat install/nav2_msgs/share/nav2_msgs/srv/ClearCostmapAroundRobot.idl


echo "============================================================================"
echo "============================================================================"
echo "============================================================================"

echo "============================ros2 interface show nav2_msgs/action/Spin"
ros2 interface show nav2_msgs/action/Spin

echo "============================ros2 interface show nav2_msgs/action/Spin.idl"
cat install/nav2_msgs/share/nav2_msgs/action/Spin.idl

echo "============================================================================"
echo "============================================================================"
echo "============================================================================"

echo "============================cat the .json file for Field.idl"
cat install/nav2_msgs/share/nav2_msgs/msg/Field.json

echo "============================cat the Field.idl"
cat install/nav2_msgs/share/nav2_msgs/msg/Field.idl

echo "=============================python3 field_type.py"
cd && cd scripts && python3 field_type.py