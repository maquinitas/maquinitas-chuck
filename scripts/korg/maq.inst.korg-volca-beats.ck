// maq.inst.korg-volca-beats.ck
// maquinitas chuck script for Korg volca beats

public class KorgVolcaBeats extends maquinitas {

    // default MIDI channel 10 for Korg volca beats
    setupChannel(10);
    
    // setup MIDI notes
    0 => notesMIDI["min"];
    127 => notesMIDI["max"];
    
    // setup MIDI CC parameters
    // first the numbers
    [40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
     50, 51, 52, 53,
     54, 55, 56, 57, 58, 59] @=> int ccMIDInumbers[];
    // then the names of the parameters
    ["level kick", "level snare", "level lo tom", 
    "level hi tom", "level closed hihat", "level open hihat",
    "level clap", "level claves", "level agogo", "level crash",
    "pcm speed clap", "pcm speed claves", "pcm speed agogo", "pcm speed crash",
    "stutter time", "stutter depth", "tom decay",
    "closed hihat decay", "open hihat decay", "hihat grain" ] @=> string ccMIDInames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < ccMIDInumbers.cap(); i++) {
        ccMIDInumbers[i] => ccMIDI[ccMIDInames[i]];
    }
}

