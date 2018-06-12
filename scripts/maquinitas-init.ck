"maquinitas.ck" => string maquinitasRelativePath;

me.dir() + maquinitasRelativePath => string maquinitasPath;

<<< "maquinitas path: " + maquinitasPath >>>;

//add library to virtual machine
Machine.add(maquinitasPath);