params ["_clicked"];
uinameSpace setVariable ["tracking", false];
publicVariable "tracking";
/////trackingtextanim
[] spawn {
disableSerialization;
_tracking = true;
ctrlshow [1271, true];
_ctrTrackText = ((findDisplay 9751) displayCtrl 1271);
while {_tracking} do {

_ctrTrackText ctrlSetStructuredText parsetext "Tracking";
sleep 0.5;
_ctrTrackText ctrlSetStructuredText parsetext "Tracking.";
sleep 0.5;
_ctrTrackText ctrlSetStructuredText parsetext "Tracking..";
sleep 0.5;
_ctrTrackText ctrlSetStructuredText parsetext "Tracking...";
sleep 0.5;
_tracking = uinameSpace getVariable "tracking";
};
ctrlshow [1271, false];
};
////end
_x = _clicked select 2;
_y = _clicked select 3;


_pos = screenToWorld [_x,_y];

_list = [];
{
_dist = _x distance _pos;
if (_dist < 5) then {_list pushBack _x;};

} forEach allunits;
//copytoclipboard str _list;
_selectedTarget= _list select 0;
if (isNil "_selectedTarget") ExitWith {ctrlShow [1789, false]; playSound "notarget";};

ctrlShow [1789, false];
[_selectedTarget,"Red"] call MRH_fnc_ObjectTracker;
playSound "TrackingTarget";
[_selectedTarget] spawn {
_selectedTarget = _this select 0;
_cam = player getVariable "SATCAM";
_tracking = true;
while {_tracking} do {
_cam setPos [getPos _selectedTarget select 0, getPos _selectedTarget select 1, getPos _cam select 2];
sleep 0.5;

_tracking = uinameSpace getVariable "tracking";};
};

