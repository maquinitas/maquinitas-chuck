//maquinitas
//by aaron montoya-moraga
//may 2018

//declaration of public class
public class Maquinitas {
    
    //function to print to the console
    function void helloWorld() {
        <<< "maquinitas hello world" >>>;    
    }
    
    //function for sending note out
    //first argument is midiPort
    //to check your midi interface, you have two options:
    //on miniAudicle
    //go to Window-Device Browser- MIDI
    //on the terminal write
    //chuck --probe
    function void sendNoteOn(int port, int channel, int pitch, int velocity) {
        
        //declare MidiOut variable
        MidiOut midiOut;
        
        //declare MidiMsg variable
        MidiMsg msg;
        
        //check if midiPort is open
        //TODO: make sure that this doesnt crash
        //when using several instruments on the same port
        if (!midiOut.open(port)) {
            me.exit();
        }
        
        //note on message
        //sends 3 bytes: data1, data2, data3
        //data1: 1001nnnn is note on, where nnnn is midi channel
        //nnnn 0-15 in binary, corresponding to midi channels 1-16
        //channel 1 is 144, channel 2 is 145, and so on
        //TODO: check that channel is on the right 
        143 + channel => msg.data1;
        //data2: pitch
        //range: 0-127
        //TODO: check that pitch is in the right range
        pitch => msg.data2;
        //data3: velocity
        //range: 0-127
        //TODO: check that velocity is the right range
        velocity => msg.data3;
        
        //send midi message
        midiOut.send(msg);
        
        <<< "sendNoteOn, " + "prt: " + port + ", chn:" + channel + ", pitch:" + pitch + ", vel:" + velocity >>>;
    }
    
    function void allNotesOff(int port, int channel) {
        
         //declare MidiOut variable
         MidiOut midiOut;
         
         //declare MidiMsg variable
         MidiMsg msg;
         
         //check if midiPort is open
         //TODO: make sure that this doesnt crash
        //when using several instruments on the same port
         if (!midiOut.open(port)) {
             me.exit();
         }
         
         //mute all the notes
         for (0 => int pitch; pitch < 127; pitch++) {
             //note on message
             //sends 3 bytes: data1, data2, data3
             //data1: 1001nnnn is note on, where nnnn is midi channel
             //nnnn 0-15 in binary, corresponding to midi channels 1-16
             //channel 1 is 144, channel 2 is 145, and so on
             //TODO: check that channel is on the right 
             143 + channel => msg.data1;
             //data2: pitch
             pitch => msg.data2;
             //data3: velocity
             //range: 0-127
             //0 to turn it off
             0 => msg.data3;
             
             //send midi message
             midiOut.send(msg);
         }
    }
    
    
    function void sendControlChange
    
}