---
title: "Whizz80 Overview"
menutitle: "Overview"
date: 2019-11-03T18:40:53+10:00
draft: false
weight: 10
---
The Whizz80 computer is an open-source, home brew, DIY retro computer based on an old 8-bit [Z80 CPU by Zilog](https://en.wikipedia.org/wiki/Zilog_Z80) from the late 1970s. This CPU was popular in microcomputers during this time period, most noteworthy examples include the [MicroBee](https://en.wikipedia.org/wiki/MicroBee), the [TRS-80](https://en.wikipedia.org/wiki/TRS-80) and the [ZX Spectrum](https://en.wikipedia.org/wiki/ZX_Spectrum).

## Hardware Overview

Rather than simply creating a hardware clone of one of these past computers, the Whizz80 computer will be designed and built using components that anyone should be able to source. It will be of a modular design, with much of it influenced from a number of different websites, books and other online reference material. Any references and sources used will be added to the [reference pages](/appendix/reference) pages.

By implementing a modular design, each section of the core computer can be made interchangeable and upgradeable. External interfaces to the Whizz80 should be kept simple so that anyone should be able to follow along and build the whizz80 computer and develop extra modules using available components. From prototyping on a breadboard, wire-wrapping on a prototype board, soldering point-to-point, and eventually designing a PCB.

Building your own computer is a great way to learn how computers actually work at the lowest level and since studying it I have a greater appreciation and respect of the hardware of modern computers. Hopefully you will to.

All hardware designed for the Whizz80 is intended to be open hardware and freely available under the [CERN Open Hardware licence v1.2](https://en.wikipedia.org/wiki/CERN_Open_Hardware_Licence).

{{% notice note %}}
Yes, you could emulate the Z80 CPU and the Whizz80 in software on a virtual machine. While I may need to do this for developing the OS and rapid test code  the intent for this project is to build the computer using actual hardware. Besides working with bare hardware is fun!
{{% /notice %}}

## Software Overview

Most (if not all) of the software for the Whizz80 computer will have to be written from scratch. This software includes a [ROM monitor](https://en.wikipedia.org/wiki/Machine_code_monitor), some form of operating system (I'm planning a [forth](https://en.wikipedia.org/wiki/Forth_(programming_language)) based operating system called WhizzOS), and other utility library routines or demo application.

All software designed for the Whizz80 is intended to be open source and freely available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License).
