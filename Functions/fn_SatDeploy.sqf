#include "MRH_components.hpp"

params ["_sourceBag"];
player setVariable ["SourceBag", _sourceBag];
_SourceBagPos = getPos _sourceBag;
player setVariable ["SourceBagPos", _SourceBagPos];
_1 = localize "STR_MRH_DEPLOYING";
if !(HASACE3) then { [] spawn {
_1 = localize "STR_MRH_DEPLOYING";
hint _1;
sleep 1;
hint ".";
sleep 1;
hint _1;
sleep 1;
hint "..";
sleep 1;
hint _1;
sleep 1;
hint "...";
sleep 1;
hint _1;
sleep 1;
hint _1;
sleep 1;
hint "....";
sleep 1;
hint _1;
sleep 1;
hint "....";
sleep 1;
call MRH_fnc_SatDeployed;

};}

else {
_progress =
[10, 
[],
{call MRH_fnc_SatDeployed;
},
{hint (localize "STR_MRH_DEPLOYCANCELLED");},
_1


] call ace_common_fnc_progressBar;
};