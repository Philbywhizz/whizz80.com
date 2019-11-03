---
title: "Whizz80 Overview"
menutitle: "Overview"
date: 2019-11-03T18:40:53+10:00
draft: false
weight: 10
---
The Whizz80 computer is an open-source, home brew, DIY retro computer based on the 8-bit [Z80 CPU by Zilog](https://en.wikipedia.org/wiki/Zilog_Z80) from the late 1970s. This CPU was popular in microcomputers during this time period, most noteworthy examples include the [MicroBee](https://en.wikipedia.org/wiki/MicroBee), the [TRS-80](https://en.wikipedia.org/wiki/TRS-80) and the [ZX Spectrum](https://en.wikipedia.org/wiki/ZX_Spectrum).

## Hardware Overview

Rather than creating a hardware clone of one of these past computers, the Whizz80 computer will actually be building the physical hardware. It will be of a modular design, with much of the design borrowed from a number of different websites, books and other reference material. (References and sources will be added to the [Appendix](/appendix) at a later date).

By using a modular design each module is interchangeable and upgradeable to be as flexible as possible. Making extra hardware modules easier and flexible because of this modular design. Anyone can build this computer from the components, from a professional made PCB, soldering point-to-point wiring on a protoboard, wire-wrapping, or even build it on a breadboard. I'm using all these methods!

Building your own computer is a great way to learn how computers actually work and since studying it I have a greater appreciation and respect of the hardware of modern computers. Hopefully you will to.

All hardware designed for the Whizz80 is intended to be open hardware and freely available under the [CERN Open Hardware licence v1.2](https://en.wikipedia.org/wiki/CERN_Open_Hardware_Licence).

{{% notice note %}}
I am aware of a few existing Z80 projects that emulate the Z80 CPU in software. While I may use some in the future to develop and test some code, this project will actually build the hardware. Besides hardware is fun!
{{% /notice %}}

## Software Overview

All the software for the Whizz80 will have to be written from scratch as there is currently no other source for software. This software includes the operating system itself (I'm planning a [forth](https://en.wikipedia.org/wiki/Forth_(programming_language)) based operating system called WhizzOS), utility and monitoring software.

Extra software to be written also includes the non-Z80 based software (such as the home built EEPROM programmer) and any other tools used to create the software for the Whizz80.

All software designed for the Whizz80 is intended to be open source and freely available under the [MIT license](https://en.wikipedia.org/wiki/MIT_License).

