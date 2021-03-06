// maq.testing.ck
// script for testing maquinitas-chuck

<<< "maq.testing.ck start">>>;

/*
// new CritterBolsaBass instance
CritterBolsaBass myBolsaBass;
// setup myJP08 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myBolsaBass.setupPort(0);

while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myBolsaBass.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    myBolsaBass.noteOff(note);
    // let time flow
    off :: second => now;
}
// myBolsaBass.startSequencer();
// myBolsaBass.stopSequencer();
*/

/*
// new KorgVolcaFm instance
KorgVolcaFm myVolcaFm;
// setup myVolcaFm port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myVolcaFm.setupPort(0);
// <<< myVolcaFm.notesMIDI.cap() >>>;
// <<< myVolcaFm.ccMIDInumbers.cap() >>>;
// <<< myVolcaFm.ccMIDInames.cap() >>>;

// print number of MIDI CC parameter
// <<< myVolcaFm.ccMIDI["algorithm"] >>>;

while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myVolcaFm.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    myVolcaFm.noteOff(note);
    // let time flow
    off :: second => now;
    
    // CC message
    myVolcaFm.controlChange(myVolcaFm.ccMIDI["lfo rate"], Std.rand2(0, 127));
}
// myVolcaFm.startSequencer();
// myVolcaFm.stopSequencer();
*/

/*
// new RolandJP08 instance
RolandJP08 myJP08;
// setup myJP08 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myJP08.setupPort(0);

// print number of MIDI CC parameter
// <<< myJP08.ccMIDI["lfo rate"] >>>;

while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myJP08.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    myJP08.noteOff(note);
    // let time flow
    off :: second => now;
    
    // CC message
    myJP08.controlChange(myJP08.ccMIDI["lfo rate"], Std.rand2(0, 127));
}
// myJP08.startSequencer();
// myJP08.stopSequencer();
*/

/*
// new RolandSH01A instance
RolandSH01A mySH01A;
// setup mySH01A port
// run chuck --probe on terminal
// or check Window->Device Browser for number
mySH01A.setupPort(0);
// <<< mySH01A.notesMIDI.cap() >>>;
// <<< mySH01A.ccMIDInumbers.cap() >>>;
// <<< mySH01A.ccMIDInames.cap() >>>;

// print number of MIDI CC parameter
// <<< mySH01A.ccMIDI["lfo rate"] >>>;

while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    mySH01A.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    mySH01A.noteOff(note);
    // let time flow
    off :: second => now;
    
    // CC message
    mySH01A.controlChange(mySH01A.ccMIDI["lfo rate"], Std.rand2(0, 127));
}
// mySH01A.startSequencer();
// mySH01A.stopSequencer();
*/

/*
// new RolandTB03 instance
RolandTB03 myTB03;
// setup myTB03 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myTB03.setupPort(0);
// <<< myTB03.notesMIDI.cap() >>>;
// <<< myTB03.ccMIDInumbers.cap() >>>;
// <<< myTB03.ccMIDInames.cap() >>>;

// print number of MIDI CC parameter
// <<< myTB03.ccMIDI["delay time"] >>>;

while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myTB03.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    myTB03.noteOff(note);
    // let time flow
    off :: second => now;
    
    // CC message
    myTB03.controlChange(myTB03.ccMIDI["delay time"], Std.rand2(0, 127));
}
// myTB03.startSequencer();
// myTB03.stopSequencer();
*/

/*
// new RolandTR08 instance
RolandTR08 myTR08;
// setup myTR08 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myTR08.setupPort(0);
// <<< myTR08.notesMIDI.cap() >>>;
// <<< myTR08.ccMIDInumbers.cap() >>>;
// <<< myTR08.ccMIDInames.cap() >>>;

// print number of MIDI CC parameter
// <<< myTR08.ccMIDI["bd tune"] >>>;

while (true) {
    // note on
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myTR08.noteOn(myTR08.notesMIDI["bass drum 1"], velocity);
    // let time flow
    on :: second => now;
    // note off
    myTR08.noteOff(myTR08.notesMIDI["bass drum 1"]);
    // let time flow
    off :: second => now;
    
    // CC message
    myTR08.controlChange(myTR08.ccMIDI["bd tune"], Std.rand2(0, 127));
}

// myTR08.startSequencer();
// myTR08.stopSequencer();
*/

/*
// new RolandTR09 instance
RolandTR09 myTR09;
// setup myTR09 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myTR09.setupPort(0);
// <<< myTR09.notesMIDI.cap() >>>;
// <<< myTR09.ccMIDInumbers.cap() >>>;
// <<< myTR09.ccMIDInames.cap() >>>;

// print number of MIDI CC parameter
// <<< myTR09.ccMIDI["bd tune"] >>>;

while (true) {
    // note on
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myTR09.noteOn(myTR09.notesMIDI["bass drum 1"], velocity);
    // let time flow
    on :: second => now;
    // note off
    myTR09.noteOff(myTR09.notesMIDI["bass drum 1"]);
    // let time flow
    off :: second => now;
    
    // CC message
    myTR09.controlChange(myTR09.ccMIDI["bd tune"], Std.rand2(0, 127));
}

// myTR09.startSequencer();
// myTR09.stopSequencer();
*/


<<< "maq.testing.ck finish">>>;