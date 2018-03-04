params ["_selectedTarget"];

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
_tracking = missionNameSpace getVariable "MRH_Follow_tracking";
};
ctrlshow [1271, false];
};
[_selectedTarget,"Red"] call MRH_fnc_ObjectTracker;
playSound "TrackingTarget";
[_selectedTarget] spawn {
_selectedTarget = _this select 0;
_cam = player getVariable "MRH_SATCAM";
_tracking = true;
while {_tracking} do {
_cam setPos [getPos _selectedTarget select 0, getPos _selectedTarget select 1, getPos _cam select 2];
sleep 0.5;
[player] call MRH_fnc_GlobalCamMove;
_tracking = missionNameSpace getVariable "MRH_Follow_tracking";};
};