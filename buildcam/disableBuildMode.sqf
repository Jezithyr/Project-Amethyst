SHG_buildCamera cameraeffect ["terminate","top"];

if (SHG_Buildmode) then {
deleteVehicle SHG_buildObj;
missionNamespace setvariable ["SHG_Buildmode",false,false];
};