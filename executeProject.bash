#!/bin/sh

killall -9 -q gzclient & killall -9 -q gzserver # Kill gazebo's process

xterm -title "rsp_sim" -e "ros2 launch my_bot rsp_sim.launch.py" & 
xterm -title "slam" -e "ros2 launch slam_toolbox online_async_launch.py" & 
xterm -title "teleop_twist_keyboard" -e "ros2 run teleop_twist_keyboard teleop_twist_keyboard" & 
xterm -title "nav2" -e "ros2 launch nav2_bringup navigation_launch.py"   
