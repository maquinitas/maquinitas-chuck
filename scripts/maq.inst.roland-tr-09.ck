// maq.inst.roland-tr-09.ck
// maquinitas chuck script for Roland TR-09

public class RolandTR09 extends maquinitasInstrument {
    
    // default MIDI channel 10 for Roland TR-09
    setupChannel(10);
 
    // setup MIDI notes
    // first the numbers
    [                   35, 36, 37, 38, 39,
    40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
    50, 51] @=> int notesMIDInumbers[];
    // then the names of the parameters
    ["bass drum 1", "bass drum 2", "rim shot", "snare drum 1", "hand clap",
    "snare drum 2", "low tom 1", "closed hihat 1", "low tom 2", "closed hihat 2", "mid tom 1", "open hihat", "mid tom 2", "high tom 1", "crash cymbal",
    "high tom 2", "ride cymbal"] @=> string notesMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < notesMIDInumbers.cap(); i++) {
        notesMIDInumbers[i] => notesMIDI[notesMIDInames[i]];
    }
    
    // setup MIDI CC parameters
    // first the numbers
    
    [                                    9,
    20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
                             46, 47, 48, 49,
     50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
     60, 61, 62, 63,
         71,
     80, 81, 82, 83, 84, 85, 86, 87, 88] @=> int ccMIDInumbers[];
    // then the names of the parameters
    ["shuffle",
    "bd tune", "bd attack", "bd comp", "bd decay", "bd level", "sd tune", "sd snappy", "sd comp", "sd tone", "sd level",
     "lt tune", "lt decay", "lt level", "mt tune",
     "mt decay", "mt level", "ht tune", "ht decay", "ht level", "rs tune", "rs decay", "rs level", "hc tune", "hc decay",
     "hc level", "ch tune", "ch decay", "ch level",
     "total accent",
     "oh tune", "oh decay", "oh level", "cc tune", "cc decay", "cy level", "rc tune", "rc decay", "rc level"] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }
}
