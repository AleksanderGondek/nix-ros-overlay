
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake, libpng, libusb }:
buildRosPackage {
  pname = "ros-melodic-rc-genicam-api";
  version = "2.3.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rc_genicam_api-release/archive/release/melodic/rc_genicam_api/2.3.3-1.tar.gz";
    name = "2.3.3-1.tar.gz";
    sha256 = "e6ee7eff5adf1a0dd3829904e05e061d6a10328fc0257257f377b7d48c1f5a00";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin libpng libusb ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''GenICam/GigE Vision Convenience Layer.

      This package combines the Roboception convenience layer for images with the
      GenICam reference implementation and a GigE Vision transport layer. It is a
      self contained package that permits configuration and image streaming of
      GenICam / GigE Vision 2.0 compatible cameras like the Roboception rc_visard.

      This package also provides some tools that can be called from the command line
      for discovering cameras, changing their configuration and streaming images.
      Although the tools are meant to be useful when working in a shell or in a
      script, their main purpose is to serve as example on how to use the API for
      reading and setting parameters, streaming and synchronizing images.

      See LICENSE.md for licensing terms of the different parts.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}