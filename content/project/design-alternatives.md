---
title: Tank Design Alternatives
date: 2019-03-04
description: >
  This is no singular right or wrong design, we can only a "best"
  design based on our alternative choices.
category: design
---

One of the beautiful things about _robotics_ are the wide variety of
disciplines involved to successfully build and operate even the most
basic of robots, let alone something of the scale that we are planning
to build.

This also means our design has a lot of elements, I will attempt here
to outline the major components of our mobile robot design.  

As reality replaces ~~fantasy~~ ignorance our design document is
updated as necessary to provide an up to date and accurate
representation of where we are in our development.

## Design Components

### Robot Chassis and Steering

1. Tank Traks and Skid Steering
2. 2 Wheel balance bots
3. 4 wheel two or four motors with Akerman Steering
4. TBD ???

### Guidance and Navigation

1. Human controlled RF, BT, Wifi, Lorwan?

2. Computer controlled
   2. Computer vision
   3. distance sensors
   4. GPS and mapping

3. Modular Control software: design and develop independant interfaces
for the navigational inputs, as well as the _drive train automation_
software. 

### Internal Communications

1. Support multiple MicroControllers and SoC 
2. i2c, SPI or Canbus for intra-vehical commincation
3. Modular software that is agnostic of #2
4. BW and Latency calculations expected and observed

### Streaming Video

1. Stream realtime video by default, can be turned off
2. Option to store video on local disk/memory for later extraction
3. Streaming video used to make realtime driving desisions

## Mobile Cloud DVR 

We create cloud storage for our mobile robot video streams.  

1. Cloud DVR storage
2. Searchable by time or location

## OpenCV

Computer vision will be performed by OpenCV and some nueral networks.
The two main applications for the OpenCV program are to:

1. Inputs for navigation and control during automous driving
2. Object and Face Identification, once the video has been captured,
   streamed and stored, the video will be analyzed for objects and
   face recognition
3. Post analysis and Deep ML can be performed on data at rest.

## Time Series DB and Sensors

All data collected by sensors such as temprature and moisture will be
recorded over the long term with a TimeSeries DB such as _InfluxDB_,
whihch seems to be getting a bucket load of recognition these days.


