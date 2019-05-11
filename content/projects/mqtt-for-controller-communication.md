---
title: MQTT For Controllor Communication
description: >
  Publish/Subscribe is an popular solution to distributed system
  communications, where you do not want to directly couple the
  publisher and subscribers.  That is a fundamental design of this MBR
  project. 
date: 2019-05-03
categories:
  - software
  - communications
tags:
  - mqtt
  - mosquitto
---

The MQTT message server a general purpose as a systems message bus our
project components can use to read and write data in near realtime.
This data is used for a number of purposes, to advertise changes to
control inputs and sensors, publish control messages to motor
controllors and by the dashboard to display our realtime sensor
data. This describes how our MQTT bus is being used and how we got it
all hooked up!
<!--more-->

## MQTT Bus Uses

- Advertise Joystick inputs for vehicle control
- Advertise Sensor readings for sensor networks
- Consume vehical controls by the motor controllers
- Consume all sorts of data for the Dashboard and realtime graphs

## Architecture

Mosquitto MQTT Broker is running on a system wide Raspberry Pi. All
sensor and control inputs are written to the appropriate topics on the
MQTT bus.

In the future we'll want to run an MQTT bus on vehical incase we
loose contact with our control station.

## MQTT Channels

- sensors/<sensor>/data
- motor/<cmd>/data...
- errors
- warnings

## TODO

- draw an image of the MQTT communication
- document the MQTT installation process for broker
- document otto mqtt client to output process
- show some code examples.
