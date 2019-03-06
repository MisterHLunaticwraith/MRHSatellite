disableserialization;
if (!isNull curatorCamera) ExitWith {};
ctrlshow [1210, false];//lastedit2
_isMoving = missionNamespace getVariable "MRHSatIsMoving";
_totalTime = missionNamespace getVariable "MRHCalculatedTravelTime";
_CountdownTime = missionNamespace getVariable "MRHRemainingTime";
_progressBar = ((findDisplay 9751) displayCtrl 6203);
_displaybox = ((findDisplay 9751) displayCtrl 6205);
while {_isMoving && _CountdownTime >1} do
{
"SatPosMarker" setMarkerText (localize "STR_MRH_SATMOVINGUNAVAILABLEMARKERPOS");
"SatPosMarker" setMarkerColor "ColorRed";
"SatPosMarker" setMarkerAlpha 1;
_isMoving = missionNamespace getVariable "MRHSatIsMoving";
_CountdownTime = missionNamespace getVariable "MRHRemainingTime";
if (isNil "_CountdownTime") then {

_CountdownTime = _totalTime; };
_CountdownTime = _CountdownTime -1;
sleep 0.5;

missionNamespace setVariable ["MRHRemainingTime", _CountdownTime];
publicVariable "MRHRemainingTime";
_progress = _CountdownTime/_totalTime;
_progressBar progressSetPosition _progress;
_1 = localize "STR_MRH_SATELLITEMOVINGETATEXT";
_2 = localize "STR_MRH_MINUTES";
_3 = localize "STR_MRH_SECONDSANDPLEASEWAIT";
_displaytime = [_CountdownTime, "HH:MM:SS", true] call BIS_fnc_secondsToString;
_text = _1  + " " +  (_displayTime select 1) + " " +  _2 + " " +  (_displayTime select 2)+ " " +  _3;
_displaybox ctrlSetStructuredText parsetext _text;
"SatPosMarker" setMarkerText (localize "STR_MRH_SATMOVINGUNAVAILABLEMARKERPOS");
"SatPosMarker" setMarkerAlpha 0;
sleep 0.5;
};
hint (localize "STR_MRH_HINTSATELLITEINPOS");
missionNamespace setVariable ["MRHSatIsMoving", false];
publicVariable "MRHSatIsMoving";
_selectedPos = missionNamespace getVariable "RequestedSatPos";
_orgPos = missionNamespace getVariable "MRHSatPos";
_altitude = _orgPos select 2;


_posX = _selectedPos select 0;
_posY = _selectedPos select 1;

_cam = uinameSpace getVariable "MRH_SATCAM";
_cam setPosATL [_posX , _posY, _altitude];
missionNamespace setVariable ["MRHSatPos", [_posX,_posY,_altitude],true];
publicVariable "MRHSatPos";
publicVariableServer "MRHSatPos";
[player] call MRH_fnc_GlobalCamMove;
call MRH_fnc_FirstSatMove;
disableserialization;
ctrlshow [6203, false];
ctrlshow [6204, false];
ctrlshow [6205, false];
ctrlshow [1210, false];////lastedit1
"SatPosMarker" setMarkerPos _selectedPos;
"SatPosMarker" setMarkerText (localize "STR_MRH_PRESENTPOSITIONMARKER");
"SatPosMarker" setMarkerColor "ColorGreen";
"SatPosMarker" setMarkerAlpha 1;