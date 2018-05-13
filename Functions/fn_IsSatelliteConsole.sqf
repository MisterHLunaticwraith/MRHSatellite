/*
this function makes any object a satellite controle console

*/
params ["_laptop"];
[_laptop] spawn {
#include "MRH_components.hpp"
params ["_laptop"];
//waituntil mission is initialized
waitUntil {time>1};
if !(HASACE3) then {
_laptop addAction [localize "STR_MRH_ADDACTIONUSE",{[]call MRH_fnc_SatInit;}];
[_laptop] call MRH_fnc_isSatMonitor;
} else 
{
[_laptop] call MRH_fnc_isSatMonitor;
_1 = localize "STR_MRH_ADDACTIONUSE";
_action =["Utiliser", 
_1,
 "\MRHSatellite\paa\satellite.paa", 
 {[] call MRH_fnc_SatInit;}, 
 {true},
 {},
 [],
 [0,0,0], 
 5] call ace_interact_menu_fnc_createAction;
 ////
 [_laptop, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject; 

 };
 };