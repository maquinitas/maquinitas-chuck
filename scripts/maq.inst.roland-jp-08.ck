// maq.inst.roland-jp-08.ck
// maquinitas chuck script for Roland JP-08

// declare class RolandJP08 that inherits from maquinitasInstrument
public class RolandJP08 extends maquinitasInstrument {
    
    // default MIDI channel 1 for Roland SH-01A
    setupChannel(1);
    
    // setup MIDI notes
    0 => notesMIDI["min"];
    127 => notesMIDI["max"];
    
    // setup MIDI CC parameters
    // first the numbers
    [    1,      3,      5,              9, 
        11, 12, 13, 14, 15, 16, 17, 18, 19,
    20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
    30, 31,             35,
                            46, 47,
            52, 53, 54, 55, 56, 57,
                    64, 65,
        71, 72, 73, 74, 75,
    80, 81, 82, 83,         86, 87, 
        91] @=> int ccMIDInumbers[];
    // then the names of the parameterss
    ["modulation", "lfo rate", "portamento time", "lfo delay time",
    "expression pedal", "lfo wave", "vco mod lfo mod", "vco mod env mod", "vco mod freq mod", "vco mod pwm", "vco mod pwm sel", "vco-1 cross mod", "vco-1 range",
    "vco-1 wave", "vco-2 sync", "vco-2 range", "vco-2 tune", "vco-2 wave", "source mix", "hpf cutoff", "vcf slope", "vcf env mod", "vcf env mod sel",
    "vcf lfo mod", "vcf key follow", "vca level",
    "vca lfo mod", "env-1 attack",
    "env-1 decay", "env-1 sustain", "env-1 release", "env-1 polarity", "env-2 sustain", "env-2 key follow",
    "hold", "portamento",
    "vcf resonance", "env-2 release", "env-2 attack", "vcf cutoff", "env-2 decay",
    "dual switch", "current part", "delay time", "delay feedback", "assign mode", "bend range",
    "delay level"] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }

    
    
}

