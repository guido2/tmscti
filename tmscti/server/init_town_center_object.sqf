/*
This function will initialize a town center object. It is supposed to be called by
the init function of those objects.
The object can be anything that can be placed on the map and can have an init
parameter. (That means no markers, unfortunately, since those cannot have an init
parameter.)
*/

_town_center_object = _this select 0;
_town_name = _this select 1;

if(isServer) then {
    waitUntil {!isNil 'town_center_objects'};

    _town_center_object setVariable ["side", resistance];
    _town_center_object setVariable ["town_name", _town_name];
    systemChat format ["In init_town_center_object.sqf, town_center_objects: %1", town_center_objects];
    town_center_objects pushBack _town_center_object;
    systemChat format ["town_center_objects now: %1", town_center_objects];
    };
