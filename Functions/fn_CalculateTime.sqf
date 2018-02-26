params ["_desiredPos"];
_orgPos = missionNamespace getVariable "MRHSatPos";
_satSpeed = missionNamespace getVariable "MRHSatSpeed";
_satSpeed = _satSpeed/3.6;
_dist = _desiredPos distance _orgPos;


_travelTime = _dist/_satSpeed;

_displaytime = [_travelTime, "HH:MM:SS", true] call BIS_fnc_secondsToString;

missionNamespace setVariable ["MRHCalculatedTravelTime", _travelTime];
publicVariable "MRHCalculatedTravelTime";
missionNamespace setVariable ["MRHRemainingTime", _travelTime];
publicVariable "MRHRemainingTime";
missionNamespace setVariable ["MRHCalculatedDistance", _dist];
publicVariable "MRHCalculatedDistance";

ctrlshow [1777, false];
ctrlshow [5001, true];
_displayDist = _dist/1000;
_displayDist = [_displayDist,1] call BIS_fnc_cutDecimals;
buttonSetAction [5003, "call MRH_fnc_MovingScreen;"];
_ctrlTEXTZONE =((findDisplay 9751) displayCtrl 5006);


_text = localize "STR_MRH_SATELLITETRAVEL" +" " + str _displayDist +" " + localize "STR_MRH_KMHAVAIL" +" "  +  (_displayTime select 1)+" " + localize "STR_MRH_MINUTES"+" " + (_displayTime select 2) +" " + localize "STR_MRH_SECONDSCONTINUE";
_ctrlTEXTZONE ctrlSetStructuredText parsetext _text ;