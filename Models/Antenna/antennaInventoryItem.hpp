class MRH_FoldedSatcomAntenna: CBA_MiscItem
{
	author = "Mr H.";
	displayName = "Trivec Avant SATCOM Antenna (Folded)";
	model = "\MRHSatellite\Models\Antenna\antennaFOLDED.p3d";
	scope = 2;      
	scopeArsenal = 2;
	scopeCurator = 2;
	 //simulation= "ItemMineDetector"
	editorCategory = "EdCat_Equipment";
	editorPreview = "\A3\EditorPreviews_F\Data\CfgVehicles\Default\Prop.jpg";
	editorSubcategory = "EdSubcat_InventoryItems";
	picture = "\MRHSatellite\Models\Antenna\antennaInvIcon.paa";
	descriptionShort = "SATCOM Antenna, used to get satellite signal";
	//type = 0;
	ace_arsenal_hide = 0;
	class ItemInfo: CBA_MiscItem_ItemInfo
			{
				mass=50;//en lb*10
			};

};
