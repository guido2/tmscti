/*
This script is to be run on the server side only.

It will activate the given area control installation, marking the town it stands in
as taken over by this side and generating victory points.

Parameters:

0: area control installation in question
1: the side which is activating it
*/

if(isServer) then
    {
    _installation = _this select 0;
    _side = _this select 1;

    _town_center_object = [position _installation, town_center_objects] call tms_get_nearest_object;
    if (!(isNil '_town_center_object' or (_town_center_object distance _installation) > 100)) then {
        _installation setVariable ["active", true, true];

        _old_side = _town_center_object getVariable "side";
        if (_old_side == resistance or _old_side == _side) then {
            if (_old_side == resistance) then {
                _town_center_object setVariable ["side", _side];
                [
                    format ["Town %1 has been taken over by side %2", _town_center_object getVariable "town_name", _side],
                    "systemChat",
                    true,
                    false
                ] call BIS_fnc_MP;
                };

            waitUntil {!isNil 'victory_locations'};
            victory_locations pushBack _installation;
            
            _area_control_installations = _town_center_object getVariable "area_control_installations";
            if (isNil '_area_control_installations') then {
                _area_control_installations = [];
                };
            _area_control_installations pushBack _installation;
            _town_center_object setVariable ["area_control_installations", _area_control_installations];
            };
        if (_old_side != resistance and _old_side != _side) then {
            // TODO
            };
        };
		
	_supply_location = call compile ([position _installation] call tms_get_nearest_supply_location);
	_supply_location_position = getMarkerPos (_supply_location select 1);
	if (!(isNil '_supply_location' or (_supply_location_position distance _installation) > 100)) then {
		// TODO: Check if the enemy has got any area control installations of their own in range, mark the location as contested if yes
		_supply_location set [5, _side];
		};
    }
else {
    hint "Tried to run server-side only function on non-server";
    };
