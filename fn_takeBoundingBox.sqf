params["_player", "_radius"];

private _pos = position _player;
private _list = _pos nearEntities ["Man", _radius];

for "_i" from 0 to (count _list-1) do {
	if (side(_list select _i) isEqualTo civilian ) then {
		myguy = (_list select _i);
	};
};

myguy