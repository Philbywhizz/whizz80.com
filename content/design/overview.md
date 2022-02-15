---
title: "Whizz80 Design Overview"
menuTitle: "Overview"
date: 2022-02-15
weight: 10
disableMermaid: false
---
## Overview
There are many designs of small 8-bit z80 computers on the web ranging from a small compact single pcb to complex monolithic motherboards and multi-stack cards and interfaces.

While a single self contained and compact board looks really cool and trendy, It doesn't gives you the flexibility to upgrade, change your mind or expand the system when you want to try something new ideas or add extra functionality. I also see large monolithic designs follow an all or nothing approach that implement a lot of functionality that may or may not be useful.

## Goals
The goal of the **Whizz80** is simple. To allow anyone to follow along and hopefully either build their own whizz80 from my design or learn to customize it an develop their own unique z80 computer.

It's not the world's fastest computer, nor is it the best design. It is a learning tool for myself and others.

## Inspiration
During my research for developing my own z80 based computer, I have come across many designs and ideas. Here are a few systems that had a big influence in some of my design decisions:

- [rc2014](https://rc2014.co.uk/) - designed with a common system bus across all modules with a global backplane. I like the way that all the modules are independent from each other.

- [z80 system design](https://www.ecstaticlyrics.com/electronics/Z80/system_design/) - I really think this is a cool design in general. I like the idea this design brings where the slot number determines the software ports used when adding devices/modules. It also seems to remove some of the complicated logic circuits out of the equation.

## High level design
The Whizz80 computer is divided up the computer into 2 distinct modules. The System Core and the I/O Bus.

### System Core
The System Core is the bare minimum computer. This is the only required module, however it would be a very boring computer without an external devices or interface

### I/O Bus
The I/O Bus is a bunch of logic circuits that expose the internal workings of the system core to the outside world. External devices simply plug into this I/O Bus and the System Core can start interfacing with the external device using a developed format.
