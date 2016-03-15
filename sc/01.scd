(
{

	var envolvente = EnvGen.kr(Env([0,1,0],[0.01,0.8]));
	var espectro = EnvGen.kr(Env([2,15,5,8,1],[0.4,0.8,0.2,0.1]));
	var ancho = EnvGen.kr(Env([0.2,0.9,0.1,0.8,0.2],[0.5,0.5,0.5,0.5]));
	//Blip.ar(70,espectro,envolvente);
	//Pulse.ar(35,ancho,(envolvente)*0.1);
	WhiteNoise.ar(envolvente);
}.play;
)

//SinOsc.ar(frecuencia,fase,amplitud,add);
//Saw.ar(frecuencia,amplitud);
//Blip.ar(frecuencia,armonicos,amplitud);
//Pulse.ar(frecuencia,ancho del pulso*,amplitud);
//*valor entre 0 y 1 que determina la forma de onda, 0.5 es una onda cuadrada
//WhiteNoise.ar(amplitud);...PinkNoise,BrownNoise,GrayNoise
//EnvGen.kr(Env);
//Env([nodos],[tiempos entre los nodos]); para x nodos, x-1 tiempos
//Line.kr(start,end,dur,mul);

//FILTROS

(
{
	var envolvente = EnvGen.kr(Env([0,1,0],[0.01,0.8]));
	BRF.ar(WhiteNoise.ar(envolvente),400,9,0.5);
}.play
)

//LPF.ar(sonidos,frecuencia,amplitud resultante);
//HPF.ar(sonidos,frecuencia,amplitud resultante);
//band pass, band reject
//BPF.ar(sonidos,frecuencia Q,campana*,amplitud resultante);
//BRF.ar(sonidos,frecuencia Q,campana*,amplitud resultante);
//* campana por frecuencia Q...

//EFECTOS

(
{

	var envolvente = EnvGen.kr(Env([0,1,0],[0.01,2]));
	var espectro = EnvGen.kr(Env([2,15,5,8,1],[0.4,0.8,0.2,0.1]));
	var ancho = EnvGen.kr(Env([0.2,0.7,0.1,0.8,0.2],[0.5,0.5,0.5,0.5]));
	var sonido;
	sonido = Blip.ar(70,espectro,envolvente);
	CombN.ar(sonido,1,1,4,1);
	//Pulse.ar(105,ancho,(envolvente)*0.5);
}.play;
)

(
{

	var envolvente = EnvGen.kr(Env([0,1,0],[0.01,2]));
	var espectro = EnvGen.kr(Env([2,15,5,8,1],[0.4,0.8,0.2,0.1]));
	var ancho = EnvGen.kr(Env([0.2,0.7,0.1,0.8,0.2],[0.5,0.5,0.5,0.5]));
	var sonido;
	sonido = Blip.ar(70,espectro,envolvente);
	FreeVerb.ar([Blip.ar(70,espectro,envolvente),CombN.ar(sonido,1,1,4,0.3)],0.4,1,0,0.5);
}.play;
)

//FreeVerb.ar(sonido,mix,room,damp,amplitud);
//DelayN.ar(sonido,tiempo maximo, tiempo usado, amplitud);


