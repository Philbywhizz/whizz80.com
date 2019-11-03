---
title: "System Core"
date: 2019-11-03T19:07:28+10:00
draft: false
weight: 20
---
The System core contains the essential modules required for the normal operation of the Whiz80. Missing modules may prevent the Whizz80 computer from functioning correctly. This core connects to the submodules by a [system bus](system-bus).

{{< mermaid >}}
graph TD;
  subgraph System Core
    SYSBUS(System Bus) --- POWER(Power Module)
    SYSBUS --- CLOCK(Clock Module)
    SYSBUS --- CPU(CPU Module)
    SYSBUS --- RAM(RAM Module)
    SYSBUS --- ROM(ROM Module)
    IO(IO Bridge) --- SYSBUS
  end
{{< /mermaid >}}

### System Bus

The [System bus](system-bus) consists of 40 bus lines. 16-bit Address line (A0-A15), 8-bit Data line (D0-D7), Power (+5v, GND) and 9 control lines (/CLOCK, /RESET, /MEMREQ, /IORQ, /RD, /WR, /INT, /M1/ /WAIT) and 5 optional spare lines (SPARE1, SPARE2, SPARE3, SPARE4, SPARE5).

## Modules

Each module connects to the [system bus](system-bus). The following 6 modules make up the system core (5 standard, and 1 special)

### Power Module

The [power module](power-module) supplies regulated power to the whole **whizz80** system. Output of this module is via the system bus, and currently consists of +5v, ground and any reset signals.

### Clock Module

The [clock module](clock-module) outputs a clock signal to the [system bus](system-bus) that controls the timing of everything. A simple version of this module might just be an oscillator or a 555 timer, or it could be as complicated as a stepper single shot timer. As long as the output can generate a clean square wave. You could make many different types of clock modules, and simply swap them out to select your desired clock speed.

### CPU Module

The [CPU module](cpu-module) contains the actual Z80 CPU and all the connections to the [system bus](system-bus). A LED is also present to show when the CPU has been halted (usually via the HALT command).

### ROM Module

The [ROM module](rom-module) connects the ROM chip to the [system bus](system-bus). The simplest design is to allow 32Kb of ROM memory. 

### RAM Module

The [RAM module](ram-module) connects the RAM chip to the [system bus](system-bus). 32Kb of RAM is currently planned.

### I/O Bridge

The [I/O Bridge](io-bridge) is a special module that connects the [system bus](system-bus) to the [I/O core](../io-core).

