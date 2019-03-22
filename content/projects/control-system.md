---
title: Control Systems
description: >
  The control system is the entire loop of the person or algorithm
  taking sensor inputs and telling the motor controls what to do the
  inputs. 
date: 2019-03-14
category: project 
---

The first couple _mobile robot_ kits I played with where awesome, and
really eye opening in terms what they are capable of, but after an
hour of playing with the "demo" programs, as amazing as they were got
boring pretty quick.<!--more-->

After all, how many things can you do with a little car that races
around a line, or wanders through a contrived mazed avoid collisions
with walls.

How can we combine these neat sensors in a set of software tools that
can be easily re-used to create reconfigurable robots, to some extent
support "live" hardware swapping?  

## Zero Downtime Software

Also, how can we manage the software on a live robot?  This sounds
like a job for industrial strength, _distributed system_ with a
friendly API.  Is it possible? 

Oh, it has to be all OpenSource.  It is entirely acceptable, and
preferable to use other well established Open Source products.

Let's see what it takes to move these toy kits to a useful part of our
everyday life.

## Human Or Computer Controlled Vehical

We are going to build a _modular_ control system, both hardware and
software.  There are a number of different hardware configurations we
would like to experiment and work with, likewise, there is a variety
of software configruations and algorithms that we are going to want to
use. 

Let's identify a couple key reasons the software has been designed as
modular: 

### Switching Vehical Controllers

The first thing that comes to mind is a modular control system.  While
the ultimate goal is to create a _self driving_ vehical, that should
not preclude a human from taking control on demand.  As matter of
fact, human intervention or _hybrid_ control is a hard requirement.

Not only Do we need to switch controls from humans, Back-and-forth
between the human and the computer, The communication mechanism the
human uses may change, from Wifi to RFID or Blue Tooth Light.
Joystick, or motion control, etc.

We have not even begun to speak of camera and live video streams and
_Computer Vision_.

### Inputs and Guidance

To guide a vehical safely, requires timely and accurrate system
inputs.  The inputs may come from a variety of different sources,
including but not limitted to cameras and CV, distance detectors,
LiDAR, GPS and more.

## Do NOT Rewrite Software

It is imperative that we do not have to rewrite our software evertime
one of these elements change. 

To accomplish this goal we were we will separate out the sensor
inputs, gathering them together and feeding them as a stream of data
to our driving/decision making algorithms whatever that may be. 

We will mostlikey send our input streams to a _message bus_, the
consumers on the message bus will be the _decision making algorithm_
and most likely the logging software.

### Requirements

- Human controls over Wifi, RFID or BlueTooth
- Computer guided algorithms
- Inputs include: video, distance sensor, light and color recognition, etc

## Hardware Flexibility and Extensions

I also realized that certain applications would exhaust the available
HW resources of an Arduino or Raspberry Pi, but generally speaking I like
the Arduino for _dedicated_ hardware projects that require just a
little communication.  I like the Raspberry Pi for the general purpose Shit


## Choosing a Controller Arduino vs. Raspberry Pi

This is a topic that demands an entire branch of Engineering is
control systems, or basically: developing an automated system that
responds to various inputs in real-time allowing the safe and accurate
delivery of payload.

For our purposes, we are going to keep it simple and stick making
Decision and choosing between an and Arduino and a raspberry
pie. Although there are plenty of other choices, Let us keep it simple
and focused on the application.

### Arduino Strength is RealTime Dedicated Hardware

Arduino's are loyal, strong soldiers that will faithfully follow
orders, however they are pretty dumb, at least compared to a Raspberry
Pi. 

The Raspberry Pi consumes a significant amount of energy, and provides
a tremendous amount of processing power compared to the Arduino.  

For now, we are going to keep it cheap and accessable our choices of
hardware micro/macro controllers to be from the Arduino and Raspberry
Pi family of products.

### Running out of Pins

This is were two fundamental problems: The Arduino need to run 2-4 DC
motors to move the bot, 2 servo's to control the camera's.  We are
going to also drive a number of sensors for distance, color, light,
etc.

The bot will have a camera and streaming video.  We will also want
some form of on vehical diagnostics and a corresponding UI.  

Pheww, that is a lot to ask of that Arudino, how pins does it have,
but more importantly, how much of it's processing power and
communication capabilities are we going to exhaust?

