---
title: On Vehicle Communication
date: 2019-03-04
description: >
  On vehicle communication involves rapid, but low volume, low latency sensor
  inputs required for realtime response.
categories: 
  - mechanics
  - software
---

One of the first issues that we came against was the specific configurations
of the micro-controllers as well and the number and configuration of pins and
hardware particulars.

## Macro-Micro Controllers

The system should be flexible enough to allow one or more macro-controls
communicating with one or more micro-controllers.

## Communication Mechanism

We have a rather complex set of communication requirements, we have
signals between sensors, motors and _micro-controllers_.  We also have
the communication from the _micro-controllers_ and the
_macro-controller_. 

The _Macro-controller_ to on premise I/O devices like a monitor to
display real-time video, or sensor inputs that help the driving
control with navigation info, the drive controller may respond with
control instructions.

### Wired 

1. Arduino i2c -> Motor Controls
   1. Adafruit / OSEPP Motor Controller
   2. Balance Sensor

2. Arduino i2c <- Sensor Data

3. SPI RPi -> Arduino
   1. Arudiuno + Motor Controller

4. RPi Wifi -> Prem

5. RPi Wifi -> Cloud

### Wireless

1. RF 
2. BlueTooth
3. Wifi

### 
