// roland-tr-08.ck

public class RolandTR08 extends maquinitas {
    
    // default MIDI channel 10 for Roland TR-08
    setupChannel(10);
 
    // setup MIDI notes
    // first the numbers
    [                   35, 36, 37, 38, 39,
    40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
    50, 51,                 56,
            62, 63, 64,
    70,                 75] @=> int notesMIDInumbers[];
    // then the names of the parameters
    ["bass drum 1", "bass drum 2", "rim shot", "snare drum 1", "hand clap",
    "snare drum 1", "low tom 1", "closed hihat 1", "low tom 2", "closed hihat 2", "mid tom 1", "open hihat", "mid tom 2", "high tom 1", "cymbal",
    "high tom 2", "cow bell 1", "cow bell 2",
    "high conga", "mid conga", "low conga",
    "maracas", "claves"] @=> string notesMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < notesMIDInumbers.cap(); i++) {
        notesMIDInumbers[i] => notesMIDI[notesMIDInames[i]];
    }
    
    // setup MIDI CC parameters
    // first the numbers
    [20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                             46, 47, 48, 49,
     50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
     60, 61, 62, 63,
         71,
     80, 81, 82, 83, 84, 85, 86, 87, 88] @=> int ccMIDInumbers[];
    // then the names of the parameters
    ["bd tune", "bd tone", "bd comp", "bd decay", "bd level", "sd tone", "sd snappy", "sd comp", "sd decay", "sd level",
     "lt tune", "lt decay", "lt level", "mt tune",
     "mt decay", "mt level", "ht tune", "ht decay", "ht level", "rs tune", "rs decay", "rs level", "cp tune", "cp decay",
     "cp level", "ch tune", "ch decay", "ch level",
     "accent",
     "oh tune", "oh decay", "oh level", "cy tone", "cy decay", "cy level", "cb tune", "cb decay", "cb level"] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }
}

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

