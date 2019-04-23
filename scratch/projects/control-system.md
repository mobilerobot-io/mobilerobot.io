---
title: Control Systems
description: >
  This project defines the software and hardware that define how the
  vehical is driven and by what, find out a little more.
date: 2019-03-14
category: project 
---

A key element of building progressive robotics, espcially if you are a
Garage Mechanic like me, is having software that can be easily used in
a variety different configurations, both hardware and software.

In otherwords, we want to avoid re-writting software as much as
possible.  It can, arguable be the most time comsuming and complex
aspect of many hardware projects.

## Resuable Software is Mandatory

We certainly do not want to _rewrite_ significant portions of code
just because we have introduced a joy stick into our ecosystem.  And
we especially do not want copy and re-copy code from project to
project leaving an unkempt mess of rats nested source code a long the
way. 

#### For Example

When setting out to create a Mobile Robot one of the many choices we
need to decide on are things like how does the robot steer and control
itself? 

Does it have, legs, wheels or tracks?  How will it be controlled,
through computer vision, distance sensors or humans?

### What Platform and Language?

You are also have to ask the question, what platform will all this
run on?  Arduino for the sharper hardware support or the raspberry pi
and it's superior computing capabilities and software support?

### Distributed Systems, True Freedom! 

Let the best chip or board win.  If you prefer an Arduino with an
Adafruit motor controller to drive your car, just do it!  Or a
Raspberry Pi and the whole python echo system, then you can do that. 

What if you want them both, at the same time?  Heck ya!  We are going
to let an Arduino control the Hardware (mostly) and a Raspberry Pi to
house the software (mostly). 

### Requirements

OK, let's get to laying down some _firm_ requirements. I mean this is
not a hardcore do or die job, so we can be a little flexible with our
guiding design requirements.

- Both Raspeberry Pi and Arduino's are supported
- Interchip communicaiton: i2c, SPI, serial, USB, etc...
- Wireless: Wifi, RF, BT, etc
- Camera, stream realtime and/or record video or images
- Modular Controller Modules: Human Remote Control, and on board 
  software control 

## Design Alternatives

### Arduino, Raspberry Pi, Other?

Let's just make this simple on ourselves, we will support Arduino and
Raspberry Pi (large and small) due to there utter open coolness, large
community and support.  Other boards are welcome, but we have to
resist turning the project into a board support house.

Our focus here is building a communication system for _Mobile
Robots_. 
I also realized that certain applications would exhaust the available
HW resources of an Arduino or Raspberry Pi, but generally speaking I like
the Arduino for _dedicated_ hardware projects that require just a
little communication.  I like the Raspberry Pi for the general purpose Shit


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

### Choosing a Controller Arduino vs. Raspberry Pi

This is a topic that demands an entire branch of Engineering is
control systems, or basically: developing an automated system that
responds to various inputs in real-time allowing the safe and accurate
delivery of payload.

For our purposes, we are going to keep it simple and stick making
Decision and choosing between an and Arduino and a raspberry
pie. Although there are plenty of other choices, Let us keep it simple
and focused on the application.

## Standard Communications

On vehical communication can use any of serial (point to point), SPI
or I2C (bus based master / slave communication), USB or ethernet for
high speed stuff.  

Off vehical communication will include wifi for
large data transfer when available, the vehical must operate (when
desired) when a wifi signal is not available.

That will complicate things for sure.  But, if done thoughtfully and
with ample testing it will become a flexible and liberating
environment. 

### Thougthful Planning Required

Building a distributed system does have quite a few advantages,
however these advantages do come at some costs.  They are more
complex, but nearly infinitely scalable.

Distributed systems do force a lot more thought upfront about system
design.  Specifically, it requires thourough thought regarding
_components_, _component boundaries_, _interfaces_ and _APIs_.

## Control System Structure

### Inputs

The control system will consist of an _Input_, _Output_ and
_Processing_ components.  It is pretty simple, inputs can come from a 
variety sources including a bunch of _sensors_, _video and images_
from a camera, _distance_ or _location_ information.

It could be any one, or combo of the above inputs.

### Outputs

Outputs include, but are NOT limited to controlling a DC motor, or
streaming video to a _multicast_ address, generating noise on a
speaker or producing an LED video.

Some items can even act as all of the above, such as a touch screen
display connected to a camera and the Internet.

### State Machine and Control Process

The control process takes what ever inputs are available, applies one
or more algorightms that may produce changes in the state machine,
which in turn may generate an output instruction, based on the
particular algorithm or human control at the time.

> You may now be thinking, this guys has lost his mind, this is some
> serious software and hardware development. 

We'll you are right.  This is the real thing, so we are going to be
driven by reliability over introducing features. The good news is that
almost all of the required software will already be written, we just
have to assemble it appropriately.

> We will be taking advantage of a LOT of Open Source Software.

## Human and/or Computer Controlled Vehicals

Another topic we are leaving flexible, do we want the vehicle to be
Human or Computer controlled?  Again, we say it _"it depends"_ but we
need to support both.

The control system must allow dynamic and arbitrary switching beteen
_Human_ and _Computer_ or _Auto_ controlled modes.

### Common Control Interface

To support such a configuration, both computer and human generated
control actions should appear the same to the state machine, and hence
produce appropriate outputs.

The Macro-Controller will be responsible for listening to human or
computer requests, same outputs should produce the same results.

## Module and Reusable Software


It becomes clear almost right away, that every little change to the
Robots application, _hardware_ and _software_ a hardware configuration
and software rewrite were required.

One of the first problems to solve is avoid having to rewrite software
and minimize hardware changes on a per application basis.  In other
words

> The robot should be as flexible as possible

We need to be able to change the controls from Human to sensor driven,
sensor to video with out rewriting any code for the remote control or
how the vehicle _steers or brakes_.

It is imperative that we do not have to rewrite our software evertime
one of these elements change. 

To accomplish this goal we were we will separate out the sensor
inputs, gathering them together and feeding them as a stream of data
to our driving/decision making algorithms whatever that may be. 

We will mostlikey send our input streams to a _message bus_, the
consumers on the message bus will be the _decision making algorithm_
and most likely the logging software.

## Macro and Micro Controllers

Generally speaking, I think our Arduino has an edge on the RPi interms
of hardware support and it's dedication in embedded devices. The
Raspberry Pi, on the other hand has a full scale linux on a
multiprocessor, lending it well to powerful, albiet small and
dedicated tasks, like driving algo's.

With that thought in mind, we are making it a priority of this
development to build on re-usable _"communicaiton_" blocks.


