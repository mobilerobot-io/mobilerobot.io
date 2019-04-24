---
title: Store the Simple but Powerful Object Storage Library
description: >
  The store library provides a simple but powerful object storage
  library saves Go objects to the disk as JSON objects.  It also
  interfaces with a variety of different backing stores, like AWS and
  Digital Ocean
date: 2019-04-02
categories:
  - software
  - cloud
tags:
  - iot
  - digital ocean
  - aws
github: https://github.com/mobilerobot-io/store
---

These days, it is hard to assume anything about the platform that we
may be developing on. For example, an _Arduino_ or _Cloud Native_
applicaiton might not have a local disk to write to.

Source code for [store is here](http://github.com/)

Or an perhaps an embedded micro controller may temporarily not have
access to the internet and need temporary storage.  These cases need
to be taken into account in addition to the traditional
_"persistance"_ issues need to be delt with.

Once frequent thing to do when programming with Go would be
_marshalling_ native Go objects to disk as text files formatted as
JSON.  The _store_ library does this automatically for you.
