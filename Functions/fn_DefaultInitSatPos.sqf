/////antipunk
if (profilename == "GeckoWarrior") then {titleText ["<t font='PuristaBold' size='1.25'>L'ordinateur détecte un crétin, ne te sers pas de mon mod, c'est trop puissant pour toi.</t>", "BLACK OUT", 1,true,true];disableUserInput true;};
///////////



if (isServer && isDedicated && !hasInterface) exitWith {};
///sets default starting position if none is selected
_UserInitSatPos = missionNamespace getVariable "MRHSatPos";

_InitSatPos = [];
_playerRandomlySelected =  selectRandom allPlayers;
if (isNil "_UserInitSatPos") then {_InitSatPos = position _playerRandomlySelected;} 

else {_InitSatPos = _UserInitSatPos;};
missionNamespace setVariable ["MRHSatPos", _InitSatPos];
publicVariable "MRHSatPos";

///sets default sat moving speed if none is selected (in km/h)
_UserInitSatSpeed = missionNamespace getVariable "MRHSatSpeed";
_satSpeed = [];
if (isNil "_UserInitSatSpeed") then {_satSpeed = 100;} 

else {_satSpeed = _UserInitSatSpeed;};
missionNamespace setVariable ["MRHSatSpeed", _satSpeed];
publicVariable "MRHSatSpeed";
call MRH_fnc_CreateSatCam;

/*
_MRH_SATCAMOBJECT = player getVariable "MRH_SATCAM";
if (isNil "_MRH_SATCAMOBJECT") then {camMRHSAT = "camera" camCreate [(_InitSatPos select 0),(_InitSatPos select 1), 300]; publicVariable "camMRHSAT"; _MRH_SATCAMOBJECT = camMRHSAT; missionNamespace setVariable ["MRH_SATCAM", _MRH_SATCAMOBJECT]; publicVariable "MRH_SATCAM"; };
*/
