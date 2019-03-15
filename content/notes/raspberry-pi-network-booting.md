---
title: Reconfigure the Raspberry Pi by Rebooting
description: >
  Network boot Raspberry Pi, let us give it a try
category: software
date: 2018-05-17
tags:
  - dhcp
  - pxe
  - netboot
  - tftp
  - bootp
---

Booting a Raspberry Pi from an SD card or USB stick is pretty neat and
all, but they are inadequate for sustainded, reliable production use.

The quality of the SD comes into question immediately.  Even the best
of SD cards can go south out of nowhere!  I do not know much about sd
cards at all, except that I have blasted through about 12 of them this
with 3 RPI's (and a BeableBone), that is too expensive.

But worse than the wated money is the reliability.  The things always
seem to take a dump at the worst time (demo anybody?).  Trying to
build a _real time, reliable robot_.  etc.  

> SD cards and USB sticks are FORBOTTEN in any of my production, and
> test systems.

## Network Booting

For the test lab, I am going to build out a network boot server.  It
will incorporate more than just booting the Raspberry PI, it will also
handle DNS, and some other things to get the RPI's (and other
computers) all singing the same song reliably.

## Production Networking

In the Network / IT world, a configuration above is a well established
and common practice.  And theory theory it should work out really well
in our environment.  However as we all know will reserve the final
judgmentWhen we determine after we get some testing in, And either
verify The theory Or determine what pitfalls we don't realize we're
going run to.

## Hard Drive Per RPI

A hard drive of some sort (small ssd) is a much better option than NST
cardMuch faster can hold a lot more dataThey're more expensive than
take up a lot more spaceOr some additional spaceAnd certainly a lot
more electricity early my assumption is more electricity I don't
speakOut of knowledge I speak out of the ass(umption).

Pool test that, Because that's what we do when test shit.

Never-the-less The current assumptions and I can be pretty sure that
it's a reasonably good one is that guys are going to add a significant
expense and require power that's beyond what oneTo provide for every
raspberry pie that we've put into production.

> In many casesWe're money space and power are plentifulHard drives
> are a great thing.

But But they still need to be individually managed.

### No SD Card Needed 

A network booted host is free To operate withoutA card and all, But it
does require a physical network connection. You will need to plug in
its either net cable into a live ethernet network,With a properly
configured server.

A wireless network will not work it has to be the ethernet.  So
provided your we're in an environmentAre we will have an ethernet
connectionOr something similar, Network booting is thatGreat option. 

### Settup Network Boot

Just set up a server so the raspberry pies food from itRequires the
following steps:

- To begin with any new installing DHCP server, bootp might be
  acceptable also but these days Just go with DHCP.  
  
  DHCP will provide the IP address, default route, DNS configs and
  more to get the host up and rolling.

- Setup a TFTP server for delivering a boot image

- Setup NFS providing the linux filesystems

### New OS?  Now Sweat

Try out new OSes, distributions or versions painlessly

## Install OSes

For every image type and writeable filesystem, we are going to need to
allocate space on a (NFS) server somewhere.


