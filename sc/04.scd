//patron normal
(
Pbind(
	\freq, Pseq([100,200,Rest(0.25),300],2),
	\dur, Pseq([0.25,0.125,Rest(0.375),0.25],2)
).play(TempoClock(60/60));
)

//synthdef
(
SynthDef(\blipper,{arg freq = 70;//argumentos
	var envolvente = EnvGen.kr(Env.new([0,0.2,0],[5,2]));//variables internas
	var armonicos = EnvGen.kr(Env.new([1,8,3],[3,4]));
	var salida = Blip.ar(freq,armonicos,envolvente);
	Out.ar(0,salida);//output
}).add;
)

Synth(\blipper,[\freq,100]); //asi puedo tocar con el

(//patron usando el sinte
Pbind(
	\instrument, \blipper,
	\freq, Pseq([70,150,360,720],2),
	\dur, 1
).play(TempoClock(60/60));
)
