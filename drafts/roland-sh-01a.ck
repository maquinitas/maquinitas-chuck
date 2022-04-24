// roland-sh-01a.ck

public class RolandSH01A extends maquinitas {
    // default MIDI channel 1 for Roland SH-01A
    setupChannel(1);
    
    // setup MIDI notes
    0 => notesMIDI["min"];
    127 => notesMIDI["max"];
    
    // setup MIDI CC parameters
    // first the numbers
    [    1,      3,      5, 
        11, 12, 13, 14, 15, 16, 17, 18, 19,
    20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
    30, 31,
                    64, 65,
        71, 72, 73, 74, 75, 76, 77, 78, 79,
    80, 81, 82, 83, 85, 86, 87] @=> int ccMIDInumbers[];
    // then the names of the parameters
    ["modulation", "lfo rate", "portamento time", 
    "expression pedal", "lfo wave form", "vco mod depth", "vco range", "vco pulse width", "vco pwm source", "vco mod sens", "vco bend depth", "vco pwm level",
    "vco saw level", "vco sub level", "vco sub type", "vco noise level", "vcf env depth", "vcf mod depth", "vcf key follow", "vcf bend depth", "vca env sw", "vca env mode",
    "env sustain", "portament mode",
    "hold", "portamento",
    "vcf resonance", "env release", "env attack", "vcf cutoff", "env decay", "tune", "transpose sw", "noise mode", "lfo mode",
    "assign mode", "chord voice 2 sw", "chord voice 3 sw", "chord voice 4 sw", "chord voice 2 key shift", "chord voice 3 key shift", "chord voice 4 key shift"] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }
}

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

