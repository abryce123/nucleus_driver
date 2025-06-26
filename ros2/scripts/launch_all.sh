#!/usr/bin/env bash

source /opt/ros/jazzy/setup.bash

cd ..
source install/setup.bash

ros2 run nucleus_driver_ros2 connect_serial /dev/ttyUSB0
ros2 run nucleus_driver_ros2 connect_serial /dev/ttyUSB1
ros2 run nucleus_driver_ros2 connect_serial /dev/ttyUSB2
ros2 run nucleus_driver_ros2 connect_serial /dev/ttyUSB3

ros2 run nucleus_driver_ros2 command 'SETAHRS,DS="ON"'
ros2 run nucleus_driver_ros2 command 'SETBT,WT="ON",DS="ON"'
ros2 run nucleus_driver_ros2 command 'SETALTI,DS="ON"s'
ros2 run nucleus_driver_ros2 command 'SETCURPROF,DS="ON"'
ros2 run nucleus_driver_ros2 command 'SETTRIG,SRC="INTERNAL"'
ros2 run nucleus_driver_ros2 command 'SETIMU,DS="ON"'
ros2 run nucleus_driver_ros2 command 'SETMAG,DS="ON"'

ros2 run nucleus_driver_ros2 start