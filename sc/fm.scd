(
{
	var carrier = 200;
	var amplitudModulador = 1;
	var indiceMod = 0.5;
	//modulador-> oscilador cuya frecuencia es el carrier por el indice de mod
	//y su amplitud es la amplitud de mod por el carrier
	var modulador = SinOsc.ar(carrier*indiceMod,0,carrier*amplitudModulador);
	SinOsc.ar(carrier + modulador,0,0.4);
}.play;
)

//con valores moviles

(
{
	var carrier = 200;
	var amplitudModulador = 1;
	var indiceMod = EnvGen.kr(Env([0.5,1.7,0.1],[5,15]));
	//modulador-> oscilador cuya frecuencia es el carrier por el indice de mod
	//y su amplitud es la amplitud de mod por el carrier
	var modulador = SinOsc.ar(carrier*indiceMod,0,carrier*amplitudModulador);
	SinOsc.ar(carrier + modulador,0,0.4);
}.play;
)
