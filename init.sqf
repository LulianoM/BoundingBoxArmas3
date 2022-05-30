params["_player"];
//Spawning civilians
//https://www.youtube.com/watch?v=xtNGfue9iec
//init variables
	//civ array
private _civs = [];
	// array of buildings
private _blds = [];
	//max # civs
private _MAX = 50;
	//Radius around player;
private _radius = 200;
	//create center and group
private _cntr = createCenter civilian;
private _grp = createGroup civilian;
_grp setSpeedMode "LIMITED";

//init functions
fn_getSpawnPos = compileFinal preprocessFileLineNumbers "civilians\fn_getSpawnPos.sqf";
fn_spawnCiv = compileFinal preprocessFileLineNumbers "civilians\fn_spawnCiv.sqf";
fn_countCivs = compileFinal preprocessFileLineNumbers "civilians\fn_countCivs.sqf";
fn_takeBoundingBox = compileFinal preprocessFileLineNumbers "civilians\fn_takeBoundingBox.sqf";

//get building positions

//start script loop
while {(alive _player)} do {
	_blds = nearestObjects [position _player, ["House", "Building"], _radius];
	//hint str _blds ;
	if((count _civs < _MAX) and (count _civs < count _blds)) then{
		_pos = [_blds] call fn_getSpawnPos; 
		if(_pos isEqualTo false) then {} else{
			[_pos, _grp] call fn_spawnCiv;
		};
	};
	
	_civs = [_player, _radius] call fn_countCivs;

	if(count _civs > 1) then {
		myguy = [_player, _radius] call fn_takeBoundingBox;

		//_box = str boundingBox myguy;
		//_boxReal = str boundingBoxReal myguy;
		boxScreen = worldToScreen ASLToAGL getPosASL myguy;
		hint str myguy;
		//screenshot ("imgbox/" + _box + ".png");
		//screenshot ("imgboxReal/" + _boxReal + ".png");
		screenshot ("imgboxScreen2/" +  str boxScreen + ".png");
	};
	
};
//spawning civs
//deleting civs