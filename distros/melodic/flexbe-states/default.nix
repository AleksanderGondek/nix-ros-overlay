
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, flexbe-core, flexbe-msgs, flexbe-testing, geometry-msgs, rosbag, rospy, rostest, smach-ros }:
buildRosPackage {
  pname = "ros-melodic-flexbe-states";
  version = "1.2.4-r1";

  src = fetchurl {
    url = "https://github.com/FlexBE/flexbe_behavior_engine-release/archive/release/melodic/flexbe_states/1.2.4-1.tar.gz";
    name = "1.2.4-1.tar.gz";
    sha256 = "571ea74439c41acfdff956490bb56bb36a0128613f7332e5b0c21ebb49ce3171";
  };

  buildType = "catkin";
  buildInputs = [ rostest ];
  checkInputs = [ geometry-msgs ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs flexbe-testing rosbag rospy smach-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_states provides a collection of predefined states.
     Feel free to add new states.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
