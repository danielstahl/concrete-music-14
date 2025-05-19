
(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(12)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/sc/concrete-music-14/concrete_music_14/concrete-music-14-part1-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/stage/concreteMusic14-part1-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 200,
    action: { "done".postln }
);

server.remove;
)



(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(12)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/sc/concrete-music-14/concrete_music_14/concrete-music-14-part2-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/stage/concreteMusic14-part2-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 75,
    action: { "done".postln }
);

server.remove;
)


(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(12)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/sc/concrete-music-14/concrete_music_14/concrete-music-14-part3-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/stage/concreteMusic14-part3-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 60,
    action: { "done".postln }
);

server.remove;
)

(
var server, score;

server = Server(\nrt,
    options: ServerOptions.new
	.sampleRate_(96000)
    .numOutputBusChannels_(12)
	.maxNodes_(4096)
	.memSize_(2.pow(20))
    .numInputBusChannels_(2));

score = Score.newFromFile("/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/sc/concrete-music-14/concrete_music_14/concrete-music-14-part4-v1.txt");

score.recordNRT(
    outputFilePath: "/Users/danielstahl/Documents/Music/Pieces/Concrete Music/Concrete Music 14/stage/concreteMusic14-part4-v1.caf".standardizePath,
    headerFormat: "CAF",
    sampleFormat: "float",
    options: server.options,
	duration: 65,
    action: { "done".postln }
);

server.remove;
)
