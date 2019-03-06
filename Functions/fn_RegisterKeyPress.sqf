/*
0= bouger vers le haut
1=bas
2=gauche
3=droite
4=Rotate gauche
5=Rotate droite
6=zoom;
7= zoom -
*/

params ["_key"];
if (!isNull curatorCamera) ExitWith {};
_cam = uinameSpace getVariable "MRH_SATCAM";
if (isNil "_cam") ExitWith {};
_camtarget = missionNamespace getVariable "MRH_SATCAMTARGET";
_both = [_cam,_camtarget];
_maxHeight = ["MRH_SAT_MaxSatAltitude"] call cba_settings_fnc_get;

if (isnull (FindDisplay 9751)) exitWith {}; //ahmodifsurcam
switch (true) do {
case (_key == 0) : { {_x setPos [(getPos _x select 0), (getPos _x select 1) +10 , (getPos _x select 2)];} forEach _both; call MRH_fnc_ChangeMarkerPos;};
case (_key == 1) : { {_x setPos [(getPos _x select 0), (getPos _x select 1) -10 , (getPos _x select 2)];} forEach _both; call MRH_fnc_ChangeMarkerPos;};
case (_key == 2) : { {_x setPos [(getPos _x select 0)-10, (getPos _x select 1) , (getPos _x select 2)];} forEach _both; call MRH_fnc_ChangeMarkerPos;};
case (_key == 3) : { {_x setPos [(getPos _x select 0)+10, (getPos _x select 1) , (getPos _x select 2)];} forEach _both; call MRH_fnc_ChangeMarkerPos;};
case (_key == 4) : { _cam setVectorDirAndUp [[0,0,-1],[((vectorUp _cam select 0) -0.05),1,0]];};
case (_key == 5) : { _cam setVectorDirAndUp [[0,0,-1],[((vectorUp _cam select 0) +0.05),1,0]];};
case (_key == 6) : {
_limit = getPos _cam select 2;
if (_limit <20) exitWith {};
sliderSetPosition [1202, (getPos _cam select 2)-10]; _cam setPos [(getpos _cam select 0), (getpos _cam select 1), (getPos _cam select 2)-10];
((findDisplay 9751) displayCtrl 1205) ctrlSetStructuredText parsetext (str (round (getpos _cam select 2)));
};
case (_key == 7) : {
_limit = getPos _cam select 2;
if (_limit >_maxHeight - 5) exitWith {};
sliderSetPosition [1202, (getPos _cam select 2)+10]; _cam setPos [(getpos _cam select 0), (getpos _cam select 1), (getPos _cam select 2)+10];
((findDisplay 9751) displayCtrl 1205) ctrlSetStructuredText parsetext (str (round (getpos _cam select 2)));
};
};
[player] call MRH_fnc_GlobalCamMove;
