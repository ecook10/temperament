(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F-G#.mp3", duration:5);
	wait(0.02);
	{
		[SinOsc.ar(1047.684), SinOsc.ar(1038.260)]
	}.play();
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F-G#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(9.424);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F-A.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(873.070), SinOsc.ar(880.000)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F-A.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(6.93);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F-A#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(698.456), SinOsc.ar(699.246)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F-A#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.79);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F-C.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(523.842), SinOsc.ar(523.252)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F-C.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.59);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F-D.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(873.070), SinOsc.ar(880.995)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F-D.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(7.925);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F#-A.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1109.982), SinOsc.ar(1100)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F#-A.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(9.982);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F#-A#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(924.985), SinOsc.ar(932.328)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F#-A#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(7.343);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F#-B.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(739.988), SinOsc.ar(740.826)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F#-B.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.838);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F#-C#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(554.991), SinOsc.ar(554.366)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F#-C#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.625);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/F#-D#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(924.985), SinOsc.ar(933.381)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/F#-D#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(8.396);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G-A#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1175.988), SinOsc.ar(1165.410)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G-A#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(10.578);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G-B.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(979.990), SinOsc.ar(987.768)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G-B.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(7.778);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G-C.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(783.992), SinOsc.ar(784.878)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G-C.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.886);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G-D.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(587.994), SinOsc.ar(587.330)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G-D.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.664);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G-E.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(979.990), SinOsc.ar(988.884)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G-E.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(8.894);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G#-B.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1245.912), SinOsc.ar(1234.710)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G#-B.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(11.202);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G#-C.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1038.260), SinOsc.ar(1046.504)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G#-C.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(8.244);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G#-C#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(830.608), SinOsc.ar(831.549)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G#-C#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.941);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G#-D#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(622.956), SinOsc.ar(622.254)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G#-D#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.702);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/G#-F.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1038.260), SinOsc.ar(1047.684)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/G#-F.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(9.424);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A-C.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1320), SinOsc.ar(1308.130)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A-C.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(11.870);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A-C#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1100), SinOsc.ar(1108.732)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A-C#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(8.732);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A-D.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(880), SinOsc.ar(880.995)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A-D.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.995);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A-E.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(660), SinOsc.ar(659.256)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A-E.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.744);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A#-C#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1398.492), SinOsc.ar(1385.915)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A#-C#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(12.577);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A#-D.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1165.410), SinOsc.ar(1174.660)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A#-D.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(9.250);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A#-D#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(932.328), SinOsc.ar(933.381)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A#-D#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(1.053);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/A#-F.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(699.246), SinOsc.ar(698.456)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/A#-F.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(0.79);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/B-D.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1481.665), SinOsc.ar(1468.325)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/B-D.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(13.327);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/B-D#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1234.710), SinOsc.ar(1244.508)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/B-D#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(9.798);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/B-E.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(987.768), SinOsc.ar(988.884)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/B-E.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(1.116);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/C-D#.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1569.756), SinOsc.ar(1555.635)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/C-D#.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(14.121);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/C-E.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1308.130), SinOsc.ar(1318.512)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/C-E.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(10.382);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/C-F.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1046.504), SinOsc.ar(1047.684)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/C-F.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(1.180);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/C#-E.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1663.098), SinOsc.ar(1648.140)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/C#-E.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(14.958);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/C#-F.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1358.915), SinOsc.ar(1396.912)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/C#-F.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(10.997);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)

(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/partials/D-F.mp3", duration:5);
	wait(0.02);
	{ [SinOsc.ar(1761.990), SinOsc.ar(1746.140)] }.play;
}).play
)
(
Routine({
	s.record("C:/Users/evanc/Dev/PianoTuning/src/audio/tempo/D-F.mp3", duration:5);
	wait(0.02);
	{
		var tempo = Impulse.ar(15.850);
		var hihat = HPF.ar(WhiteNoise.ar(1), 10000) * Decay2.ar(tempo, 0.000005, 0.05);
		Out.ar(0, hihat * 0.4 ! 2)
	}.play
}).play
)


