
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, costmap-cspace, joystick-interrupt, map-organizer, neonavigation-common, neonavigation-launch, obj-to-pointcloud, planner-cspace, safety-limiter, track-odometry, trajectory-tracker }:
buildRosPackage {
  pname = "ros-melodic-neonavigation";
  version = "0.8.1-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation-release/archive/release/melodic/neonavigation/0.8.1-1.tar.gz";
    name = "0.8.1-1.tar.gz";
    sha256 = "263d5a033046ce2a3098d8210fab91070187862b13d40a235dca2e31f0226fcc";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace joystick-interrupt map-organizer neonavigation-common neonavigation-launch obj-to-pointcloud planner-cspace safety-limiter track-odometry trajectory-tracker ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The neonavigation meta-package including 3-dof configuration space planner'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
