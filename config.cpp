class CfgPatches {
	class MRHSatellite{
		units[] = {
		"MRH_SAT_BACKPACK",
		"MRH_SAT_POSANDSPEEDINIT_MODULE"
		
		
		}; //
		weapons[] = {"MRH_BluForTransponder","MRH_TacticalDisplay"}; //
		requiredVersion = 0.1; //
		requiredAddons[] = {"cba_settings","A3_Weapons_F_Ammoboxes"}; //
	};
};

	class CfgMarkerClasses
	{
		class MRHSatMarkers
		{
		displayName = $STR_MRH_CFG_MARKERCLASS;
		};
	};

/////=========cfgs
class cfgMarkers
{
#include"\MRHSatellite\cfgHPP\cfgmarkers.hpp"
};
class cfgVehicles
{
#include"\MRHSatellite\cfgHPP\cfgvehicles.hpp"
#include"\MRHSatellite\cfgHPP\cfgmodules.hpp"
#include "\MRHSatellite\Models\Antenna\antenna.hpp"
};

class CfgFactionClasses
{
	class NO_CATEGORY;
	class Satellite: NO_CATEGORY
	{
		displayName = $STR_MRH_CFG_SATSETTINGS;
	};
};
class CfgWeapons
{
	#include"\MRHSatellite\cfgHPP\cfgweapons.hpp"
	#include "\MRHSatellite\Models\Tablet\tablet.hpp"
	#include "\MRHSatellite\Models\Antenna\antennaInventoryItem.hpp"
};
class CfgSounds
{
	#include "\MRHSatellite\cfgHPP\cfgsounds.hpp"
};
class CfgFunctions
{
	#include "\MRHSatellite\cfgHPP\cfgfunctions.hpp"
};

////=============fincfgs

////=============Dialogs
#include "\MRHSatellite\DialogsHPP\definesSAT.hpp"
#include "\MRHSatellite\DialogsHPP\dialogsSAT.hpp"
#include "\MRHSatellite\DialogsHPP\dialogsSATFULLSCREEN.hpp"
#include "\MRHSatellite\DialogsHPP\dialogsTablet.hpp"
class Extended_PostInit_EventHandlers
{
   class MRHSatInit
   {
      clientInit = "call compile preProcessFileLineNumbers '\MRHSatellite\Functions\fn_CheckForAce.sqf'";
   };
};

class Extended_PreInit_EventHandlers 
{
    class MRHSatKeyBinds 
	{
        init = "call compile preProcessFileLineNumbers '\MRHSatellite\Functions\fn_KeyBinds.sqf'";
		
    };
	class MRHSatSettings
	{
		init = "call compile preProcessFileLineNumbers '\MRHSatellite\Functions\fn_ModSettings.sqf'";
		
		
	};
};

class CfgEditorCategories
{
	class EdCat_MRH_Sat // Category class, you point to it in editorCategory property
	{
		displayName = "MRH Satellite"; // Name visible in the list
	};
};

class CfgEditorSubcategories
{
	class EdSubcat_MRH_Objects // Category class, you point to it in editorSubcategory property
	{
		displayName = "Objects"; // Name visible in the list
	};

};