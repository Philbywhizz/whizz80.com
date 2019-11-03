---
title: "System Bus"
date: 2019-11-03T19:12:07+10:00
draft: false
weight: 10
---
The Whizz80 System Bus connects all the system core modules together into a single bus structure.

{{< mermaid >}}
graph TD;
  subgraph System Core
    SYSBUS(System Bus) -.- POWER(Power Module)
    SYSBUS -.- CLOCK(Clock Module)
    SYSBUS -.- CPU(CPU Module)
    SYSBUS -.- RAM(RAM Module)
    SYSBUS -.- ROM(ROM Module)
    IO(I/O Bridge) -.- SYSBUS
  end
  style SYSBUS fill:#f96,stroke:#333,stroke-width:4px;
{{< /mermaid >}}

It consists of 40 signal lines. 16 Address lines (A0-A15), 8 Data line (D0-D7), 2 Power lines (+5v, GND) 9 control lines (/CLOCK, /RESET, /MEMREQ, /IORQ, /RD, /WR, /INT, /M1, /WAIT) and 5 optional spare lines for future growth. 

There are no other special circuitry or modules on the system bus module. You could simply use a stipboard with 40 tracks (35 for a minimal design).

Each module in the system core connects to the system bus via the following pins:

|BusLine|Label|Description|
|-------|-----|-----------|
|1|A0|16-bit Address bit0|
|2|A1|16-bit Address bit1|
|3|A2|16-bit Address bit2|
|4|A3|16-bit Address bit3|
|5|A4|16-bit Address bit4|
|6|A5|16-bit Address bit5|
|7|A6|16-bit Address bit6|
|8|A7|16-bit Address bit7|
|9|A8|16-bit Address bit8|
|10|A9|16-bit Address bit9|
|11|A10|16-bit Address bit10|
|12|A11|16-bit Address bit11|
|13|A12|16-bit Address bit12|
|14|A13|16-bit Address bit13|
|15|A14|16-bit Address bit14|
|16|A15|16-bit Address bit15|
|17|VCC|+5v Power source|
|18|GND|Ground|
|19|/CLOCK|Clock signal|
|20|/RESET|Reset signal|
|21|/MEMREQ|Memory Request signal|
|22|/IORQ|I/O Request signal|
|23|/RD|Read signal|
|24|/WR|Write signal|
|25|/INT|Interrupt Request signal|
|26|/M1|Machine Cycle 1 signal|
|27|/WAIT|Wait State signal|
|28|D0|8-bit Data bit0|
|29|D1|8-bit Data bit1|
|30|D2|8-bit Data bit2|
|31|D3|8-bit Data bit3|
|32|D4|8-bit Data bit4|
|33|D5|8-bit Data bit5|
|34|D6|8-bit Data bit6|
|35|D7|8-bit Data bit7|
|36|SPARE1|Spare|
|37|SPARE2|Spare|
|38|SPARE3|Spare|
|39|SPARE4|Spare|
|40|SPARE5|Spare|
