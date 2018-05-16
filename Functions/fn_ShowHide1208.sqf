params ["_show"];
switch (true) do {
case _show : {
ctrlshow [1231,true];
ctrlshow [1204,true];
ctrlshow [1205,true];
ctrlshow [1206,true];
ctrlshow [1207,true];
ctrlshow [1202,true];
ctrlshow [1209,true];

ctrlshow [1215,true];
ctrlshow [1105,true];
//_showFullscreen = ["MRH_SAT_allowFullscreen"] call cba_settings_fnc_get;
//ctrlshow [1209, _showFullscreen];
ctrlshow [1106,true];
ctrlshow [1107,true];
call MRH_fnc_Compass;
call MRH_fnc_ElevationAndGrid;


_showFullscreen = ["MRH_SAT_allowFullscreen"] call cba_settings_fnc_get;
_isUsingTablet = player getVariable ["MRHInterfaceIsCalledFromTablet",false];
if (_isUsingTablet) then {_showFullscreen = false;};
ctrlshow [1209, _showFullscreen];

};
case !_show : {
ctrlshow [1231,false];
ctrlshow [1204,false];
ctrlshow [1205,false];
ctrlshow [1206,false];
ctrlshow [1207,false];
ctrlshow [1202,false];
ctrlshow [1209,false];
ctrlshow [1215,false];
ctrlshow [1105,false];
ctrlshow [1106,false];
ctrlshow [1107,false];
};
};