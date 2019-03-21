---
title: The Chasis and Drive Train
date: 2019-03-12
category: mechanics
description: >
  At first it seemed simple, just pick one of the cool under $100
  robot kits and get going.  But it is not so simple after all...
todo: 
  - place an images of all vehicles
  - place links to all kits
---

I first bought the Tank constructor kit from OSEPP to build my first robot
frame, it was cool, modular building blocks with a Tank Tread and two
DC motors that sat opposite of each other, generating the movement for
this vehicle.<!--more-->

The first kit I bought from OSEPP was a Tank Tread vehical,
electronics where sold seperately, but could be purchased in a kit.  I
am not so interested in the kit, as I am in learning what it takes to
build a robot.

## Demo Software 

I loaded and ran a couple of the pieces of demo software, they were
pretty neat to watch, but once the novelty wore off you end up with a
rather expensive and kinda boring toy.

The Robot could be _driven_ by any of the following configuraitons:

- Line tracking - follow a black line on the ground
- Follow light with an IR sensor
- Maze with a ping sensor
- Human controlled over Blue Tooth

### Reconfig Hardware, Rewrite Software

Every demo required a hardware reconfiguration, and a completely
different piece of software to be loaded.  Changing control
algorigthms requires the bot to be completely shutdown, hardware
re-configured and new software loaded.

This is required for two reasons, the project was developed with a
single Arduino and a sensor or two depending on the demo application. 

### Beyond The Toy

The quest now is to build something "useful", by some definition of
useful.  It became clear to me, To create something useful Is going to
require a more sophisticated and modular software design.

### Different Drive Trains 

And as Will see you later, I am in the purchasing a couple more
Hardware kitsThat involve a two wheel balancing robotAs well as a
four-wheel-drive robot, and a little two wheel skidder.

It became clear, that I could not settle on a single power train
system, tracks, two wheels, four wheels, let alone something sexier
and more exotic like Mechanum (spelling on this?) wheels.



Hence, the requirement of our GNC software will allow modular support
for a variety of mechanical steering mechanisms.  Of course, certain
steering algorithms can only work on particular steering controls.

## Steering Algorithms

### Skid Steering 

### Ackerman Steering 

### Rear Wheel Steering

## Suspension
