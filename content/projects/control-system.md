---
title: Control Systems
description: >
  The control system is the entire loop of the person or algorithm
  taking sensor inputs and telling the motor controls what to do the
  inputs. 
date: 2019-03-14
category: project 
---

The first couple _mobile robot_ kits I played with where really
awesome, but after an hour of playing with the "demo" programs, as
amazing as they were got boring pretty quick.  After all, how many
things can you do with a little car that races around a line,
or wanders through a contrived mazed avoid collisions with walls.  I
want more from a robot!<!--more-->

## Modular Controls

The first thing that comes to mind is a modular control system.  While
the ultimate goal is to create a _self driving_ vehical, that should
not preclude a human from taking control on demand.  As matter of
fact, human intervention or _hybrid_ control is a hard requirement.

Not only Do we need to switch controls from humans, Back-and-forth
between the human and the computer, The communication mechanism the
human uses may change, from Wifi to RFID or Blue Tooth Light.
Joystick, or motion control, etc.

Likewise, we will have a variety sensor and camera inputs from 
periphereals. 

## Do NOT Rewrite Software

It is imperative that we do not have to rewrite our software evertime
one of these elements change.  If you 
The soccer
pplication for every combination of possibleControl mechanisms and
driving algorithms canceled. 

To accomplish this goal we were we will separate out the sensor
inputBy gathering them together and feeding them as a stream of
consciousness to our driving algorithmWhatever that may beActually we
will just write that date out to a message busThat message bus will be
listen to buy everything that wants to pick up the data. 

A moderately poor rendering of the above idea can be seen in the image
below:



The control systems that will be required include, but are not limited
to: 

- Human controls over Wifi, RFID or BlueTooth
- Computer guided algorithms
- Inputs include: video, distance sensor, light and color recognition, etc

The The experiments we will be making are going to be veried, And
therefore it is critical that we do not have to re-create all the
software required to make our robot work.





how useful is a robot that roams around
a colored line, after about a half hour or so?  I quickly realized I
wanted more from a Robot<!--more-->

## Many Types of Control

The Robot Architecture must be able to support multiple type of
inputs.  The inputs can include:

- Human with a remote control 
- Computer driven algorithm on vehical

### Communications



## Requirements for Control System

The control software should must be flexible and allow the robot to be
controlled from any one of the following:

1. Human with remote control.
2. Computer algorithm

Communication mechanims 

Inputs can 



From the first Robotics kits I bought, I quickly realized the type of
Robot I want to build goes beyond the _immediate_ capabilities of
these beginner / education kits. <!--more-->

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



a very manageable for us. now, we are going to keep it cheep and very accessable, we'll keep
our choices to the Arduino and Raspberry Pi family of products (for a
number of reasons).  We can use this as a base mark.

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

### Pie Anybody

Why not use a Rasp


## Problem Definition

The robot must be controllable by a variety of methods that include both human
and computer controls.  To accomplish this goal, it is essential that the
software is developed as modular and inter-conencted.

### Requirements 

Our drive system must be able to adapt to various steering algorithms
including _skid_, _Ackerman_ and _Rear Assisted_ stearing.

In addition to supporting a variety of drive trains, it is also necessary to
support different drive algorithms, guided by various sensor data, including
but not limited variety of sensor data and camera images, proximity sensros
and so on.

### Constraints

## Design Alternatives

## Design Decision

## Desicision Feedback
