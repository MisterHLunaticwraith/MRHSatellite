class Bag_Base;

class B_Carryall_Base;
	class B_Carryall_satellite: B_Carryall_Base
	{
		access=1;
		scope=2;
		displayName= $STR_MRH_SATELLITEBAGDISPLAYNAME;
		hiddenSelectionsTextures[]=
		{
			"\A3\weapons_f\ammoboxes\bags\data\backpack_tortila_oli_co.paa"
		};
		picture="\A3\Weapons_F\Ammoboxes\Bags\data\UI\icon_B_C_Tortila_oucamo.paa";
		editorPreview="\A3\EditorPreviews_F\Data\CfgVehicles\Default\Prop.jpg";
		editorSubcategory="EdSubcat_Backpacks";
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