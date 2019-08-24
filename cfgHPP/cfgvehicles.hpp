class Bag_Base;

class B_Carryall_Base;
	class B_Carryall_satellite: B_Carryall_Base
	{
		access=1;
		scope=2;
		displayName= $STR_MRH_SATELLITEBAGDISPLAYNAME;
		
		picture="\MRHSatellite\Models\Backpack\BackPackIcon.paa";
		editorPreview="\MRHSatellite\Models\Backpack\BackPackEditor.jpg";
		editorSubcategory="EdSubcat_Backpacks";
		model = "\MRHSatellite\Models\Backpack\SatBackPack.p3d";
		hiddenSelections[] = {"Camo"};
        hiddenSelectionsTextures[] = {"\MRHSatellite\Models\Backpack\F_Backpack_co.paa"};
		//hiddenSelectionMaterials[] = {"\MRHSatellite\Models\Backpack\F_Backpack.rvmat"};
		faction="BLU_F";
		mass=440; // =20kg
		//dlc="backpack";
		maximumLoad=0;
		isbackpack=1;
		class UserActions
			{
				class UnpackSat
				{
				 displayName = $STR_MRH_UNPACKADDACTIONCFG;
				 priority = 0;
				 shortcut = "";
				 condition = "true";
				 statement = "[this] call MRH_fnc_SatDeploy";
				 displayNameDefault = "";
				 position = "camo"; // pilotcontrol
				 radius = 5;
				 onlyforplayer = 1;
				};
			};
	};

	class Man;
    class CAManBase: Man {
        class ACE_SelfActions 
		{
			class ACE_Equipment {
				class MRH_Ace_SATCOM_ANTENNA {
					displayName = $STR_MRH_UNFOLD_ANTENNA;
					condition = "'MRH_FoldedSatcomAntenna' in items player";
					exceptions[] = {};
					statement = "player removeItem 'MRH_FoldedSatcomAntenna';_antenna = 'MRH_SatCom_Antenna' createVehicle (player modelToWorld [0,1,0]); _antenna setPosATL (player modelToWorld [0,1,0]);";
					icon = "\MRHSatellite\Models\Antenna\antennaInvIcon.paa";
					};
				class MRH_Ace_USE_UTD {
					displayName = $STR_MRH_USEUTD;
					condition = "'MRH_TacticalDisplay' in items player";
					exceptions[] = {};
					statement = "[true] call MRH_fnc_SatInit";
					icon = "\MRHSatellite\Models\Tablet\tableticon.paa";
					};
			};

		};
		class UserActions
			{
				class MRH_Vanilla_SATCOM_ANTENNA
				{
				 displayName = $STR_MRH_UNFOLDANTENNAVANILLA;
				 priority = 1;
				 shortcut = "";
				 condition = "('MRH_FoldedSatcomAntenna' in items player) && !('ace_common' in activatedAddons)";
				 statement = "player removeItem 'MRH_FoldedSatcomAntenna';_antenna = 'MRH_SatCom_Antenna' createVehicle (player modelToWorld [0,1,0]); _antenna setPosATL (player modelToWorld [0,1,0]);";
				 displayNameDefault = $STR_MRH_UNFOLDANTENNAVANILLA;
				 position = "camo"; // pilotcontrol
				 radius = 2;
				 onlyforplayer = 1;
				 showWindow = 1;
				};
		};
		
	};

#define ATTRIBUTES_MACRO class Attributes \
{ \
			class MRH_isSatelitteConsole \
                    { \
                        displayName = $STR_MRH_SAT_isSatConsoleATT; \
                        tooltip = $STR_MRH_SAT_isSatConsoleATTTooltip; \
                        property = "mrh_isSatelliteCtrlCs"; \
                        control = "Checkbox"; \
                        expression = "_this setVariable ['%s',_value,true];[[_this],MRH_fnc_objectAttributesConsole] RemoteExec ['Call',0,true]"; \
                        defaultValue = false; \
                        unique = 0; \
                        validate = "none";\
                        condition = "objectobject";\
                        typeName = "BOOL";\
                    }; \
			class MRH_isSatelitteScreen \
                    { \
                        displayName = $STR_MRH_SAT_isSatScreenAtt; \
                        tooltip = $STR_MRH_SAT_isSatScreenAttToolTip; \
                        property = "mrh_isSatScreen"; \
                        control = "Checkbox"; \
                        expression = "_this setVariable ['%s',_value];[[_this],MRH_fnc_objectAttributesScreen] RemoteExec ['Call',0,true]"; \
                        defaultValue = false; \
                        unique = 0; \
                        validate = "none"; \
                        condition = "objectHasInventoryCargo"; \
                        typeName = "BOOL"; \
                    }; \
		};
class Items_base_F;

class Land_Laptop_unfolded_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_Laptop_02_F :Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_PCSet_01_screen_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_FlatTV_01_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_TripodScreen_01_dual_v1_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_TripodScreen_01_dual_v2_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_TripodScreen_01_large_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_MultiScreenComputer_01_base_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

class Land_Laptop_03_base_F : Items_base_F
{
	ATTRIBUTES_MACRO
};

