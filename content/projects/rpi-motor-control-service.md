---
title: Raspberry Pi Motor Control Service
description: >
  This software provides micro-service interface(s) to the Raspberry
  Pi Camera, GPIO Pins and Adafruit MotorKit.  The interfaces provided
  include HTML Webapp, REST API and MQTT message bus, to observe and
  control the motors and Cameras, among other things. 
date: 2019-05-14
image: https://mobilerobot.sfo2.cdn.digitaloceanspaces.com/display-and-motors.jpg
categories:
  - software
  - motors
todo: 
  - image
  - proof read
---

This project was to build a simple automous driving vehical using a
Raspberry Pi and a simple DC motor controller.  There is not much room 
thing to put too much in the way of sensors or a camera, so we will
use it to test our _control algorigthms_ and MQTT bus usage.
<!--more-->

## Bill of Materials

- Raspberry Pi V3+
- Adafruit Motorsheild
- Extra battery pack for motors
- 2 brushed DC motors
- 2 wheeled cheap balancing disk for body 

### RPi and Adafruit Motorshield 

The motorshield by Adafruit can support 4 DC motors, or 2 stepper
motors, or 2 DC and 1 Stepper.  For this First pass will just be using
the two DC motors, And leaving the other motor slots blank.

This shows controls and motors would like to see bus which is good,
However we will most likely be using the ETA fruit python library to
control this motor.

No reason to reinvent the will, Especially since this is not the
router will be going for most of our devices or vehicles rather. 

### Brushed DC Motors

We are using _Brushed DC_ motors, about the cheapest possible motors
one can buy.  These particular motors accept 6 to 12v.  Powering bots
is particularly important, if you want to chase your tail on weird
problems, work with under powered electronics for a while!

## Powering The Vehicle

We can not share power with the Raspberry Pi as it does not have
nearly enough power to run two motors, especially during heavy load.
Therefore we must seek out additional power to be supplied
independently to the Motor Controller.

### Motor Control Software 

The control software that rides on the raspberry pie will consist of,
A copy of an empty MQTT broker, most likely mosquito. It will also
consist of The control software described in (Control Software
Design)[/notes/control-software-design] in the notes section of this
site. 

### Speed and Steering

In this case we have a two wheel vehicle, with two motors. Our control
Algorithm will employ skid steering, The simplest possible navigation
mechanism we could develop.

Hence, The control algorithm will take its inputsTranslate them into
skid steer during instructions,Which basically consists of varying the
velocityOf the right and left group of wheels, In our case two
wheels. 

### Outputs

Since the motors are controlled directly by Adafruit software, we will
may create an individual process, separate from the control software
just to handle the motor controls.
