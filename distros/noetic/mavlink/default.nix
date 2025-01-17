
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, python3, python3Packages }:
buildRosPackage {
  pname = "ros-noetic-mavlink";
  version = "2021.5.5-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavlink-gbp-release/archive/release/noetic/mavlink/2021.5.5-1.tar.gz";
    name = "2021.5.5-1.tar.gz";
    sha256 = "5e0034dab7c4867b4e2dd8719d2db56eea004c021c996e6d9615c88f7960c37e";
  };

  buildType = "cmake";
  buildInputs = [ python3 python3Packages.future python3Packages.lxml ];
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''MAVLink message marshaling library.
  This package provides C-headers and C++11 library
  for both 1.0 and 2.0 versions of protocol.

  For pymavlink use separate install via rosdep (python-pymavlink).'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
