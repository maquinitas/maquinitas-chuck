# maquinitas-chuck

## About  

maquinitas-chuck is a project by montoyamoraga.

maquinitas-chuck is a software library for controlling hardware MIDI instruments with the [ChucK](https://chuck.cs.princeton.edu/) programming language, intended for education, live coding, studio work, and live performance, and aimed at people interested in MIDI, computer music, generative music, sequencers, and randomness.

maquinitas-chuck is the [ChucK](http://chuck.cs.princeton.edu/) flavor of the [maquinitas](https://github.com/maquinitas) collection of software libraries.

## Installation

this library is intended to expand ChucK, which can be donwloaded and installed from the website [https://chuck.cs.princeton.edu/](https://chuck.cs.princeton.edu/).

## Use

to start using this library, either clone the repository or download the latest release from [https://github.com/maquinitas/maquinitas-chuck/releases](https://github.com/maquinitas/maquinitas-chuck/releases).

to load this library, run the [maq.init.ck](/scripts/maq.init.ck) ChucK script.

afterwards, setup the corresponding MIDI port for using your hardware MIDI instrument.

if you want to see working examples, check out the [maq.testing.ck](/scripts/maq.testing.ck) script, where there are working examples with every instrument.

## Contents

Currently available ChucK scripts:

* maq.init.ck: script to load the maquinitas-chuck library.
* maq.inst.ck: base class.
* maq.inst.korg-volca-fm.ck: for the Korg volca fm instrument.

In-progress drafts:

available on the [drafts/](drafts/) folder of this repository.

## Reference

* [ChucK](http://chuck.cs.princeton.edu/)
* [The ChucK Manual 1.2.1.3](http://chuck.cs.princeton.edu/release/files/chuck_manual.pdf)
* [Chuck Extend](http://chuck.stanford.edu/extend/)

## License

MIT
