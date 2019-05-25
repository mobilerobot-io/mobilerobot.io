---
title: Red Eye Video Server
date: 2019-05-24
description: >
  Red Eye manages streams of videos from cameras like the Raspberry
  Pi appropriate for real time navigation, storage and replay. 
categories:
  - software
  - video
featured: https://docs.google.com/drawings/d/e/2PACX-1vQHtO4hTGzQKan-x5UKmwDieGndeGtNsTXT2iorDvcSuwiPBY1kkutZ1DH0D-Rd1VAtCzXzf3b3Zj4C/pub?w=960&amp;h=540
github: https://github.com/mobilerobot-io/redeye
---

The Red Eye project is a simple service wrapper around the most
excellent PiCamera library, it also attaches a 
[gstreamerpipelines](http://todo-gstreamer) pipeline to the output
video stream(s) that will be recieved by a variety of consumers,
including Storage / Archive, Computer Vision / Machine Learning and
Display modules.

## Multiple Live Streams 

A really cool feature of the Raspberry Pi Camera (the XXX family of
chips) is the ability to deliver multiple streams of video at the same
time, like different resolutions, snapshots and such.

We will take good advantage of these features later, but to start we
will reserve three channels with specific purposes:

1. High Def live viewing and footage archives
2. Low Def for computer vision algorithms
3. Snapshots for various reasons

I'll discuss each of these in more detail in the following sections: 

### High Def Live Viewing

The PiCamera has the capability of streaming multiple streams, we will
take advantage of this by having the camera send a High Def stream for
_real time display_ and to be _archived and replayed_.

### Low Definition To OpenCV

Computer Vision algorithms can benefit by working with lower
resolution versions of live images.  The algorithms calculate with a
small number of pixels and go faster. 

### Snapshots

There are a number of reasons we may want to take an store
_snapshots_ to capture various events, we could have:

1. algorithm trigger snapshot when motion is detected
2. person could request snapshot at any time
3. timelapse snapshots
4. sequences 

Snapshots will find a number of uses within various projects.


## Control

   4. 
1. Start and Stop specifi video streams
2. Multiple, simultaneous video streams, including:
   2. Low Res Video Stream
   3. Hi Res Video Stream
   4. Snapshots sent based on event or request

3. Video / Snapshots saved on local or cloud storage






## Requirements

- Camera runs on a Raspberry PI w/Cam
- Camera Streams High Def Video to Display
- Camera Streams High Def Video to Storage 
- Camera Streams Low Def Video to Computer Vision Input 
- Computer Vision for Perception and Guidance
- Computer Vision for Face and Object Recognition
- Camera can record video or images local
- Camera can record video or images remote (cloud)
- Camera can be controlled via REST
- Camera can be controlled via MQTT
- Camera can be controlled via Websocket
- Camera can be controlled via GPIO pins
- Camera runs on NVida Nano with camera

## Software Components

### Library Dependencies

- PiCamera to operate the camera
- Flask for REST and Web Interface
- Paho MQTT for Control Bus
- gstreamer to stream captured video
  - raspberry Pi gstreamer src plugin
  - gstreamer RTP/RTSP streaming
- Cloud Libraries to save data offline storage
