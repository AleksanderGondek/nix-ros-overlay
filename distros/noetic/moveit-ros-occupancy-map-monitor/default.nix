
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometric-shapes, moveit-core, moveit-msgs, octomap, pluginlib, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-noetic-moveit-ros-occupancy-map-monitor";
  version = "1.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/noetic/moveit_ros_occupancy_map_monitor/1.1.4-1.tar.gz";
    name = "1.1.4-1.tar.gz";
    sha256 = "c5bc4992a5b12dccb6e512145118e11345721e7946206ef585af6d13f43caa00";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometric-shapes moveit-core moveit-msgs octomap pluginlib tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
