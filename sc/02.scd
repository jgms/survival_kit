TempoClock.default.tempo = 2;//tempo en bps BEATS PER SECOND...
//SynthDefs
(
SynthDef(\sinte, {arg nota=70;
	var envolvente = EnvGen.kr(Env([0,1,0],[0.01,0.8]));
	var espectro = EnvGen.kr(Env([2,15,5,8,1],[0.4,0.8,0.2,0.1]));
	Out.ar(0,Blip.ar(nota,espectro,envolvente));}
).add;
)

(
SynthDef(\sinte_dos, {arg nota=70;
	var envolvente = EnvGen.kr(Env([0,1,0],[0.01,0.15]));
	Out.ar(0,LPF.ar(Saw.ar(nota,envolvente),nota*3/2,5));}
).add;
)

Synth(\sinte_dos);

//nombre
//argumentos con defaults
//x cosas
//Out.ar(0,codigo...)

//SynthDef(\nombre, {argumentos con defaults;
//	variables..etc
//	Out.ar(0,sonido resultante);}
//).add;//add it to the server

Synth(\sinte,[\nota,200]);

//SEQUENCING STUFF
(
var base = 100;//declaro variables...
{
3.do{
	arg contador;//es el iterador...se pasa como argumento, caltel!
	Synth(\sinte,[\nota,rrand(70,560)]);
	0.25.wait;
	Synth(\sinte,[\nota,140]);
	0.75.wait;
	contador.postln;
	};
	8.do{//varias cosas en un mismo fork
		arg contador;
		Synth(\sinte_dos,[\nota,base * (contador + 1)]);//puedo usar el iterador
		0.25.wait;
	};
}.fork
)

//rrand(limite inferior, limite superior)...genera valores aleatorios