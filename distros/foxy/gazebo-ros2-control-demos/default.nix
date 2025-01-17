
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-index-python, ament-lint-auto, ament-lint-common, control-msgs, effort-controllers, gazebo-ros, gazebo-ros2-control, hardware-interface, joint-state-controller, joint-trajectory-controller, launch, launch-ros, rclcpp, rclcpp-action, robot-state-publisher, ros2-controllers, std-msgs, velocity-controllers, xacro }:
buildRosPackage {
  pname = "ros-foxy-gazebo-ros2-control-demos";
  version = "0.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gazebo_ros2_control-release/archive/release/foxy/gazebo_ros2_control_demos/0.0.2-1.tar.gz";
    name = "0.0.2-1.tar.gz";
    sha256 = "387fb517b9ba623dc78b893317eeae84f7e78d90d1871fc3b803f7b43fee636d";
  };

  buildType = "ament_cmake";
  buildInputs = [ rclcpp-action ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-python control-msgs effort-controllers gazebo-ros gazebo-ros2-control hardware-interface joint-state-controller joint-trajectory-controller launch launch-ros rclcpp robot-state-publisher ros2-controllers std-msgs velocity-controllers xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''gazebo_ros2_control_demos'';
    license = with lib.licenses; [ asl20 ];
  };
}
