@echo off

echo ================== ros2 launch dummy_robot_bringup dummy_robot_bringup_launch.py
start "" cmd /c "ros2 launch dummy_robot_bringup dummy_robot_bringup_launch.py"

REM Wait 5 seconds
ping 127.0.0.1 -n 6 > nul

echo ================== ros2 topic bw /joint_states
start "" /wait cmd /c "timeout 5 & ros2 topic bw /joint_states"

echo ================== ros2 topic delay /joint_states
start "" /wait cmd /c "timeout 5 & ros2 topic delay /joint_states"

echo ================== ros2 topic echo /joint_states
start "" /wait cmd /c "timeout 1 & ros2 topic echo /joint_states"

echo ================== ros2 topic find sensor_msgs/msg/JointState
start "" /wait cmd /c "timeout 5 & ros2 topic find sensor_msgs/msg/JointState"

echo ================== ros2 topic hz /joint_states
start "" /wait cmd /c "timeout 5 & ros2 topic hz /joint_states"

echo ================== ros2 topic info /joint_states
start "" /wait cmd /c "timeout 5 & ros2 topic info /joint_states"

echo ================== ros2 topic list
start "" /wait cmd /c "timeout 5 & ros2 topic list"

echo ================== ros2 topic type /joint_states
start "" /wait cmd /c "timeout 5 & ros2 topic type /joint_states"

echo ================== running ros2 run demo_nodes_cpp listener
start "" cmd /c "ros2 run demo_nodes_cpp listener"

REM Allow listener to start
ping 127.0.0.1 -n 3 > nul

echo ================== publishing to /chatter
ros2 topic pub /chatter std_msgs/msg/String "{data: 'hi'}"
