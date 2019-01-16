// maq.testing.ck
// script for testing maquinitas-chuck

// new RolandJP08 instance
RolandJP08 myJP08;
// setup myJP08 port
// run chuck --probe on terminal
// or check Window->Device Browser for number
myJP08.setupPort(0);
// note on
myJP08.noteOn(100, 100);
// let time flow
0.5 :: second => now;
// note off
myJP08.noteOff(100);
// let time flow
0.5 :: second => now;

