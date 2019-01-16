// maq.testing.ck
// script for testing maquinitas-chuck

// new RolandJP08 instance
RolandJP08 myJP08;
// setup myJP08 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myJP08.setupPort(0);


while (true) {
    // note on
    Std.rand2(0, 127) => int note;
    Std.rand2(0, 127) => int velocity;
    Std.rand2f(0.2, 1.0) => float on;
    Std.rand2f(0.2, 1.0) => float off;
    myJP08.noteOn(note, velocity);
    // let time flow
    on :: second => now;
    // note off
    myJP08.noteOff(note);
    // let time flow
    off :: second => now;
}




