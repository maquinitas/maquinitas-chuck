# maquinitas-chuck

## About  

maquinitas-chuck is a project by montoyamoraga.

maquinitas-chuck is a software library for controlling hardware MIDI instruments with the [ChucK](https://chuck.cs.princeton.edu/) programming language, intended for education, live coding, studio work, and live performance, and aimed at people interested in MIDI, computer music, generative music, sequencers, and randomness.

maquinitas-chuck is the [ChucK](http://chuck.cs.princeton.edu/) flavor of the [maquinitas](https://github.com/maquinitas) collection of software libraries.

## Installation

This library is intended to expand ChucK, which can be donwloaded and installed from the website [https://chuck.cs.princeton.edu/](https://chuck.cs.princeton.edu/).

## Use

To start using this library, either clone the repository or download the latest release from [https://github.com/maquinitas/maquinitas-chuck/releases](https://github.com/maquinitas/maquinitas-chuck/releases).

To load this library, run the [maq.init.ck](/scripts/maq.init.ck) ChucK script.

Afterwards, setup the corresponding MIDI port for using your hardware MIDI instrument.

If you want to see working examples, check out the [maq.testing.ck](/scripts/maq.testing.ck) script, where there are working examples with every instrument.

## Contents



List of currently available ChucK scripts:

* [maq.init.ck](/scripts/maq.init.ck), script to load the maquinitas-chuck library.
* [maq.inst.ck](/scripts/maq.inst.ck), base class.

* [maq.inst.critter-and-guitari-bolsa-bass.ck](/scripts/maq.inst.critter-and-guitari-bolsa-bass.ck), for controlling the Critter & Guitari Bolsa Bass instrument.
* [maq.inst.korg-volca-fm.ck](/scripts/maq.inst.korg-volca-fm.ck), for controlling the Korg volca fm instrument.
* [maq.inst.roland-jp-08.ck](/scripts/maq.inst.roland-jp-08.ck), for controlling the Roland JP-08 instrument.
* [maq.inst.roland-sh-01a.ck](/scripts/maq.inst.roland-sh-01a.ck), for controlling the Roland SH-01A instrument.
* [maq.inst.roland-tb-03.ck](/scripts/maq.inst.roland-tb-03.ck),  for controlling the Roland TB-03 instrument.
* [maq.inst.roland-tr-08.ck](/scripts/maq.inst.roland-tr-08.ck),  for controlling the Roland TR-08 instrument.
* [maq.inst.roland-tr-09.ck](/scripts/maq.inst.roland-tr-09.ck),  for controlling the Roland TR-09 instrument.
* [maq.tesing.ck](/scripts/maq.testing.ck),  for documentation of examples with every instrument.

In-progress drafts:

* maq.inst.bastl-microgranny-2.ck
* maq.inst.korg-volca-beats.ck
* maq.inst.moog-minitaur.ck
* maq.inst.novation-bass-station-ii.ck

## Reference

* [ChucK](http://chuck.cs.princeton.edu/)
* [The ChucK Manual 1.2.1.3](http://chuck.cs.princeton.edu/release/files/chuck_manual.pdf)
* [Chuck Extend](http://chuck.stanford.edu/extend/)

## License  

MIT
