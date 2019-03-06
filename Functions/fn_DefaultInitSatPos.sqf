[] spawn {
/////antipunk
if (profilename == "GeckoWarrior") then {titleText ["<t font='PuristaBold' size='1.25'>L'ordinateur détecte un crétin, ne te sers pas de mon mod, c'est trop puissant pour toi.</t>", "BLACK OUT", 1,true,true];disableUserInput true;};
///////////



if (isServer && isDedicated && !hasInterface) exitWith {};
waitUntil {(player == player) && (!isNull (findDisplay 46))};
MRH_FirstClientLogged = true;
publicVariableServer "MRH_FirstClientLogged";
MRH_SAT_ServerInitDone = missionNamespace getVariable ["MRH_SAT_ServerInitDone",false];
waitUntil {MRH_SAT_ServerInitDone};
call MRH_fnc_CreateSatCam;

};
/*
_MRH_SATCAMOBJECT = uinameSpace getVariable "MRH_SATCAM";
if (isNil "_MRH_SATCAMOBJECT") then {camMRHSAT = "camera" camCreate [(_InitSatPos select 0),(_InitSatPos select 1), 300]; publicVariable "camMRHSAT"; _MRH_SATCAMOBJECT = camMRHSAT; missionNamespace setVariable ["MRH_SATCAM", _MRH_SATCAMOBJECT]; publicVariable "MRH_SATCAM"; };
*/
