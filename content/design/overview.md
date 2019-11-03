---
title: "Design Overview"
menuTitle: "Overview"
date: 2019-11-03T18:59:46+10:00
draft: false
weight: 10
---
There are many designs of small 8-bit computers on the web that are based around a single pcb or compact design. While a single self contained board looks really cool and trendy, I don't think it gives you the flexibility to upgrade, change or expand the system when you want to try something new ideas or add extra functionality.

The goal of the Whizz80 is to allow the design to grow and expand as you develop it (it is iterative process as I learn, so mistakes would be made). Because of this I am deciding to use a modular approach and have divided up the computer into 2 distinct core modules. The [System Core](/design/system-core) and the [I/O Core](/design/io-core).

```mermaid
  graph LR;
  SYSCORE(System<br />Core) --- BRIDGE((I/O<br />Bridge))
  BRIDGE --- IOCORE(I/O<br />Core)
  style SYSCORE stroke:#333;
  style BRIDGE fill:#fff,stroke-dasharray: 5, 5;;
  style IOCORE stroke:#333;
```

The 2 cores are connected to each other via an [I/O Bridge](/design/io-bridge). You can run the Whizz80 without the [I/O Core](/design/io-core) and [I/O Bridge](/design/io-bridge), but it wouldn't be a very exciting computer (and the only way to interface with it would be probing the Whizz80 bus with an external tool such as a logic probe, multimeter or oscilloscope).
