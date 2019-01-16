---
title: Requirements ~ The Controller
description: >
  The controller is some combination of hardware and sofware.  At a
  very superficial level, the controller takes all incoming inputs,
  matches input with a callback.
date: 2018-02-04
categories: [ robotics, software ]
---

The controller has two primary parts, the hardware and sofware
elements. A good system design, like ours will separate the specific
hardware and the controlling software.

## Hardware Requirements

- wireless ~ but which

The vehicle will be automous, hence it needs to be free of tethers,
both electronics, controls and power.

- must be responsive, there should be no (minimized) percievable delay from 

### TODO: Determine HW Control type

There are a number of choices to select for HW control, RFI seems to
be a good candidate.

Keeping in mind, the control software MUST

> Control HW and Software must be independent of other software

