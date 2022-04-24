// korg-volca-beats.ck

public class KorgVolcaBeats extends maquinitas {

    // default MIDI channel 10 for Korg volca beats
    setupChannel(10);
    
    // first the numbers
    [36, 38, 39, 42, 43, 46, 49, 50, 67, 75] @=> int midiNotesNumbers[];
    
    // then the names of the MIDI notes
       
    ["bass drum", "snare drum", "clap", "closed hihat", "low tom",
    "open hihat", "crash", "hi tom", "agogo", "claves"] @=> string midiNotesNames[];
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < midiNotesNumbers.cap(); i++) {
      // midiNotesNumbers[i] => midiNotes[midiNotesNames[i]];
    }

       
    
    // setup MIDI CC parameters
    // first the numbers
    [40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
     50, 51, 52, 53,
     54, 55, 56, 57, 58, 59] @=> int midiControlChangeNumbers[];
     
    // then the names of the parameters
    ["level kick", "level snare", "level lo tom", 
    "level hi tom", "level closed hihat", "level open hihat",
    "level clap", "level claves", "level agogo", "level crash",
    "pcm speed clap", "pcm speed claves", "pcm speed agogo", "pcm speed crash",
    "stutter time", "stutter depth", "tom decay",
    "closed hihat decay", "open hihat decay", "hihat grain" ] @=> string midiControlChangeNames[];
    
    // then fill the ccMIDI array accordingly
    for (0 => int i; i < midiControlChangeNumbers.cap(); i++) {
      //   midiControlChangeNumbers[i] => midiControlChange[midiControlChangeNames[i]];
    }
}

