@echo off

echo ========================== starting ros2 launch demo_nodes_cpp talker_listener_launch.py
start "" cmd /c "ros2 launch demo_nodes_cpp talker_listener_launch.py"

REM Wait 1 second
ping 127.0.0.1 -n 2 > nul

echo ========================== topic list below
ros2 topic list

REM Wait 4 seconds
ping 127.0.0.1 -n 5 > nul

echo ========================== killing ros2 launch demo_nodes_cpp talker_listener_launch.py

REM Kill talker process
:kill_talker
taskkill /IM talker.exe /F > nul 2>&1
ping 127.0.0.1 -n 2 > nul
tasklist | findstr /I talker.exe > nul
if not errorlevel 1 goto kill_talker

REM Kill listener process
:kill_listener
taskkill /IM listener.exe /F > nul 2>&1
ping 127.0.0.1 -n 2 > nul
tasklist | findstr /I listener.exe > nul
if not errorlevel 1 goto kill_listener

REM Wait 20 seconds
ping 127.0.0.1 -n 21 > nul

echo ========================== topic list after kill
ros2 topic list
