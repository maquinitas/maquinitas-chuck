// maq.inst.roland-tb-03.ck
// maquinitas chuck script for Roland TB-03

public class RolandTB03 extends maquinitasInstrument {
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
