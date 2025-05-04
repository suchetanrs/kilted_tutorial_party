@echo off

echo ========================== starting ros2 launch demo_nodes_cpp talker_listener_launch.py
start "" cmd /c "ros2 launch demo_nodes_cpp talker_listener_launch.py"

REM Wait 1 second
ping 127.0.0.1 -n 5 > nul

echo ========================== node list below
ros2 node list

REM Wait 4 seconds
ping 127.0.0.1 -n 5 > nul

echo ========================== killing talker and listener

REM Kill processes by name
taskkill /IM talker.exe /F > nul 2>&1
taskkill /IM listener.exe /F > nul 2>&1

REM Wait 20 seconds
ping 127.0.0.1 -n 10 > nul

echo ========================== node list after kill
ros2 node list
