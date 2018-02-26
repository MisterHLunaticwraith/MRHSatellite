[] spawn{
_pos = screenToWorld [0.5,0.5];

//////lister toutes les unités
_list = [];
{
_dist = _x distance _pos;
if (_dist < 200) then {_list pushBack _x;};

} forEach allunits;
//copytoclipboard str _list;












_listHasTransponder = [];
_listHasNOTransponder = [];
{if ("MRH_BluForTransponder" in items _x) then {_listHasTransponder pushBack _x;} else {_listHasNOTransponder pushBack _x;}} forEach _list;







/////////////
{[_x,"grey"] call MRH_fnc_ObjectTracker; sleep 0.5;playSound "bip1";} forEach _listHasNOTransponder;
{[_x,"green"] call MRH_fnc_ObjectTracker; sleep 0.5;playSound "bip2";} forEach _listHasTransponder;
};