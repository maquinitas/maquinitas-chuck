// maq.init.ck
// script for loading maquinitas-chuck

<<<"maquinitas-chuck loading...">>>;

// define relative paths of files of the library
["maq.inst.ck",
"maq.inst.critter-and-guitari-bolsa-bass.ck",
"maq.inst.roland-jp-08.ck",
"maq.inst.roland-sh-01a.ck",
"maq.inst.roland-tb-03.ck"] @=> string relativePath[];

// iterate through all the relative paths
for (0 => int i; i < relativePath.cap(); i++) {
    // retrieve each file and build absolute path to it
    me.dir() + relativePath[i] => string absolutePath;
    // add to chuck machine
    Machine.add(me.dir() + relativePath[i]);
    // print success message
    <<<relativePath[i] + " loaded!">>>;
} 

<<<"maquinitas-chuck loaded!">>>;