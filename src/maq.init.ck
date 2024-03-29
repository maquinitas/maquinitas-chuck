// maq.init.ck
// script for loading maquinitas-chuck

<<<"maquinitas-chuck loading...">>>;

// define relative paths of files of the library
// TODO: find a way to programatically
// iterate through all the folders
["maq.inst.ck",
"/bastl/bastl-microgranny-2.ck",
"/bastl/bastl-thyme.ck",
"/korg/korg-volca-beats.ck",
"/korg/korg-volca-fm.ck"
] @=> string relativePath[];

// iterate through all the relative paths
for (0 => int i; i < relativePath.cap(); i++) {
    
    // add to ChucK machine
    Machine.add(me.dir() + relativePath[i]);
    
    // print success message
    // TODO: only print if success, maybe catch error?
    <<<relativePath[i] + " loaded!">>>;
} 

<<<"maquinitas-chuck loaded!">>>;