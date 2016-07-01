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
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "UH-1Y Venom") then {
	[
		[["RHS_UH1Y_UNARMED_d", tms_current_supply_location_var, _items_ordered], "tmscti\delivery_methods\helicopter_slingload.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "CH-53E Super Stallion") then {
	[
		[["CUP_B_CH53E_USMC", tms_current_supply_location_var, _items_ordered], "tmscti\delivery_methods\helicopter_slingload.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "Ka-60 Kasatka") then {
	[
		[["rhs_ka60_c", tms_current_supply_location_var, _items_ordered], "tmscti\delivery_methods\helicopter_slingload.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "Mil Mi-8MT") then {
	[
		[["RHS_Mi8mt_vvsc", tms_current_supply_location_var, _items_ordered], "tmscti\delivery_methods\helicopter_slingload.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "Mil Mi-6") then {
	[
		[["CUP_O_MI6A_RU", tms_current_supply_location_var, _items_ordered], "tmscti\delivery_methods\helicopter_slingload.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "C-17 Globemaster III") then {
	[
		[["USAF_C17", tms_current_supply_location_var, _items_ordered, tms_cargoplane_c17], "tmscti\delivery_methods\deliver_by_cargoplane.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "AN-22 Antei") then {
	[
		[["Sab_an22_2", tms_current_supply_location_var, _items_ordered, tms_cargoplane_an22], "tmscti\delivery_methods\deliver_by_cargoplane.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "Self Delivery (Airplane)") then {
	// TODO Check that this is really an airplane class name
	_airplane_data_var = _items_ordered select 0;
	_airplane_data = call compile _airplane_data_var;
	_airplane_class_name = _airplane_data select 1;
	[
		[[_airplane_class_name, tms_current_supply_location_var], "tmscti\delivery_methods\airplane_self_delivery.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

// NOTE: Helicopters need a helipad (invisible) placed in the editor in addition to the waypoint marker!
if (_transportcraft == "Self Delivery (Helicopter)") then {
	_helicopter_data_var = _items_ordered select 0;
	_helicopter_data = call compile _helicopter_data_var;
	_helicopter_class_name = _helicopter_data select 1;
	[
		[[_helicopter_class_name, tms_current_supply_location_var], "tmscti\delivery_methods\helicopter_self_delivery.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
	};

if (_transportcraft == "Self Delivery (Amphibian)") then {
	// TODO Check that this is really an amphibian vehicle
	_vehicle_data_var = _items_ordered select 0;
	_vehicle_data = call compile _vehicle_data_var;
	_vehicle_class_name = _vehicle_data select 1;
	[
		[[_vehicle_class_name, tms_current_supply_location_var], "tmscti\delivery_methods\amphibian_self_delivery.sqf"],
		"BIS_fnc_execVM",
		false,
		false
	] call BIS_fnc_MP;
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

		if (_supplykind == "gear") then {
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
