

if (!SHG_Buildmode) then {
_startPosition = getpos Player;
_startPosition set [2, 25];
_camera = "camera" camcreate _startPosition;


_cursorBuildObject = "Sign_Arrow_F" createVehicleLocal getpos Player;

_camera attachto [_cursorBuildObject,[0,-25,15]];
 _camera cameraEffect ["internal", "back"];
 _camera camSetTarget _cursorBuildObject;
 _camera camsetrelpos [25, 0, 15];
 showcinemaborder false;
  _camera camCommit 0;
 SHG_buildCamera = _camera;
 SHG_buildObj = _cursorBuildObject;
 SHG_buildCamX = 0;
 SHG_buildCamY = -25;
 missionNamespace setvariable ["SHG_Buildmode",true,false];
 };