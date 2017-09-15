#include "\a3\editor_f\Data\Scripts\dikCodes.h"

missionNamespace setvariable ["SHG_Buildmode",false,false];

SHG_buildMenuPos = 0;

SHG_buildMenuObjects = [];
{
SHG_buildMenuObjects pushback configName _x;
}foreach "true" configClasses (missionconfigFile >> "Cfg_SHG_Build");









[
"SHG Logi Buildcam",
"SHG_Logi_CamForward",
"Camera Forward",
{SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0,0.1,0])},
{},
[DIK_W,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_CamBack",
"Camera Backward",
{SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0,-0.1,0])},
{},
[DIK_D,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_CamRight",
"Camera Right",
{SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0.1,0,0])},
{},
[DIK_S,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_CamLeft",
"Camera Left",
{SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [-0.1,0,0])},
{},
[DIK_A,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_Camup",
"Camera Up",
{
SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0,0,0.1])
},
{},
[DIK_R,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_CamDown",
"Camera Down",
{
SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0,0,-0.1])
},
{},
[DIK_F,[false,false,false]],
true
] call CBA_fnc_addKeybind;



[
"SHG Logi Buildcam",
"SHG_Logi_Camup",
"Camera Up",
{SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0,0,0.1])},
{},
[DIK_R,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_CamDown",
"Camera Down",
{SHG_buildObj setPos (getpos SHG_buildObj vectorAdd [0,0,-0.1])},
{},
[DIK_F,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_EnterCam",
"Enter Build Camera",
{execVM "buildcam\enableBuildMode.sqf";},
{},
[DIK_F1,[false,false,false]],
true
] call CBA_fnc_addKeybind;

[
"SHG Logi Buildcam",
"SHG_Logi_ExitCam",
"Exit Build Camera",
{execVM "buildcam\disableBuildMode.sqf";},
{},
[DIK_F2,[false,false,false]],
true
] call CBA_fnc_addKeybind;
