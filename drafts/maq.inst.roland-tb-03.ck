// maq.inst.roland-tb-03.ck
// maquinitas chuck script for Roland TB-03

public class RolandTB03 extends maquinitas {
    // default MIDI channel 2 for Roland TB-03
    setupChannel(2);
    
    // setup MIDI notes
    12 => notesMIDI["min"];
    84 => notesMIDI["max"];
    
    // setup MIDI CC parameters
    // first the numbers
    [       12,             16, 17, 18, 19,
       71,          74, 75,
           102,    104] @=> int ccMIDInumbers[];
    // then the names of the parameters
    ["env mod", "accent level", "overdrive", "delay time", "delay feedback",
    "resonance", "cutoff freq", "decay",
    "slide status", "tuning"] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }
}


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

