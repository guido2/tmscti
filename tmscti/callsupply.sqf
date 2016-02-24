disableSerialization;

hint "Your selected supply is on the way";

_transportcraft_index = lbCurSel 2100;
_transportcraft = lbData [2100, _transportcraft_index];

// TODO Get rid of magic numbers
_num_items = lbSize 1507;

_items_ordered = [];
for "_i" from 0 to (_num_items - 1) do {
	_items_ordered pushBack lbData [1507, _i];
	};

if (_transportcraft == "CH-47 Chinook") then {
	[
		[["RHS_CH_47F", tms_current_supply_location_var, _items_ordered], "tmscti\delivery_methods\helicopter_slingload.sqf"],
		"BIS_fnc_execVM",
		true,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "C-17 Globemaster III") then {
	_spawnpos = getmarkerpos "sp_e";

	_number_of_items = lbSize 1507;
	_transportcapacity = 6;

	_counter = 0;
	_dynamic_index = 0;
	_totalcargofactor = 0;
	_boxfactor = 0;

	_cargobox = createVehicle ["B_supplyCrate_F", _spawnpos, [], 0, "NONE"];

	clearItemCargoGlobal _cargobox;
	clearMagazineCargoGlobal _cargobox;
	clearWeaponCargoGlobal _cargobox;
	clearBackpackCargoGlobal  _cargobox;

	while {_counter < _number_of_items} do {
		_cargo_factor_data_string = lbData [1507, _dynamic_index];
		_cargo_factor_data = call compile _cargo_factor_data_string;
		_cargofactor = _cargo_factor_data select 6;
		_supplykind = _cargo_factor_data select 7;
		_item_class_name = _cargo_factor_data select 1;

		if (_supplykind == "item") then {
			if ( isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
				_cargobox addWeaponCargoGlobal [_item_class_name, 1] ;
				}
			else {
				if (isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
					_cargobox addMagazineCargoGlobal [_item_class_name, 1];
					}
				else {
					_cargobox additemCargoGlobal [_item_class_name, 1];
					};
				};

			_boxfactor = 1;
			};

		_totalcargofactor = _totalcargofactor + _cargofactor;

		_dynamic_index = _dynamic_index + 1;
		_counter = _counter + 1;
		};

	_totalcargofactor = _totalcargofactor + _boxfactor;

	if (_totalcargofactor <= _transportcapacity) then {
		_transC17 = createVehicle ["USAF_C17", getMarkerPos "sp_e", [], 0, "FLY"];
		createVehicleCrew (_transC17);

		_cargo_bay = 0;

		while {_cargo_bay < _dynamic_index} do {
			_cargo_factor_data_string = lbData [1507, _cargo_bay];
			_cargo_factor_data = call compile _cargo_factor_data_string;
			_supplykind = _cargo_factor_data select 7;

			if (_supplykind == "vehicle") then {
				_supply_item_data_string = lbData [1507, _cargo_bay];
				_supply_item_data = call compile _supply_item_data_string;
				_cargo_classname = _supply_item_data select 1;

				_cargo = _cargo_classname createVehicle getmarkerpos "vehiclespawn";
				_cargo setPosASL [_spawnpos select 0, _spawnpos select 1, 195];
				[_transC17, _cargo] call Lala_C17_fnc_forceLoadCargo;
				};
			_cargo_bay = _cargo_bay + 1;
			};

		if ( _boxfactor > 0 ) then {
			[_transC17, _cargobox] call Lala_C17_fnc_forceLoadCargo;
			}
		else {
			deleteVehicle _cargobox;
			};

		_transC17 setVehicleLock "LOCKED";
		_groupc17 = group _transC17;
		_groupc17 setBehaviour "CARELESS";

		_transC17 landAt 5;

		[[(driver _transC17), "C-17 Transport approaching sand airfield, clear runway!"], "sideChat", west, false, false] call BIS_fnc_MP;

		_transC17 addEventHandler ["LandedStopped", {
			hint "Your supply has arrived";
			{deleteVehicle _x} forEach crew (_this select 0);
			(_this select 0) addAction ["<t color='#FFFF00'>Return C-17 to home base</t>", {
				_transC17 = _this select 0;
				createVehicleCrew _transC17;
				_transC17 animate ["back_ramp", 0];
				_transC17 animate ["back_ramp_st", 0];
				_transC17 animate ["back_ramp_p", 0];
				_transC17 animate ["back_ramp_p_2", 0];
				_transC17 animate ["back_ramp_door_main", 0];

				[[(driver _transC17), "C-17 Transport RTB - clear taxi- and runway!"], "sideChat", west, false, false] call BIS_fnc_MP;
				_grpC17 = group _transC17;
				_wp0 =_grpC17 addWaypoint [getMarkerPos "sp_e", 0];
				_wp0 setWaypointType "MOVE";
				_wp0 setWaypointSpeed "FULL";
				_wp0 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
				}];
			}];

		}
	else {
		hint "The selected supply exceeds the maximum transport capacity of the selected transport vehicle!"
		};
	};

if (_transportcraft == "Self Delivery (Jet)") then {
	_supply_item_data_string = lbData [1507, 0];
	_supply_item_data = call compile _supply_item_data_string;
	_jet_classname = _supply_item_data select 1;
	_jet = CreateVehicle [_jet_classname, getMarkerPos "sp_e", [], 0, "FLY"];
	createVehicleCrew (_jet);

	_groupjet = group _jet;
	_groupjet setBehaviour "CARELESS";

	_jet landAt 5;

	[[(driver _jet), "Aircraft approaching sand airfield, clear runway!"], "sideChat", west, false, false] call BIS_fnc_MP;

	_jet addEventHandler ["LandedStopped", {
		hint "Your supply has arrived";
		{deleteVehicle _x} forEach crew (_this select 0);
		}];
	};

// NOTE: Helicopters need a helipad (invisible) placed in the editor in addition to the waypoint marker!
if (_transportcraft == "Self Delivery (Helicopter)") then {
	_supply_item_data_string = lbData [1507, 0];
	_supply_item_data = call compile _supply_item_data_string;
	_helicopter_classname = _supply_item_data select 1;
	_helicopter = CreateVehicle [_helicopter_classname, getMarkerPos "sp_e", [], 0, "FLY"];
	createVehicleCrew (_helicopter);

	_land_pos = getmarkerpos "helipad1"; // TODO: Get the correct point

	_grouphelicopter = group _helicopter;
	_grouphelicopter setBehaviour "CARELESS";

	_helicopter addEventHandler ["Engine", {
		hint "Your supply has arrived";
		{deleteVehicle _x} forEach crew (_this select 0);
		_this select 0 removeAllEventHandlers "Engine";
		}];

	_wp0 = _grouphelicopter addWaypoint [_land_pos, 0];
	_wp0 setWaypointType "MOVE";
	_wp0 setWaypointCompletionRadius 0.1;
	_wp0 setWaypointSpeed "FULL";
	_wp0 setWaypointStatements ["true", "(vehicle this) land 'land'"];
	};

if (_transportcraft == "D-41 Transport Ship") then {
	_rp0 = getMarkerpos "shipwp0"; // TODO: Get the correct port
	_rp1 = getMarkerpos "shipwp1"; // TODO: Get the correct port
	_rp2 = getMarkerpos "shipwp2"; // TODO: Get the correct port
//	_spawnpos = getMarkerpos "sp_s";
	_spawnpos = getMarkerpos "shipwp2";
	_port = getMarkerPos "port1";

	_number_of_items = lbSize 1507;
	_transportcapacity = 6;
	_counter = 0;
	_dynamic_index = 0;
	_totalcargofactor = 0;
	_boxfactor = 0;

	_cargobox = createVehicle ["B_supplyCrate_F", _spawnpos, [], 0, "NONE"];

	clearItemCargoGlobal _cargobox;
	clearMagazineCargoGlobal _cargobox;
	clearWeaponCargoGlobal _cargobox;
	clearBackpackCargoGlobal _cargobox;

	while {_counter < _number_of_items} do {
		_cargo_factor_data_string = lbData [1507, _dynamic_index];
		_cargo_factor_data = call compile _cargo_factor_data_string;
		_cargofactor = _cargo_factor_data select 6;
		_supplykind = _cargo_factor_data select 7;
		_item_class_name = _cargo_factor_data select 1;

		if (_supplykind == "item") then {
			if ( isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
				_cargobox addWeaponCargoGlobal [_item_class_name, 1] ;
				}
			else {
				if ( isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
					_cargobox addMagazineCargoGlobal [_item_class_name, 1] ;
					}
				else {
					_cargobox additemCargoGlobal [_item_class_name, 1] ;
					};
				};

			_boxfactor = 1;
			};

		_totalcargofactor = _totalcargofactor + _cargofactor;

		_dynamic_index = _dynamic_index + 1;
		_counter = _counter + 1;
		};

	_totalcargofactor = _totalcargofactor + _boxfactor;

	if ( _totalcargofactor <= _transportcapacity ) then {
		_trawler = createVehicle ["D41_Trawler", _spawnpos, [], 0, "NONE"];
		createVehicleCrew (_trawler);
		_grouptrawler = group _trawler;
		_grouptrawler setBehaviour "CARELESS";

		_trawler addEventHandler ["Fuel", {
		hint "Your supply has arrived";
		(_this select 0) addAction ["<t color='#FFFF00'>Unload Cargo</t>",
			"tmscti\trawler_unload_cargo.sqf", [_trawler, _spawnpos]
			//vehicle this - getMarkerPos 'sp_s'
			];
		(_this select 0) addAction ["<t color='#FFFF00'>Return D-41 Transport Ship to Base</t>", {
			_trawler = _this select 0;
			_grptrawler = group _trawler;

			_spawnpos = getMarkerpos "shipwp2";

			_counter = 0;

			_wpx = _spawnpos select 0;
			_wpy = _spawnpos select 1;
			_wpz = _spawnpos select 2;

			_trawlerposition = getPos _trawler;

			_tpx = _trawlerposition select 0;
			_tpy = _trawlerposition select 1;
			_tpz = _trawlerposition select 2;

			hint format ["WP= %1, TP= %2", _spawnpos, _trawlerposition];

			while {_counter < 100000} do {
				if ( _tpx < _wpx ) then {
					_tpx = _tpx + 0.0015;
					}
				else {
					_tpx = _tpx - 0.0015;
					};

				if ( _tpy < _wpy ) then {
					_tpy = _tpy + 0.0015;
					}
				else {
					_tpy = _tpy - 0.0015;
					};
				_trawler setPos [ _tpx, _tpy, _tpz];

				_counter = _counter + 1;
				};

			_trawler setFuel 1;

			_wp0 =_grptrawler addWaypoint [getMarkerPos "sp_s", 0];
			_wp0 setWaypointType "MOVE";
			_wp0 setWaypointSpeed "FULL";
			_wp0 setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh];"];
			}];
		}];

	_cargo_bay = 0;
	_cycle = 0;
	_dynamicslot = 0;
	_dynamicslotS = 0;
	_dynamicslotL = 0;

	while {_cargo_bay < _dynamic_index} do {
		_cargo_factor_data_string = lbData [1507, _cargo_bay];
		_cargo_factor_data = call compile _cargo_factor_data_string;
		_supplykind = _cargo_factor_data select 7;
		_cargovalue = _cargo_factor_data select 6;

		if (_supplykind == "vehicle") then {
			_supply_item_data_string = lbData [1507, _cargo_bay];
			_supply_item_data = call compile _supply_item_data_string;
			_cargo_classname = _supply_item_data select 1;

			_cargoslots = [[0,-7.8,-0.5], [0,-16,-1], [0,-0.25,0], [1.75,16,-0.5], [-1.5,18,-0.3], [0,19.8,-0.3]];
			_cargopos = _cargoslots select _dynamicslot;
			_cargoslotsS = [[1.75,16,-0.5], [-1.5,18,-0.3], [0,19.8,-0.3]];
			_cargoposS = _cargoslotsS select _dynamicslotS;
			_cargoslotsL = [[0,-7.8,-0.5], [0,-16,-1], [0,-0.25,0]];
			_cargoposL = _cargoslotsL select _dynamicslotL;

			_cargo = _cargo_classname createVehicle getmarkerpos "vehiclespawn";

			if ( _number_of_items < 3 ) then {
				_cargo attachTo [_trawler, _cargopos];
				if (_dynamicslot == 1) then {
					_cargo setVectorDirAndUp [[0,0.8,0.2],[0,-0.2,0.8]];
					};
				if ( _dynamicslot == 2 ) then {
					_cargo setVectorDirAndUp [[1,0,0],[0,0,1]];
					};
				_dynamicslot = _dynamicslot + 1;
				};

			if (_number_of_items == 3 ) then {
				if (_cargovalue > 2) then {
					_cargo attachTo [_trawler, _cargoposS];
					_dynamicslotS = _dynamicslotS + 1;
					}
				else {
					_cargo attachTo [_trawler, _cargoposL];
					if (_dynamicslotL == 1) then {
						_cargo setVectorDirAndUp [[0,0.8,0.2],[0,-0.2,0.8]];
						};
					if (_dynamicslotL == 2) then {
						_cargo setVectorDirAndUp [[1,0,0],[0,0,1]];
						};
					_dynamicslotL = _dynamicslotL + 1;
					};
				};

			if ( _number_of_items > 4 ) then {
				if (_cargovalue > 1) then {
					_cargo attachTo [_trawler, _cargopos];
					_dynamicslot = _dynamicslot + 1;
					};
				if ((_cargovalue == 1) and (_dynamicslotS < 4)) then {
					_cargo attachTo [_trawler, _cargoposS];
					_dynamicslotS = _dynamicslotS + 1;
					}
				else {
					_cargo attachTo [_trawler, _cargopos];
					if (_dynamicslot == 1) then {
						_cargo setVectorDirAndUp [[0,0.8,0.2],[0,-0.2,0.8]];
						};
					if (_dynamicslot == 2) then {
						_cargo setVectorDirAndUp [[1,0,0],[0,0,1]];
						};
					_dynamicslot = _dynamicslot + 1;
					};
				};
			};

		_cargo_bay = _cargo_bay + 1;
		_cycle = _cycle + 1;
		};
	
	if (_boxfactor > 0 ) then {
		_dynamicslotS = 2;
		_cargoslotsS = [[1.75,16,-0.5], [-1.5,18,-0.3], [0,19.8,-0.3]];
		_cargoposS = _cargoslotsS select _dynamicslotS;

		_cargobox attachTo [_trawler, _cargoposS];
		}
	else {
		deleteVehicle _cargobox;
		};

	_trawler setVehicleLock "LOCKED";

//	_wp0 = _grouptrawler addWaypoint [_rp0, 0];
//	_wp0 setWaypointType "MOVE";
//	_wp0 setWaypointCompletionRadius 0;
//  _wp0 setWaypointSpeed "FULL";

//	_wp1 = _grouptrawler addWaypoint [_rp1, 0];
//	_wp1 setWaypointType "MOVE";
//	_wp1 setWaypointCompletionRadius 0;
//	_wp1 setWaypointSpeed "FULL";

//	_wp2 = _grouptrawler addWaypoint [_rp2, 0];
//	_wp2 setWaypointType "MOVE";
//	_wp2 setWaypointCompletionRadius 0;
//	_wp2 setWaypointSpeed "FULL";

	_wp3 = _grouptrawler addWaypoint [_port, 0];
	_wp3 setWaypointType "MOVE";
	_wp3 setWaypointCompletionRadius 0;
	_wp3 setWaypointSpeed "FULL";
	_wp3 setWaypointStatements ["true", "vehicle this setFuel 0;"];
	}
else {
	hint "The selected supply exceeds the maximum transport capacity of the selected transport vehicle!"};
	};

_display = findDisplay 5000;
_display closeDisplay 1; 
