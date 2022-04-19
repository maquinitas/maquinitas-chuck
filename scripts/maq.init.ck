// maq.init.ck
// script for loading maquinitas-chuck

<<<"maquinitas-chuck loading...">>>;

// define relative paths of files of the library
// TODO: moved this to different subfolders
// hopefully there is a way to programatically
// iterate through all the folders in chuck
["maq.inst.ck",
"/korg/maq.inst.korg-volca-fm.ck",
"/korg/maq.inst.korg-volca-beats.ck"] @=> string relativePath[];

// iterate through all the relative paths
for (0 => int i; i < relativePath.cap(); i++) {
    
    // retrieve each file and build absolute path to it
    me.dir() + relativePath[i] => string absolutePath;
    
    // add to chuck machine
    Machine.add(me.dir() + relativePath[i]);
    
    // print success message
    // TODO: only print if success, maybe catch error?
    <<<relativePath[i] + " loaded!">>>;
} 

<<<"maquinitas-chuck loaded!">>>;