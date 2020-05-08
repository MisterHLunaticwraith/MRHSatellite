changelog v1.52.4

* Added :
- Support for ALiVE mod : the satellite will now trigger virtual ALiVE entities to spawn wherever the satellite cam is, just like when players trigger them.

- Satellite position appears inworld as a module when you are in Zeus. (Do not delete the module, otherwise ALiVE units will not spawn under the satellite.

* Tweaked :
- The camera should be less laggy for the player moving the satellite.

* Fixed:
- Satellite interface background was not well adjusted to screen.
changelog  V1.52.3

- Added MRH Sat Items Crate
- Added new model for satellite backpack
- Added compatibility with Contact DLC laptops/multiscreen rugged computer.
- Changed interface background
- Replaced laptop with A3 Contact DLC multiscreen rugged computer
-  Fixed error caused by incorrect syntax in isSatMonitor.sqf
- Fixed JIP player not seeing PIP on screens.
changelog v1.52.2
- Fixed attributes set in 3 den editor wouldn't work in MP

Changelog v1.52.0

- Added missing entries in cfg.hpp
- Added cba versioning
- Backpack deployed will now use custom antenna model
- Fixed rsc map witdthRailway error
- Added some cba local handlers (trigger only on machine where script is called)
> "mrh_satellite_satBagDeployed" triggers when a backpack is deployed, passed params are [laptop,antenna]
> "mrh_satellite_satBagRepacked" triggers when bag is packed, passed param [bag]
> "mrh_satellite_lasering" triggers when lasering starts, passed param [laserObject]
> "mrh_satellite_satInPosition" triggers when sat gets in position after long range movement, passed parameter [position]
> see https://cbateam.github.io/CBA_A3/docs/files/events/fnc_addEventHandler-sqf.html for more.
> example: _handle = ["mrh_satellite_satBagDeployed", {params ["_laptop","_antenna"]; systemChat str _this}] call CBA_fnc_addEventHandler;

- objects that are satellite control consoles now have variable "MRH_Sat_isSatelliteConsole" <BOOL> true, globally known

-Objects that are satellite feed display screen (but that are not consoles) now have variable "MRH_Sat_isSatelliteScreen" <BOOL> true, globally known.