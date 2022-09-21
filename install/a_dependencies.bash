#!/usr/bin/env bash

ros_version=${1:-"$(rosversion -d)"}
install_args=${2:-"-y --allow-unauthenticated"}


echo "####################################################################################################"
echo "##### Checking and installing dependencies for dynamic_robot_localization ros package"
echo "####################################################################################################"


# required system dependencies
sudo apt-get install coreutils ${install_args}
sudo apt-get install git ${install_args}
sudo apt-get install libeigen3-dev ${install_args}

if [ ${ros_version} != 'noetic' ]; then
  sudo apt-get install python-wstool ${install_args}
  sudo apt-get install python-catkin-tools ${install_args}
else
  sudo apt-get install python3-wstool ${install_args}
  sudo apt-get install python3-catkin-tools python3-osrf-pycommon ${install_args}
fi


# required ros packages
sudo apt-get install ros-${ros_version}-angles ${install_args}
sudo apt-get install ros-${ros_version}-cpp-common ${install_args}
sudo apt-get install ros-${ros_version}-dynamic-reconfigure ${install_args}
sudo apt-get install ros-${ros_version}-geometry-msgs ${install_args}
sudo apt-get install ros-${ros_version}-map-server ${install_args}
sudo apt-get install ros-${ros_version}-message-generation ${install_args}
sudo apt-get install ros-${ros_version}-message-runtime ${install_args}
sudo apt-get install ros-${ros_version}-nav-msgs ${install_args}
sudo apt-get install ros-${ros_version}-rosconsole ${install_args}
sudo apt-get install ros-${ros_version}-roscpp ${install_args}
sudo apt-get install ros-${ros_version}-rostime ${install_args}
sudo apt-get install ros-${ros_version}-sensor-msgs ${install_args}
sudo apt-get install ros-${ros_version}-std-msgs ${install_args}
sudo apt-get install ros-${ros_version}-tf2 ${install_args}
sudo apt-get install ros-${ros_version}-tf2-msgs ${install_args}
sudo apt-get install ros-${ros_version}-tf2-ros ${install_args}
sudo apt-get install ros-${ros_version}-xmlrpcpp ${install_args}


# optional ros packages for ukf filtering
sudo apt-get install ros-${ros_version}-robot-localization ${install_args}


# optional ros packages for dynamic map update
sudo apt-get install ros-${ros_version}-dynamic-edt-3d ${install_args}
sudo apt-get install ros-${ros_version}-octomap ${install_args}
sudo apt-get install ros-${ros_version}-octomap-msgs ${install_args}
sudo apt-get install ros-${ros_version}-octomap-ros ${install_args}
sudo apt-get install ros-${ros_version}-octomap-rviz-plugins ${install_args}
sudo apt-get install ros-${ros_version}-octovis ${install_args}


# optional system dependencies for mesh_to_pointcloud package
sudo apt-get install libopenscenegraph-dev ${install_args}
sudo apt-get install libopenthreads-dev ${install_args}


# velodyne drivers
sudo apt-get install ros-${ros_version}-velodyne ${install_args}
sudo apt-get install ros-${ros_version}-velodyne-driver ${install_args}
sudo apt-get install ros-${ros_version}-velodyne-msgs ${install_args}
sudo apt-get install ros-${ros_version}-velodyne-pointcloud ${install_args}





echo -e "\n\n"
echo "----------------------------------------------------------------------------------------------------"
echo ">>>>> Installation of dynamic_robot_localization dependencies finished"
echo "----------------------------------------------------------------------------------------------------"
