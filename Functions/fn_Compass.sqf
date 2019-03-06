[] spawn {
disableSerialization;
if (!isNull curatorCamera) ExitWith {};
_camera = uinameSpace getVariable "MRH_SATCAM";


waitUntil {ctrlshown ((findDisplay 9751)displayCtrl 1215)};

while {ctrlshown ((findDisplay 9751)displayCtrl 1215)} do {

_receivedvalue = (vectorUp _camera select 0);
_bearing = asin (vectorUp _camera select 0);
((findDisplay 9751)displayCtrl 1215) ctrlSetAngle [_bearing,0.5,0.5];
if (_bearing <0) then {_bearing = 360 + _bearing};
_bearing = [_bearing,1] call BIS_fnc_cutDecimals;
_text = str _bearing;
_text = "Bearing" + " " +"<t color ='#4f9e00'>" + _text +"°</t>";
((findDisplay 9751)displayCtrl 1105) ctrlSetStructuredText parsetext _text;

};
};