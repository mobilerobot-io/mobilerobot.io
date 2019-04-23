---
title: Onboard Communication Over an I2C Bus
date: 2019-03-24
description: >
  On vehical computation and communication systems can become complex
  rather quickly, with that, we can leverage I2C for close proximity
  communication amoung our Macro and Micro Controllers.
categories:
  - electrical
---

<img src="https://mobilerobot.sfo2.cdn.digitaloceanspaces.com/mr01.png" />


For reasons documentented in [Micro Communicaiton
Options](/micro-communication-options) and [RPI
Vs. Arduion](/rpi-vs-arduino) we established the reasons why our
vehicle will host a couple arduino's and a Raspberry Pi.

## Macro to Micro Controller Communication

Our basic architecture has the Raspberry Pi controlling show on the
Vehical itself.  The Arduino's are used to collect sensor inputs then
send them to the macro-controller for further processing and
storage. 

## RPI Master Arduino Slave 

- Sensor Inputs
- Motor Outputs

[Todo](simple image) A single simple image

## RPi Control Program 

- MUX I/O
- Dispatch streaming data 
- Respond to control messages

## Voltage Differences

- Simple Arduino Single Master
- General RPi / Arduino Solution with LLC
- Build an i2c bus prototype board (bread board too messy)
- Create a Voltage Divider to power LLC
- Add connectors on either side for 3.3v and 5v

[Add schematics]

## Software Architecture

- Arduino send sensor data to Macro Controller
- Arduino responds to controls from Macro Controller
- Raspberry Pi multi-plexes inputs and outputs to / from Arduinos
- Raspberry Pi interfaces with external IP/Cloud network 
- Raspberry Pi and Arduino speak over i2c
- Raspberry Pi and / or Arduino can speak RF to external controller 

### Arduino Software

- Arduino software is largely wraps inputs and outputs in a particular
  TLV formatted messages
- Raspberry Pi controls communications and software updates and such

### Raspberry Pi Software

- I/O Multiplexing
- Control Decision Modules
