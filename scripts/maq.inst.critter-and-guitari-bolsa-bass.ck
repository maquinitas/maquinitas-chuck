// maq.inst.critter-and-guitari-bolsa-bass.ck
// maquinitas chuck script for Critter & Guitari Bolsa Bass

// declare class CritterBolsaBass that inherits from maquinitasInstrument
public class CritterBolsaBass extends maquinitasInstrument {
    
    // default MIDI channel 1 for Critter & Guitari Bolsa Bass
    setupChannel(1);
    
    // setup MIDI notes
    0 => notesMIDI["min"];
    127 => notesMIDI["max"];   
}

