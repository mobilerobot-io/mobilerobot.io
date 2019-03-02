---
title: Connecting a Raspberry PI and Arduino with I2C
description: >
  I2C is simple, cheap and low energy way for a Raspberry PI and
  Arduino's can communicate.
date: 2019-02-18
references:
  - http://dsscircuits.com/articles/effects-of-varying-i2c-pull-up-resistors
  - https://oscarliang.com/raspberry-pi-arduino-connected-i2c/
---

When I first started tinkering with the Arduino, about mid 2018, (yea
I know, I am waaaaay late to the game) It was so easy to find great
tutorials, but that changed quickly once you start filling up the pins
you need.

> The Whole is Greater than the sum of the parts

## Macro and Micro Controllers

One attractive thought is using the Raspberry PI and it's full blown
OS, programming and communication capabilities as the brains and
transport.

  RPi {3, 5} -- Ard { A3, A4 } (check this)
        Gnd  -- Gnd


The Arduino being a better piece of physical computing, and real-time
hardware would make a dandy duo indeed!

Let the Arduino (or one of its many cousins) go to town interacting
with the real world, let the Raspberry PI tell the Arduino what to do,
and gather data from it.

### Communicating Controllers

## Communication Options

### USB, Ethernet and Wireless

Fast, relatively expenseive, in the case of USB, Ethernet and 802.x
are power hungry and heavy weight.

### I2C, Simple wiring and Close Proximity

- close proximity
- low - moderate bandwidth (400k simplex)
- super simple and cheap
- need two wires for data and clock signals (yes, you also need power
  and mostlikely a ground) so 4 wires ...
- it has been around forever and very well established sets hardware
- very low latency(?) Great for realtime up to X delay
- low bandwidth

## Possibilities for Control Loops?

Incoming status 

## Software Design and Tests

## Performance Measurements


---
title: I2c ~ AKA 2 Wire
date: 2019-01-17
description: >
  Sytem communication bus that can be used by RPi, BBone and 
  Arduino's including thousands of sensors and stuff!
categories: 
  - electronics
  - communications
tags: 
  - i2c
references:
  - https://oscarliang.com/raspberry-pi-arduino-connected-i2c/

---

There are some great things about I2C (or Two Wire) as you will see it
refered to.

## RealTime Communication between Arduino and RPI

I2C seems to be an ideal option for short but low delay communication messages
such as those that would be experienced in a sensor network, or perhaps a moderate 
control system.

## Wiring I2C Between RPi & Arduino

The simplest form of wiring between the RPI and an Arduino is as follows:

### Simple ~ RPI Master, arduino Slave

### Flexible ~ RPI & Arduino Logic Separated I2C

This method uses a logic level converter to create separate 3.3v and 5v i2c segments.
It uses a Voltage Divider (Logic Level Converter) to separate 3.3v segments of the clock and 
data lines.

Note, the LLC must be _bidirectional_ allowing signals to pass 
from high to low, and low to high. 

> TODO ~ Fritz it ! we need to add the schematic of an i2c bus

## Wiring I2C BBone & Arduino

## I2C Software Communication

## I2C Example Data Gathering


## The Software
