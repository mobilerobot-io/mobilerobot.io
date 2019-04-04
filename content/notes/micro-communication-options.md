---
title: Micro Controller Communication Options
date: 2019-04-02
---

Our vehical is required to support at least power 4-DC motors, 2
Servos for the camera's _Pan & Tilt_ functions.  There will be at
least one camera, perhaps more streaming video.  There will be an
assortment of sensors, including distance, atmosphere, LED lights and
so on.

## Lot's of stuff going on

That being the case, we will keep a couple Arduino's and a Raspberry
Pi busy keeping our Robot vehicle rolling.  In the case of our
vehicle has the following requirements:

1. 4 DC motors for the wheels (4-wheels)
2. 2 distance sensors
3. temprature, moisture and gas sensors
3. LED lights for ligting dark areas
3. Camera Streaming Video
4. Local video storage
4. remote video streaming
5. RF for remote control

## Required to Support Arduino & Raspberry Pi

### Communication Options 

Communication options include, but are not limited to:

1. **Serial Port** ~ Slow, point to point, inconsistent, once
   ubiquitous it is usually piggy backed over USB.

2. **Ethernet (Cat6)** ~ Fastest and highest bandwidth heavy
   electornics, high processing power and battery consumption.

3. **Ethernet Wifi** ~ Requires configuration, heavy electornics, high
   processing power and battery consumption.

4. **I2C** ~ Simple serial, heavily used, great for close proximity,
   low bandwidth, comms.  Good for electronics and realtime
   commuicaiton.  Super simple wiring and circuitry.

5. **SPI** ~ Similar to I2C except higher bandwidth, full duplex
   communication at the expense of more wires.  Also well supported.

6. **RF** ~ RF is extreemly popular for remote controls, also is
   excelent for remote sensors stations.  Very low energy, wireless
   with low bandwidth and moderate distance.

7. **BT** ~ Can stream audio/video, wireless and compatible with
   Phone. 
   
8. **BT/LE** ~ Very low energy, good for transmitting low bandwidth
   but fine for Real Time operations.

9. Other more exotics: Xbee, LoraWan ...


### Macro to Micro Controller Communicaiton over I2C

The Raspberry Pi will be the brains of the operation, where the
Arduino's will be the brawn and oversee much of the physical work. 


[todo]



cont
