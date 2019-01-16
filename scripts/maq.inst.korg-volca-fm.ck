// maq.inst.korg-volca-fm.ck
// maquinitas chuck script for Korg volca fm

public class KorgVolcaFm extends maquinitasInstrument {
    // default MIDI channel 2 for Korg volca fm
    setupChannel(1);
    
    // setup MIDI notes
    0 => notesMIDI["min"];
    127 => notesMIDI["max"];
    
    // setup MIDI CC parameters
    // first the numbers
    [40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
     50] @=> int ccMIDInumbers[];
    // then the names of the parameters
    ["transpose", "velocity", "modulator atack", "modulator decay", "carrier attack", "carrier decay", "lfo rate", "lfo pitch depth", "algorithm", "arp type",
     "arp div"] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }
}
