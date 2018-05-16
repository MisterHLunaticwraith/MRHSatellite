#include "MRH_components.hpp"
_bag = player getVariable "SourceBag";
_pos = player getVariable "SourceBagPos";
_laptop = "Land_Laptop_device_F" createVehicle (player modelToWorld [0,1,0]);
_laptop setDir ((getDir _laptop)-180);
_sat = "Land_SatelliteAntenna_01_F" createVehicle (_laptop modelToWorld [2, -0.5, 0.8]);
_sat setDir ((getDir _laptop)-360 + 180);
_laptop setVariable ["LinkedAntenna", _sat]; 
deleteVehicle objectParent _bag;

if !(HASACE3) then {[
[_laptop],{
params ["_laptop"];
[_laptop] call MRH_fnc_isSatMonitor;
_laptop addAction [localize "STR_MRH_ADDACTIONUSE",{[] call MRH_fnc_SatInit;}];
_laptop addAction [localize "STR_MRH_ADDACTIONREPACK",{
 _laptop = _this select 0;
 _sat = _laptop getVariable "LinkedAntenna";
 _storepos = (position _laptop);
 
 deleteVehicle _sat;
 deleteVehicle _laptop;
// "B_Carryall_satellite" createVehicle _storepos;
"B_Carryall_satellite" createVehicle (player modelToWorld [0,1,0]);
}];

}] RemoteExec ["Spawn", 0, true];} 




else {
////////
[[_laptop],{
params ["_laptop"];
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
 _2 = localize "STR_MRH_ADDACTIONREPACK";
 _action2 =["Repack", 
_2,
"\MRHSatellite\paa\repack.paa", 
 { 
 _laptop = _this select 0;
 _sat = _laptop getVariable "LinkedAntenna";
 _storepos = (position _laptop);
 
 deleteVehicle _sat;
 deleteVehicle _laptop;
// "B_Carryall_satellite" createVehicle _storepos;
"B_Carryall_satellite" createVehicle (player modelToWorld [0,1,0]);
 }, 
 {true},
 {},
 [],
 [0,0,0], 
 5] call ace_interact_menu_fnc_createAction;
 ////
 [_laptop, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;
 }] RemoteExec ["Spawn", 0, true];
 };