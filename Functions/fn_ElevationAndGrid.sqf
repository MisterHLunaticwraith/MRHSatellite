[] spawn {
disableSerialization;
if (!isNull curatorCamera) ExitWith {};
_camera = uinameSpace getVariable "MRH_SATCAM";


waitUntil {ctrlshown ((findDisplay 9751)displayCtrl 1106)};

while {ctrlshown ((findDisplay 9751)displayCtrl 1106)} do {
_gridCoord = mapGridPosition _camera;

//_text = str _bearing;
_text = "Grid" + " " +"<t color ='#f29509'>" + _gridCoord +"</t>";
((findDisplay 9751)displayCtrl 1107) ctrlSetStructuredText parsetext _text;
_camPos = getPosASL _camera;
_endPosASL = [(_camPos select 0),(_camPos select 1),0];
_intersection = lineIntersectsSurfaces [_camPos, _endPosASL]; 
_terrainHeight = 0;
if (_intersection isEqualTo []) then {_terrainHeight = 0} else {
_intersectionPOSArray = _intersection select 0;

_terrainPosARRAY = _intersectionPOSArray select 0;

_terrainHeight = _terrainPosARRAY select 2;
};

_terrainHeight = [_terrainHeight,1] call BIS_fnc_cutDecimals;
_textHeight = "Terrain elevation" + " " +"<t color ='#f29509'>" + str _terrainHeight +"m</t>";
((findDisplay 9751)displayCtrl 1106) ctrlSetStructuredText parsetext _textHeight;

};

};