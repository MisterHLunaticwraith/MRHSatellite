if (is3DEN) exitWith {};
_statement = {
params ["_item"];

	_isConsole = _item getVariable ["MRH_isSatelitteConsole",false];
	if (_isConsole) exitWith {};
	_isScreen = _item getVariable ["MRH_isSatelitteScreen",false];
	if (_isScreen) then {[_item] call MRH_fnc_IsSatMonitor;};

	
};
[
    {time>1}, 
    _statement, 
    _this
] call CBA_fnc_waitUntilAndExecute;