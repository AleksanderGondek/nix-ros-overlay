
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, eigen3-cmake-module, geometric-shapes, moveit-common, moveit-core, moveit-msgs, octomap, pluginlib, rclcpp, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-occupancy-map-monitor";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_occupancy_map_monitor/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "a0cee173f4a5b743974e2349b42e5585434b8bc10f00478f66deac6f25abfe19";
  };

  buildType = "ament_cmake";
  buildInputs = [ moveit-common ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen eigen3-cmake-module geometric-shapes moveit-core moveit-msgs octomap pluginlib rclcpp tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
