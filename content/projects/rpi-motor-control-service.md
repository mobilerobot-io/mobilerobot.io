---
title: Raspberry Pi Motor Control Service
description: >
  One the early Robots was a single Raspberry Pi with the Adafruit
  attached Motorcontroller. I added a simple Skidsteer library to
  control a small two wheeled "disk" robot.
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
Raspberry Pi and a simple DC motor controller.  That is a single RPi
will act as the macro controller managing communications and making
control decisions.
<!--more-->

The same RPi is also the Micro-controller.  In other words on this
Robot the RPi is both the Macro and Micro - controller, making the
control decision as well as executing the control commands.

## Bill of Materials

- Raspberry Pi V3+
- Adafruit Motorsheild
- Extra battery pack for motors
- 2 brushed DC motors
- 2 wheeled cheap balancing disk for body 
- Application specific sensors


## How to Control the Motor

### Websocket and Dashboard

> TODO add a dashboard with websockets that can be used and demo'd.  A
> dash board with a joystick like graphics can be manipulate by the
> user. 

### MQTT Skid Channel

We provide an MQTT message channel "/control/skid" dedicated to
publishing control messages for consumption by a motor controller
managing two groups of controllers, the left group and the right group.

> Subscripe to the /control/skid channel

Messages to control our skid steer vehical over MQTT will basically be
two floating point values between -1 and +1 inclusive.  The numbers
represent the percentage of the load to let the motors have (throttle)
and the +/- sign represents the direction the motor will turn.

> /control/skid:l/r

### REST Skid Endpoint

> PUT /skid/l/r

## Adafruit RPi Motor Controller

For this Robot, we are using the wonderful [Adafruit Raspberry Pi
DC/Stepper motor controller](http://adafruit.com/todo). This is the
_one_ robot that we directly drive a motor controller from the
Raspberry Pi.  That aspect of this project differs than our other
robots that are built with 
[distributed controllers](/notes/distributed-controllers) used by the
other robots I have built.  

### RPi Macro Controler and Micro Controller

In other cases the _Master Controller_ software runs run on a
Raspberry Pi (or most any other debian linux host like a laptop or
Jetson Nano) where as the _Micro Controller_ typically runs on an
embedded _Arduino like device_, possibly an esp8266, esp32 or stm32.

### Localized Micro and Macro Controllers

In this software we will keep the same message based communication
system, as well as REST support architecture as used on the other
robots.  In this case we will implement the Micro-controller
requirements as part of the [RPi DeviceService](/todo) used by the
[Raspberry Pi Camera server](/todo).

That means we will be able to control the voltage sent to (throttle)
the motors and hence control speed and direction the vehicle moves.


## A Note about Performance and Communicaiton Overhead

In this case the RPi with minimal sensors, low speed motors and maybe
a camera should be easily at home in a single multi-core RPi.  This
being the case, we could optimize communications by removing the
messaging and translation layers from the 
[MBR Architecture](/mobile-robot-architecture).  

However, for the sake of a single architecture and minimized set of
software tools and configurations, we will leave the communicaiton
layers in place.

Consistency and maintainance are extreemly important when it comes to
real-world production systems. But would we choose this over
performance in a production system?

The answer depends on the demands of the application, in this case, I
suspect the level of communicaiton overhead will be minimal, or
trivial when compared to the Bandwidth and other resources available.
That I believe removing the communicaitons layer would provide no
noticible, production quality performance improvements.  And at the
cost of maintanance and complexity. 

Of course speculation takes a deep backseat to real world numbers and
careful testing.  So, I reserve the _right to be wrong_!

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
