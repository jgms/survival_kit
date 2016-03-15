(
Pbind(
	\freq, Pseq([70,140,280,560],4),
	\dur, Pseq([1,0.5,0.25,0.25],4),
	\legato, Pseq([0.1,1,1,1],4)
).play;
)

//Pbind Pattern bind.. para agrupar patrones..notas duraciones..etc
//Pseq Pattern sequence?...para secuenciar patrones ([lista de valores],repeticiones)

// \freq , \note, \midinote, \degree ..en fin... \freq
// \dur ...durations
// \amp ..amplitude 0 - 1
// \legato ..legato 0.1 - 1