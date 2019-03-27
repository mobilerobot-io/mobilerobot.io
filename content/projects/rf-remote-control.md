---
title: RF Remote Control
description: >
  This project is to build a Remote Control hosting a Joystick that
  communicates over RF.  This RC will be expanded on later...
date: 2019-03-27
categories: [ electronics, mechanics, software ]
tags: 
  - nlrf24
  - spi
  - remote control
---

## Project Definition

Our _mobile robot_ is going to need a remote control, may as well be a
joystick.  Yes, we do have high hopes of getting the vehicle to drive
itself, we are still going to support a Human controlled switch over.

Following is a quick-n-dirty block diagram of the project design.

<img class="img-fluid"
src="https://mobilerobot.sfo2.cdn.digitaloceanspaces.com/Remote-Control-RF-2.svg"
/>

### RF Remote Control Electronics

The first pass at the remote control will be a single joystick on the
RC station.  Additional controls like buttons, or a screen for output
are on the whishlist.  

A single remote joystick is what we need for starters.  We are going
to use the very popular [NRF24L01 chip], 

[]


