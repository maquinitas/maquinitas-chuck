// maq.inst
// base class for instruments

public class maquinitasInstrument extends Chugen {
    
    // declare MidiOut variable
    MidiOut midiOut;
    
    // declare MidiMsg variable
    MidiMsg msg;
    
    // declare midiPort variable
    // default value is 0
    0 => int midiPort;
    
    //declare channel variable
    // default value is 1
    // values between 1-16
    1 => int midiChannel;
    
    function void setup(int channel, int port) {
        
        // define channel of the instrument
        channel => midiChannel;
        
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
    
    function void sendNote(int note, int velocity) {
        
        //do note on message
        //data1: 145 is note on, channel 2
        //in binary, 1001nnnn is note on, where nnnn is midi channel
        //nnnn 0-15 in binary, corresponding to midi channels 1-16
        143 + midiChannel => msg.data1;
        //when data1 is 144, data2 is pitch
        //use 0-127 on roland tb-03 for selecting notes
        note => msg.data2;
        //when data1 is 144, data3 is velocity
        //use 0-127 on roland tb-03 for selecting velocity
        velocity => msg.data3;
        
        //send midi message
        midiOut.send(msg);
    }
    
    function void allNotesOff() {

        for (0 => int noteNumber; noteNumber < 127; noteNumber++) {
            //do note on message
            //data1: 145 is note on, channel 2
            //in binary, 1001nnnn is note on, where nnnn is midi channel
            //nnnn 0-15 in binary, corresponding to midi channels 1-16
            143 + midiChannel  => msg.data1;
            //when data1 is 144, data2 is pitch
            //use 0-127 on roland tb-03 for selecting notes
            noteNumber => msg.data2;
            //when data1 is 144, data3 is velocity
            //use 0-127 on roland tb-03 for selecting velocity
            0 => msg.data3;
            
            //send midi message
            midiOut.send(msg);
        }       
    }
}


