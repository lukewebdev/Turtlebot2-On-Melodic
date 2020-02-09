#!/usr/bin/env sh

mkdir -p src
cd src

git clone https://github.com/turtlebot/turtlebot_simulator
git clone https://github.com/turtlebot/turtlebot.git
git clone https://github.com/turtlebot/turtlebot_apps.git
git clone https://github.com/turtlebot/turtlebot_msgs.git
git clone https://github.com/turtlebot/turtlebot_interactions.git

git clone https://github.com/yujinrobot/kobuki_msgs.git
cd kobuki_msgs
git checkout release/0.7-melodic
cd ../

git clone https://github.com/yujinrobot/kobuki_desktop.git
cd kobuki_desktop
git checkout release/0.7-melodic
cd ../

git clone https://github.com/yujinrobot/kobuki.git
cd kobuki
release/0.7-melodic
cd ../

git clone https://github.com/yujinrobot/yujin_ocs.git
cd yujin_ocs
git checkout release/0.8-melodic
cd ../


git clone https://github.com/toeklk/orocos-bayesian-filtering.git
cd orocos-bayesian-filtering/orocos_bfl/
./configure
make
sudo make install
cd ../
make
cd ../

git clone https://github.com/udacity/robot_pose_ekf
git clone https://github.com/ros-perception/depthimage_to_laserscan.git


sudo apt-get install ros-melodic-kobuki-* -y
sudo apt-get install ros-melodic-ecl-streams -y
