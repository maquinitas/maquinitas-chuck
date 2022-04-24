# maquinitas-chuck

## about  

maquinitas-chuck is a project by montoyamoraga.

maquinitas-chuck is a software library for controlling hardware MIDI instruments with the [ChucK](https://chuck.cs.princeton.edu/) programming language, intended for education, live coding, studio work, and live performance, and aimed at people interested in MIDI, computer music, generative music, sequencers, and randomness.

maquinitas-chuck is the [ChucK](http://chuck.cs.princeton.edu/) flavor of the [maquinitas](https://github.com/maquinitas) collection of software libraries.

## installation

this library is intended to expand ChucK, which can be donwloaded and installed from the website [https://chuck.cs.princeton.edu/](https://chuck.cs.princeton.edu/).

## use

to start using this library, either clone the repository or download the latest release from [https://github.com/maquinitas/maquinitas-chuck/releases](https://github.com/maquinitas/maquinitas-chuck/releases).

to load this library, run the [maq.init.ck](/scripts/maq.init.ck) ChucK script.

afterwards, setup the corresponding MIDI port for your hardware.

## contents

Currently available ChucK scripts:

* maq.init.ck: script to load the maquinitas-chuck library
* maq.inst.ck: base class
* bastl/
  * bastl-microgranny-2.ck
* korg/
  * korg-volca-beats.ck
  * korg-volca-fm.ck

in-progress drafts:

available on the [drafts/](drafts/) folder of this repository.

## reference

* [ChucK](http://chuck.cs.princeton.edu/)
* [The ChucK Manual 1.2.1.3](http://chuck.cs.princeton.edu/release/files/chuck_manual.pdf)
* [Chuck Extend](http://chuck.stanford.edu/extend/)

## license

MIT
