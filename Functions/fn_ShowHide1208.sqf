params ["_show"];
switch (true) do {
case _show : {
ctrlshow [1231,true];
ctrlshow [1204,true];
ctrlshow [1205,true];
ctrlshow [1206,true];
ctrlshow [1207,true];
ctrlshow [1202,true];
ctrlshow [1209,true];
};
case !_show : {
ctrlshow [1231,false];
ctrlshow [1204,false];
ctrlshow [1205,false];
ctrlshow [1206,false];
ctrlshow [1207,false];
ctrlshow [1202,false];
ctrlshow [1209,false];
};
};