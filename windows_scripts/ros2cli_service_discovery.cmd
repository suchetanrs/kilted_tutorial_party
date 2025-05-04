@echo off

echo ========================== starting add_two_ints_server
start "" cmd /c "ros2 run demo_nodes_cpp add_two_ints_server"

REM Wait 1 second
ping 127.0.0.1 -n 2 > nul

echo ========================== service list below
ros2 service list

echo ========================== killing add_two_ints_server

REM Attempt to gracefully kill the process in a loop
:kill_server
taskkill /IM add_two_ints_server.exe /F > nul 2>&1
ping 127.0.0.1 -n 2 > nul
tasklist | findstr /I add_two_ints_server.exe > nul
if not errorlevel 1 goto kill_server

REM Wait 20 seconds
ping 127.0.0.1 -n 21 > nul

echo ========================== service list after kill
ros2 service list
