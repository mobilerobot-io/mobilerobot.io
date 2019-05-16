---
title: Raspberry Pi Camera and Motor Server
date: 2019-03-04
description: >
  This project has use create a micro service that provides access to the
  Raspberry Pi Camera and Adafruit Motor Controller.  So I built a
  service that can be controlled via Web App, REST API or MQTT message
  bus. 
categories:
  - software
  - micro service
tags:
  - picamera
  - pi camera
  - camera
  - motorkit
todo: 
  - images
  - video
  - block diagrams
  - link to github report
resources:
  github: http://github.com/mobilerobot-io/rpid
---

This application provides access and control to various Raspberry
devices like the camera, GPIO pins, or a possible MotorShield if
needed. 
<!--more-->

Access is provided via a Webapp and REST API thanks to
[Flask](http://getflask.org/todo).  Control can also be done by
sending the appropriate messages to specific MQTT message buses. 

## Optional Motorsheild

I built a Raspberry Pi mobile robot [r3] with just a Raspberry Pi and
the [Adafruit RPi MotorController](http://todo/url), if the
MotorController is present the corresponding Adafruit _motor_
controller library will be installed and used.

If the Motorshield is not present, the motorcontroller library will
not be loaded, or a Fake (do nothing) library will be loaded on
devices that do not including the Adafruit MC, which includes
non-Raspberry Pi platforms.

> TODO: put a link to installing the Motorshield library, and a quick
> cheat.

### Motors and Skid Steering

The 'motors' provides the library ```Skidder``` that provides a _Skid
Steering_ steering control, that uses the Adafruit MotorKit library to
control the _throttles_ of the motors being used.

> For a brief overview of [Skid Steering refer to this article](/notes/skid-steering)

That article will describe this project within the bigger Mobile Robot
Architecture (MRA). 

### Pi Cameras and Video Control

Another big hunk of the device server is controlling the Video
camera.  We have the ability to start and start recording video, or
take snapshots.

The videos and images can be transfered to a remote host if a network
is available, they can be saved on vehicle if no network is available
until one is.

The camera is also able to _stream_ video over a network, if present,
for _real time_ consumption of the video as it is being filmed.

#### Video is Consumed by Humans and Computers

The video is made accessible to Humans for and Computers alike by
multicasting the video over an IP network with an IP multicast
address.

> Read more about [IP Multicast here](/notes/ip-multicast)

Refer to the PiCamera documentation here:
https://picamera.readthedocs.io/en/release-1.13/. 

The software can be found in [github
repository](http://github.com/mobilerobot-io/rpid). 

And how to write and operate a flask based server for your project. 

## TODO ~ Turn streaming On and Off

The next task is to turn video streaming On and Off, this may require
duping and modifying somewhat a python script ...



  
