---
title: Arduino Interupts
description: >
  The standard loop is great for many examples, tutorials and evern
  some applications, however when lots of things happen at random
  times and you want an efficient response from your hardware,
  Interupts may be in order.
date: 2019-03-22
categories: software
---

Nick Gammon does a great job [describing interupts on the Arduino](http://gammon.com.au/interrupts), 
when and I why you might want to use them.  As an overly summarized version,
if you want to be able to get a notification when data has arrived
without having to sleep and poll for data.
  
Talk about Ardiuno interupts, non-blocking I/O and Nearly Real Time
OS.  This is a very good, and very indepth article.

TODO: Add some code snippets as examples for running external
engines. 

### Arduino Strength is RealTime Dedicated Hardware

Arduino's are loyal, strong soldiers that will faithfully follow
orders, however they are pretty dumb, at least compared to a Raspberry
Pi. 

The Raspberry Pi consumes a significant amount of energy, and provides
a tremendous amount of processing power compared to the Arduino.  

For now, we are going to keep it cheap and accessable our choices of
hardware micro/macro controllers to be from the Arduino and Raspberry
Pi family of products.

