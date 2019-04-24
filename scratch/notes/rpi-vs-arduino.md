---
title: Arduino vs Raspberry Pi
description: > 
  The Arduino has a better hardware interface IMO, however the
  Raspberry Pi's software environment is far superior to the Arduino.
  Why not marry the two?
category: electronics
---

My goal is to build a very simple RTOS communication module for the
on-board vehicle control system. 

## Limitations of Hardware 

The Arduino is the workhorse of the maker world, for very good reason,
but I quickly realized I was running out of pins for all the things I
wanted to attach to Arduino.

A motorshield on one Arduino, and a large number of sensors will
overwhelm the hardware power of one of these devices.  More important,
the processing power can easily become overwhelmed with some of the
smarts required for the driving algorightms and moving time-series
data into the clowd.

For that reason we will setup a Micro/Macro Controller arrangement for
our purpose.

The Arduino is perhaps the greatest things to ever happen for the
Weekend Warrior wanting to play _Electrical Engineer_ (which is me).  

The Arduino comes with a mind numbing option of extreemly cheep (or
expensive and sophisticated) after market eco system of input sensors,
motors and so on.

The Arduino, is THANKFULLY very simple to use. This also means that it
lacks a lot in comparison with the full blown operating system.
_Mobile Robots_ requires a rather complex combination of inputs
sensors (distance, temprature, atmosphere), cameras (live video) and
outputs such as electric motors, leds, speakers and displays.
<!--more-->

Not to mention, the software that needs to calculate motion and
identify video's in realtime.  We basically need some moderately
sophisticated software that will need to run somewhere.

## Distributing the Workload

Rather than searching for the _right_ piece of hardware, one of our
_first principals_ is that no single piece of hardware will be
sufficiently satisfy all of our present and future applicaiton
requirements. 

Rather we'll assume that hardware will evolve and be replaced and
hence we will in many cases come up with designs that involve two or
more _macro_ and _micro_ _controllers_, each performing certain tasks
for which they are best suited.

### Highest and Best Use

For the sake of discussion, most of our designs and builds will
revolve around the Arduino and Raspberry Pi, in large part because the
imense popularity of both platforms, also both platforms are very well
and massively supported.

Good help and quality software are easy to find in both cases.
Likewise, we do not want to spend large amounts time doing
_portability_ work.

#### Arduino Has Supperior Hardware Support

The Arduino is perhaps the greatest things to ever happen for the
Weekend Warrior wanting to play _Electrical Engineer_ (which is me).  

The Arduino comes with a mind numbing option of extreemly cheep (or
expensive and sophisticated) after market eco system of input sensors,
motors and so on.

The Arduino, is THANKFULLY very simple to use. This also means that it
lacks a lot in comparison with the full blown operating system.
`
## Best of Class 

Rather than hunt for the single _best_ platform to build our vehicle
and application around (and perhaps commit to a given SDK, eco system)
we are going to assume that hardware and software will need to evolve
quickly, and hence we'll focus on the _interfaces_ amoung the
sub-systems. 

This will, **in theory** allow builders to design very _flexible_
systems. For example, I wrote my opinion that, in general the Arduino
is a superior Hardware and _Real Time_ Platform, but the Raspberry Pi
is a far superior general computing platform, specifically for
software development.

## Raspberry Pi + Arduino Over I2C

So we are going to do away with forcing an architecture one type of
board or another, we will.

