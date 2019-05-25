---
title: Red Eye Video Server
date: 2019-05-24
description: >
  Red Eye manages streams of videos from cameras like the Raspberry
  Pi appropriate for real time navigation, storage and replay. 
categories:
  - software
  - video
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

<img src="https://docs.google.com/drawings/d/e/2PACX-1vQHtO4hTGzQKan-x5UKmwDieGndeGtNsTXT2iorDvcSuwiPBY1kkutZ1DH0D-Rd1VAtCzXzf3b3Zj4C/pub?w=960&amp;h=540" /

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
_snapshots_ to capture various events, we'll get into that later, but
for now the requirements we will need to take snapshots and save
them. 

## Camera Control Inputs

A control channel is available to modify camera behavior during
operations, which may include changing configuration, start and
stop video streams, and so.

The control inputs can be the result of a REST Command, MQTT message
or Websockets interface. 

## Streaming Video

The video streams are produced by the camera in H.264, so we need to
do a little bit of work to get the video into multicast video
streams. 

### Gstreamer Multicast RTP

The video streams produced by the video will need a little turning
them into video streams of some sort.  Our scheme is such that:

1. Video streams may be recieved by more than one consumer 

2. We do not want Video producer to have to know _who_ is recieving
   and when..  Multicast will just be sent as long as there is any
   consumer. 

We will need to piece together the series of filters to recieve the
video from Rasberry Pi, to gstreamer that will turn the video into
UDP, RTP, RTSP multicast streams.

### Video Consumers

The Video is streamed for live consumption as well as storage and
retrieval.  For this, high definition video is likely to be needed. 

Video will also be consumed by computer vision algorithms, in this
case, the lower resolution images help the algorithms plow through
pixels much faster.

Snapshot can be extracted from a video stream.

## Control Communications

The camera has a rich set of configuration options and modes that it
can operate under.  We are wrapping the configuration options, as well
as control time commands like starting and stoping streams.

Additional commands may be set to start time lapse snapshots and quick
auto-sequence shots.  The control commands can be set off throught the
following API channels:

- REST
- MQTT
- Websockets

All control channels flowing into a single Interface / API with the
explicit goal to maintain consistency regardless of the channel used
to communicate controls.

## Tactile Controls

The GPIO pins can be used to trigger camera events, simple things like
pushing a button to take a snapshot, or triggering a snapshot when a
switch is flipped, for example.

## Software Library Dependencies

- PiCamera to operate the camera
- Flask for REST and Web Interface
- Paho MQTT for Control Bus
- gstreamer to stream captured video
  - raspberry Pi gstreamer src plugin
  - gstreamer RTP/RTSP streaming
- Cloud Libraries to save data offline storage
