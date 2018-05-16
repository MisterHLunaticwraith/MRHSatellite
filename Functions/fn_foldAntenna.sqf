params ["_storePos"];
_holder = 'groundweaponholder' createVehicle _storePos; 
_holder addItemCargoGlobal ['MRH_FoldedSatcomAntenna',1];
_holder setPosATL _storePos;