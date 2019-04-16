if (is3DEN) exitWith {};
_statement = {
params ["_item"];

	_isConsole = _item getVariable ["MRH_isSatelitteConsole",false];
	if (_isConsole) exitWith {[_item] call MRH_fnc_IsSatelliteConsole;};
	

	
};
[
    {time>0}, 
    _statement, 
    _this
] call CBA_fnc_waitUntilAndExecute;