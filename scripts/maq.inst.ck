// maq.inst
// base class for instruments

// define maquinitasInstrument base class for instruments
public class maquinitasInstrument extends Chugen {
    
    // declare MidiOut variable
    MidiOut midiOut;
    
    // declare MidiMsg variable
    MidiMsg msg;
    
    // declare midiPort variable
    // default value is 0
    0 => int midiPort;
    
    // declare channel variable
    // default value is 1
    // values between 1-16
    1 => int midiChannel;
    
    // declare array of integers for MIDI notes
    int notesMIDI[0];
    
    // declare array of integers for MIDI CC params
    int ccMIDI[0];
  
    // function for setup of MIDI channel
    function void setupChannel(int channel) {
        // define channel of the instrument
        channel => midiChannel;
    }
    
    // function for setup of MIDI port
    function void setupPort(int port) {
        //assign midiPort number
        //to check your midi interface, you have two options:
        //on miniAudicle
        //go to Window-Device Browser- MIDI
        //on the terminal write
        //chuck --probe
        port => midiPort;
        
        //check if midiPort is open
        if (!midiOut.open(midiPort)) {
            me.exit();
        }
    }
    
    // function for MIDI note on
    function void noteOn(int note, int velocity) {
        // note on message
        // data1: 143 + MIDI channel is note on
        // MIDI channel between 1-16
        143 + midiChannel => msg.data1;
        // data2: note between 0-127
        note => msg.data2;
        // data3: velocity between 0-127
        velocity => msg.data3;
        // send MIDI message
        midiOut.send(msg);
    }
    
    // function for MIDI note off
    function void noteOff(int note) {
        // do note on message
        // data1: 143 + MIDI channel is note on
        // MIDI channel between 1-16
        143 + midiChannel => msg.data1;
        // data2: note between 0-127
        note => msg.data2;
        // data3: velocity 0 for note off
        0 => msg.data3;
        // send MIDI message
        midiOut.send(msg);
    }
       
    // function for turning off all MIDI notes
    function void allNotesOff() {
        // iterate through every note
        for (0 => int note; note < 127; note++) {       
            //do note on message
            // data1: 143 + MIDI channel is note on
            // MIDI channel between 1-16
            143 + midiChannel  => msg.data1;
            // data2: note between 0-127
            note => msg.data2;
            // data3: velocity 0 for note off
            0 => msg.data3;   
            //send midi message
            midiOut.send(msg);
        }       
    }
    
    // function for changing a MIDI CC parameter
    function void controlChange(int controller, int value) {    
        //first byte is 175 + MIDI channel for CC
        175 + midiChannel => msg.data1;
        // second byte of message is controller number
        controller => msg.data2;
        // third byte of message is the value
        value => msg.data3;
        //send MIDI message
        midiOut.send(msg);  
    }
}


