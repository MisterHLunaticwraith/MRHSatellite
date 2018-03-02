
private ["_blacklistedIds","_alreadyUsedIds","_uniqueID"];
//scopeName "main";
_idnotfound = true;
while {_idnotfound} do {
//systemchat "broken to";
_blacklistedIds = [1231,1204,1205,1206,1207,1202,1600,1601,2100,5202,6202,5203,6203,5204,6204,5205,6205,1270,1271,1215,1105,1106,1107,1333,1789]; //all idcs used in dialogs
_alreadyUsedIds = player getVariable "MRH_DisplayUsedIDs";
if (isNil "_alreadyUsedIds") then {_alreadyUsedIds = [];};
_uniqueID = [random [500, 2500, 5000],0] call bis_fnc_cutdecimals;
//if (_uniqueID in _blacklistedIds or _uniqueID in _alreadyUsedIds) then {breakTo "Main";}  ;//systemchat format ["Id refusé: %1", str _uniqueID];
if !(_uniqueID in _blacklistedIds or _uniqueID in _alreadyUsedIds) then {_idnotfound = false;};
};
_alreadyUsedIds pushback _uniqueID;
player setVariable ["MRH_DisplayUsedIDs", _alreadyUsedIds];
//systemchat format ["Id accepté: %1", str _uniqueID];
_uniqueID