_object = _this;
_boundingBox = boundingBoxReal _object;
_centerModel = boundingCenter _object;

_buildingType = typeof _object;
deletevehicle _object;


//[[x1,y1,z1],[x2,y2,z2]]
_x1 = _boundingBox select 0 select 0;
_y1 = _boundingBox select 0 select 1;
_x2 = _boundingBox select 1 select 0;
_y2 = _boundingBox select 1 select 1;

_corner1Model = [_x1,_y1,0];
_corner2Model = [_x1,_y2,0];
_corner3Model = [_x2,_y1,0];
_corner4Model = [_x2,_y2,0];


_corner1 = _object modelToWorld _corner1Model;
_corner2 = _object modelToWorld _corner2Model;
_corner3 = _object modelToWorld _corner3Model;
_corner4 = _object modelToWorld _corner4Model;
_center = _object modelToWorld _centerModel;

_center set [2,-0.01];
_corner1 set [2,-0.01];
_corner2 set [2,-0.01];
_corner3 set [2,-0.01];
_corner4 set [2,-0.01];

_cornerPole1 = "pole_f" createVehicle _corner1;
_cornerPole2 = "pole_f" createVehicle _corner2;
_cornerPole3 = "pole_f" createVehicle _corner3;
_cornerPole4 = "pole_f" createVehicle _corner4;
_centerPole = "Land_RedWhitepole_f" createVehicle _center;

_materials = getArray (missionConfigFile >> "Cfg_SHG_Build" >> (typeOf _object)>> "materials");



_centerPole setVariable ["SHG_Build_Poles", [_centerPole,_cornerPole1,_cornerPole2,_cornerPole3,_cornerPole4], true];
_centerPole setVariable ["SHG_Build_Object",[_buildingType,_materials], true];


//this will be global executed







_cornerPole1 enableSimulation false;
_cornerPole2 enableSimulation false;
_cornerPole3 enableSimulation false;
_cornerPole4 enableSimulation false;
_centerPole enableSimulation false;
