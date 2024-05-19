





skibtoilet_bobcat spawn {
	private _configs = "true" configClasses (configFile >> "CfgSFX");
	private _configs2 = [];
	{
		private _namedSnd = getText (_x >> 'name');
		if (_namedSnd != '') then {
			private _namedSnd2 = '';
			{
				private _char = _x;
				if (_char isEqualTo " ") then {
					_namedSnd2 = _namedSnd2 + "_";
				} else {
					_namedSnd2 = _namedSnd2 + _char;
				};
			} forEach (_namedSnd splitString '');
			_namedSnd = 'sound_' + _namedSnd2;
			'systemChat _namedSnd;';
		};
		_configs2 pushBack (configName _x);
	} forEach _configs;
	_configs2;
    while {alive _this} do {
        private _snd = selectRandom _configs2;
        for "_i" from 1 to 4 do {
            private _alarm = createSoundSource [_snd, position _this, [], 0];
            _alarm attachTo [_this,[0,0,0]];
            _alarm spawn {
                sleep 4.4;
                deleteVehicle _this;
            };
        };
        sleep 4.4;
    };
};

