
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, eigen3-cmake-module, geometry-msgs, moveit-common, moveit-core, moveit-msgs, moveit-planners-ompl, moveit-resources-fanuc-moveit-config, moveit-resources-panda-moveit-config, moveit-ros-move-group, moveit-ros-planning, moveit-ros-warehouse, moveit-simple-controller-manager, python3, rclcpp, rclcpp-action, rclpy, ros-testing, rviz2, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-foxy-moveit-ros-planning-interface";
  version = "2.1.3-r1";

  src = fetchurl {
    url = "https://github.com/moveit/moveit2-release/archive/release/foxy/moveit_ros_planning_interface/2.1.3-1.tar.gz";
    name = "2.1.3-1.tar.gz";
    sha256 = "16702ee70eef83782490308e7bcb75a337ed03af054ab230d302cc72c4b4d68a";
  };

  buildType = "ament_cmake";
  buildInputs = [ eigen moveit-common ];
  checkInputs = [ moveit-planners-ompl moveit-resources-fanuc-moveit-config moveit-resources-panda-moveit-config moveit-simple-controller-manager ros-testing rviz2 ];
  propagatedBuildInputs = [ geometry-msgs moveit-core moveit-msgs moveit-ros-move-group moveit-ros-planning moveit-ros-warehouse python3 rclcpp rclcpp-action rclpy tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake eigen3-cmake-module ];

  meta = {
    description = ''Components of MoveIt that offer simpler interfaces to planning and execution'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
