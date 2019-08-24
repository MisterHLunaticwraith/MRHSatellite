class CfgPatches {
	class MRHSatellite{
		units[] = {
		"B_Carryall_satellite",
		"MRH_SAT_POSANDSPEEDINIT_MODULE",
		"MRH_VirtualSatelliteEntity",
		"MRH_SatCom_Antenna_Base",
		"MRH_SatCom_Antenna",
		"MRH_SAT_protectiveCase"
		
		
		};
		weapons[] = {"MRH_BluForTransponder","MRH_TacticalDisplay","MRH_FoldedSatcomAntenna"};
		requiredVersion = 0.1;
		requiredAddons[] = {"cba_main","A3_Weapons_F_Ammoboxes"};
		version = 1.52.4;
		versionStr = "1.52.4";
		versionAr[] = {1,52,4};
		versionDesc = "MRH Satellite";
		versionAct = "";
		author = "Mr H.";
		url = "https://github.com/MisterHLunaticwraith/MRHSatellite/issues";
	};
};
class CfgSettings {
   class CBA {
      class Versioning {
         
         class MRHSatellite {
           // Optional: Manually specify the Main Addon for this mod
           main_addon = "MRHSatellite"; // Uncomment and specify this to manually define the Main Addon (CfgPatches entry) of the mod

           // Optional: Add a custom handler function triggered upon version mismatch
           handler = ""; // Adds a custom script function that will be triggered on version mismatch. Make sure this function is compiled at a called preInit, not spawn/execVM

           // Optional: Dependencies
           // Example: Dependency on CBA
           /*
            class Dependencies {
               CBA[]={"cba_main", {0,8,0}, "true"};
            };
           */

           // Optional: Removed addons Upgrade registry
           // Example: myMod_addon1 was removed and it's important the user doesn't still have it loaded
           //removed[] = {"myMod_addon1"};
		
         };
      };
   };
};
class CfgMods {
    class MRHSatellite {
        dir = "@MRHSatellite";
        name = "Mister H's Satellite";
        picture = "A3\Ui_f\data\Logos\arma3_expansion_alpha_ca";
        hidePicture = "true";
        hideName = "true";
        actionName = "Website";
        action = "https://github.com/MisterHLunaticwraith/MRHSatellite/issues";
        description = "Issue Tracker: https://github.com/MisterHLunaticwraith/MRHSatellite/issues";
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
#include "\MRHSatellite\Models\Case\protectiveCase.hpp"
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

   class MRHCheckAceInit
   {
      clientInit = "call compile preProcessFileLineNumbers '\MRHSatellite\Functions\fn_CheckForAce.sqf'";
 
   };
   class MRHCreateSatCamWithDefaultPos
   {
		clientInit = "call compile preProcessFileLineNumbers '\MRHSatellite\Functions\fn_DefaultInitSatPos.sqf'";   
   };

};

class Extended_PreInit_EventHandlers 
{
		class MRHSatServerSideInit
   {
	   serverInit = "call compile preProcessFileLineNumbers '\MRHSatellite\Functions\fn_serverInit.sqf'";
   };
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
		displayName = $STR_MRH_EDSUBCATOBJECTS; // Name visible in the list
	};

};