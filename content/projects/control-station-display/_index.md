---
title: Control Station Display
description: >
  The control station is where the robot will come to refuel and
  reload applications, it also manages off vehical cloud controls,
  including compute, storage networking.
date: 2019-04-22
categories:
  - software
  - hardware
tags:
  - tft display
  - touch screen
---

We are going to build a simple control station that begins with a
Raspberry Pi and connected _7 inch touchscreen tablet_.

I decided that it would really cool to use a Raspberry Pi as the 
_control station_ for MBR, even cooler, why not attach a 7in touch
screen to the RPI for configuring and monitoring the robot / system. 

## Power

The standard power taken from Mains should be fed with a 2Amp power
supply connected to the **Display Adapter Card**.

You can optionally attach and additional 2am power supply to the
RaspiBerry Pi thus driving power to the display and adapter card, in
addition to the power supplied to the display, thus powering the Pi
and Display seperately. 

## Graphics

Graphics for control software can be done in a number of different
ways.  Unless compelled by good reason otherwise, we'll stick to
webapps: HTML, CSS and JavaScript through a web server.

This will allow us the most bang for our buck.

TODO: add a pic of the control station.

