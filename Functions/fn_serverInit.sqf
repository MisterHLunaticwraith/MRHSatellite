[] spawn {
MRH_FirstClientLogged = false;
waitUntil {!(allPlayers isEqualTo []) && MRH_FirstClientLogged};
_UserInitSatPos = missionNamespace getVariable "MRHSatPos";

_InitSatPos = [];
_playerRandomlySelected =  selectRandom allPlayers;
if (isNil "_UserInitSatPos") then {_InitPos = position _playerRandomlySelected;
_InitSatPos = [(_InitPos select 0), (_InitPos select 1), 300];
} 

else {_InitSatPos = _UserInitSatPos;};
missionNamespace setVariable ["MRHSatPos", _InitSatPos,true];
publicVariable "MRHSatPos";
publicVariableServer "MRHSatPos";


_UserInitSatSpeed = missionNamespace getVariable "MRHSatSpeed";
_satSpeed = [];
if (isNil "_UserInitSatSpeed") then {_satSpeed = 100;} 

else {_satSpeed = _UserInitSatSpeed;};
missionNamespace setVariable ["MRHSatSpeed", _satSpeed,true];
publicVariable "MRHSatSpeed";

missionNamespace setVariable ["MRH_SAT_ServerInitDone",true, true];
publicVariable "MRH_SAT_ServerInitDone";

};