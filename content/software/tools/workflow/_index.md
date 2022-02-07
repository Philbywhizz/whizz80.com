---
title: "Z80 Development Workflow"
menuTitle: My Workflow
date: 2019-11-03T21:00:36+10:00
draft: false
disableMermaid: false
---
This is my current development workflow that I use for general z80 development and developing any related **whizz80** system software.

{{% notice info %}}
This workflow is currently under review and is about 3 years old since it was last updated.
{{% /notice %}}

My development environment is setup on 2 separate devices which are in 2 separate locations. A mac which is in my office, and a linux server running Pop OS) at my electronics workstation.  I synchronize the sources between the 2 using a self-hosted git repository (as well as a backup to github.com when i reach a milestone).

There are 5 major steps in my workflow. Each step requires the previous step to be completed.

{{< mermaid >}}
flowchart LR
  vim(1. Text<br>Editor) --> ASM[(whizz80.z80)]
  ASM --> zasm
  zasm(2. z80<br>Assembler) --> HEX[(whizz80.hex)]
  zasm --> LIST[(whizz80.lst)]
  HEX --> z80sim(3. z80<br>Simulator)
  HEX --> eeprom(4. Upload to EEPROM)
{{< /mermaid >}}

#### 1. Text Editor
You need a way to write your z80 code with a text editor, any editor will do. Because I am developing on 2 different devices I need something simple and lightweight. I am currently using [vscode](hhttps://code.visualstudio.com/) which is working well for me but any text editor is fine.  I find it also helps if your chosen editor can also do syntax highlighting.  All my z80 assembly code is saved as .z80 files.

#### 2. z80 Assembler
Once you have your .z80 file you need to assemble them using an assembler. I am currently using [zasm](http://k1.spdns.de/Develop/Projects/zasm/Distributions/) on both the mac and linux platforms.

`zasm whizz80.z80 --opcodes --labels whizz80.hex ` (creates a whizz80.hex and whizz80.lst file)

I'll probably end up putting all this into a nice Makefile to make my life a bit easier.

#### 3. z80 Simulator
I am currently experimenting using the z80 simulator from the [z80pack](http://www.autometer.de/unix4fun/z80pack/) suite. I am only using the z80sim component. Why am I not using the z80asm assembler from the z80pack suite? It appears that the z80pack suite doesn't support assembler macros, and it is a rather simple assembler, with a small number of features. There was a limited amount of documentation to get me started with it. The z80pack simulator is nice as you can set software breakpoints and manipulate the z80 memory, registers and flags as you step through your code. It also has a nice text input and text output interface (using a virtual port 1) for debugging input/output devices. I have yet to experiment with these extra debugging tools.

`z80sim -m FF` (this runs the simulator and sets all memory to values to FF)

Once the simulator has started then you just `r whizz80.hex` and start simulating.

I did come across another [z80 simulator](http://wwwhomes.uni-bielefeld.de/achim/z80-asm.html) which looked really nice and with a tty terminal front end to display all the z80 registers, memory, etc, however I couldn't get it to compile on my mac (suspect its a 64-bit thing), and I didn't really want to run a separate virtual linux machine just to run a simulator. Shame really - it looks pretty. It runs nicely on my linux desktop so perhaps I can limit myself to doing simulations and debugging with just the linux box.

#### 4. Upload to EEPROM
Once I am happy with my hex output file, I need to do some real testing on some real hardware. I have a [TL866+ programmer](http://www.autoelectric.cn/en/tl866_main.html) that I can just upload the hex files into my EEPROM. Because I'm running linux and mac I use the [minipro](https://gitlab.com/DavidGriffith/minipro/) which you have to download and compile yourself.
