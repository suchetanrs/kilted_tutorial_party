@echo off

echo ========================== starting turtlesim

start "" cmd /c "ros2 run turtlesim turtlesim_node"

REM Wait 2 seconds
ping 127.0.0.1 -n 3 > nul

echo ========================== param list below
ros2 param list

echo ========================== killing turtlesim

REM Kill turtlesim_node by executable name (adjust if needed)
:kill_turtlesim
taskkill /IM turtlesim_node.exe /F > nul 2>&1
ping 127.0.0.1 -n 2 > nul
tasklist | findstr /I turtlesim_node.exe > nul
if not errorlevel 1 goto kill_turtlesim

REM Wait 20 seconds
ping 127.0.0.1 -n 21 > nul

echo ========================== param list after kill
ros2 param list
