params ["_sourceBag"];
player setVariable ["SourceBag", _sourceBag];
_1 = localize "STR_MRH_DEPLOYING";
_progress =
[10, 
[],
{call MRH_fnc_SatDeployed;
},
{hint (localize "STR_MRH_DEPLOYCANCELLED");},
_1


] call ace_common_fnc_progressBar;
