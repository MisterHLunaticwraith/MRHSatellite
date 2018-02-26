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
