#define mag_xx(a,b) class _xx_##a {magazine = a; count = b;}
#define weap_xx(a,b) class _xx_##a {weapon = a; count = b;}
#define item_xx(a,b) class _xx_##a {name = a; count = b;}
#define backPack_xx(a,b) class _xx_##a {backpack = a; count = b;}

class Box_NATO_Ammo_F;
class MRH_SAT_protectiveCase : Box_NATO_Ammo_F
{
    displayName = $STR_MRH_SAT_ObjectsCrate;
    editorCategory = "EdCat_MRH_Sat";
    editorSubcategory = "EdSubcat_MRH_Objects";
	model = "\MRHSatellite\Models\Case\protectiveCase.p3d";
	editorPreview = "\MRHSatellite\Models\Case\protectiveCase.jpg";
    class TransportWeapons{};
	class TransportMagazines{};
	class TransportItems{
		item_xx(MRH_FoldedSatcomAntenna,4);
		item_xx(MRH_TacticalDisplay,4);
		item_xx(MRH_BluForTransponder,20);
	};
	class TransportBackpacks{
		backPack_xx(B_Carryall_satellite,2);
	};
};