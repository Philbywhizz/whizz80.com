---
title: "Software Tools"
date: 2019-11-03T20:14:23+10:00
draft: false
weight: 90
---
Here is a list of all the software tools and applications that I have used in creating the **Whizz80** computer system. I currently use a Mac to do all my development on, so the software listed below are leaning towards the Mac side. I have however, tried to not use any 'os specific' software. There may be unfortunate exceptions and I'll indicate when this occurs.

##### Software Development Tools

- [zasm](http://k1.spdns.de/Develop/Projects/zasm/Distributions/) - zasm is a command-line assembler for the Zilog Z80 cpu. It is available as source, which should compile on many unix-style operating systems, and as pre-compiled binary. One of the reasons I prefer this assembler over something else (such as z80pack) is that it supports macros and other nice to have features.
- [z80pack](http://www.autometer.de/unix4fun/z80pack/) - A Z80 CPU emulator that allows you to software debug your z80 applications (and even run them) on your local desktop. Invaluable for step by step debugging.
- [vim](https://en.wikipedia.org/wiki/Vim_(text_editor)) - My favorite editor.

##### Electronic Schematic/PCB Tools
- [Eagle](http://www.autodesk.com/products/eagle/overview) - Schematic/PCB Creation

{{% notice note %}}
Perhaps a little controversial as Eagle isn't an open source tool but a commercial tool. While I could use an alternative, such as [KiCad](http://kicad-pcb.org/), I'm more comfortable with using Eagle to design my schematics and layout my PCBs. I also find the performance of Eagle better on my Mac than Kicad. I am currently using the free version of Eagle and I will be making the files available in Eagle format, as well as PDFs for those who don't want to use Eagle.
{{% /notice %}}

##### Website Tools

- [Hugo](https://igohugo.io/) - Allows me to keep the docs updated via command-line using markDown. No fancy GUI here.
- [Hugo-Learn-Theme](https://learn.netlify.com/en/) - The website theme used for this website.
