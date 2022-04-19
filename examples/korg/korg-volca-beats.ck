// maquinitas example
// korg volca beats

// new instance
KorgVolcaBeats beats;

// setup port
beats.setupPort(0);

// print number of MIDI CC parameter
<<< beats.ccMIDI["hihat grain"] >>>;

while (true) {
    Std.rand2(36, 50) => int note;
    Std.rand2(0, 127) => int velocity;
    
    beats.noteOn(note, velocity);
    
    Std.rand2f(0.01, 0.5) => float on;
    Std.rand2f(0.01, 0.5) => float off;
    
     // let time flow
    on :: second => now;
    // note off
    beats.noteOff(note);
    // let time flow
    off :: second => now;
    
    // CC message
    // myVolcaFm.controlChange(myVolcaFm.ccMIDI["lfo rate"], Std.rand2(0, 127));

    // beats.startSequencer();
    // beats.stopSequencer();
}
