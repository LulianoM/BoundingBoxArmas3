params["_player", "_radius"];
_civs = [];
private _pos = position _player;

_list = _pos nearEntities ["Man", _radius];

for "_i" from 0 to (count _list-1) do {
	if (side(_list select _i) isEqualTo civilian ) then {
		_civs pushBack (_list select _i);
	};
};

_civs