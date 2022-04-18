// maq.inst.critter-and-guitari-bolsa-bass.ck
// maquinitas chuck script for Critter & Guitari Bolsa Bass

// declare class CritterBolsaBass that inherits from maquinitas
public class CritterBolsaBass extends maquinitas {
    
    // default MIDI channel 1 for Critter & Guitari Bolsa Bass
    setupChannel(1);
    
    // setup MIDI notes
    0 => notesMIDI["min"];
    127 => notesMIDI["max"];   
}

// new CritterBolsaBass instance
// CritterBolsaBass myBolsaBass;
// setup myJP08 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
// myBolsaBass.setupPort(0);

/*
while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myBolsaBass.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    myBolsaBass.noteOff(note);
    // let time flow
    off :: second => now;
}
// myBolsaBass.startSequencer();
// myBolsaBass.stopSequencer();
*/