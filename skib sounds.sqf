

_skib spawn {
	private _skib = _this;
	private _skibSounds = 
	[
		"A3\sounds_f\characters\human-sfx\P06\Hit_Max_5.wss",
		"A3\sounds_f\characters\human-sfx\P06\Hit_Max_2.wss",
		"A3\sounds_f\characters\human-sfx\P05\Hit_Max_5.wss",
		"A3\sounds_f\characters\human-sfx\P05\Hit_Max_4.wss",
		"A3\sounds_f\characters\human-sfx\P05\Hit_Max_2.wss",
		"A3\sounds_f\characters\human-sfx\P04\Hit_Max_5.wss",
		"A3\sounds_f\characters\human-sfx\P04\Hit_Max_4.wss",
		"A3\sounds_f\characters\human-sfx\P04\Hit_Max_3.wss",
		"A3\sounds_f\characters\human-sfx\P04\Hit_Max_2.wss",
		"A3\sounds_f\characters\human-sfx\P04\Hit_Max_1.wss",
		"A3\sounds_f\characters\human-sfx\P03\Hit_Max_3.wss",
		"A3\sounds_f\characters\human-sfx\P03\Hit_Max_2.wss"
	];
	while {alive _skib} do {
		playSound3D [selectRandom _skibSounds, _skib, false, getPosASL _skib, 5, 0.01, 1600];
		sleep (selectRandom [3,7,11]);
	};
};




