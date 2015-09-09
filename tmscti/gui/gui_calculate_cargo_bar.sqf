disableSerialization;

_display = findDisplay 5000;
_cargo_list = _display displayCtrl 1507;
_chosencraft = lbCurSel 2100;
_transportcraft = lbData [2100, _chosencraft];
_cargobar = _display displayCtrl 1008;
_number_of_items = lbSize 1507;
_acceptbutton = _display displayCtrl 1600;

_cargobar ctrlSetTextColor [0.456863,0.356863,0.119608,1];

if (_number_of_items < 1) then { 
	_cargobar progressSetPosition 0; 
	_acceptbutton ctrlEnable false;
	};

// C-17 Globemaster III cargo capacity = 6
if ((_transportcraft == "C-17 Globemaster III") or (_transportcraft == "D-41 Transport Ship")) then {

_cargo_usage = 0;
_counter = 0;
_dynamic_index = 0;
_vehicle_cargo = 0;
_box = 0;

while { _counter < _number_of_items } do {

	_item_factor_data_string = lbData [1507, _dynamic_index];
	_item_factor_data = call compile _item_factor_data_string;
	
	hint format ["supplykind: %1", _item_factor_data select 7];
	
	_supplykind = _item_factor_data select 7;
	_item_class_name = _item_factor_data select 1;
	_vehicle_cargo_factor = _item_factor_data select 6;
	
	_vehicle_cargo = _vehicle_cargo + _vehicle_cargo_factor;
				
	if ( _supplykind == "item" )  then {
		_box = 1;
				
		if (tms_master_gear_box canAdd _item_class_name) then {
			_box = _box;
		} else {
			_box = _box + 1;
			
			clearItemCargo tms_master_gear_box;
			clearMagazineCargo tms_master_gear_box;
			clearWeaponCargo tms_master_gear_box;
			clearBackpackCargo tms_master_gear_box;

			if ( isClass (configFile >> "CFGweapons" >> _item_class_name)) then {
				tms_master_gear_box addWeaponCargo [_item_class_name, 1] ; 
				} else {
			if ( isClass (configFile >> "CFGMagazines" >> _item_class_name)) then {
				tms_master_gear_box addMagazineCargo [_item_class_name, 1] ;
				} else {
				tms_master_gear_box additemCargo [_item_class_name, 1] ;};			
				};
		};

		_cargo_usage = _box + _vehicle_cargo;
		_counter = _counter + 1;
		_dynamic_index = _dynamic_index + 1;
		
		} else {
		
		_cargo_factor_data_string = lbData [1507, _dynamic_index];
		_cargo_factor_data = call compile _cargo_factor_data_string;
		_cargofactor = _cargo_factor_data select 6;
		
		_counter = _counter + 1;
		_cargo_usage = _cargo_usage + _cargofactor;
		_dynamic_index = _dynamic_index + 1;
		};
		
		if (_cargo_usage == 1) then { 
		_cargobar progressSetPosition 0.166;
		_acceptbutton ctrlEnable true;
		};

		if (_cargo_usage == 2) then {
		_cargobar progressSetPosition 0.333;
		_acceptbutton ctrlEnable true;
		};

		if (_cargo_usage == 3) then {
		_cargobar progressSetPosition 0.499;
		_acceptbutton ctrlEnable true;
		};

		if (_cargo_usage == 4) then {
		_cargobar progressSetPosition 0.666;
		_acceptbutton ctrlEnable true;
		};

		if (_cargo_usage == 5) then {
		_cargobar progressSetPosition 0.833;
		_acceptbutton ctrlEnable true;
		};

		if (_cargo_usage == 6) then {
		_cargobar progressSetPosition 1.0;
		_acceptbutton ctrlEnable true;
		};

		if (_cargo_usage > 6) then {
		_cargobar ctrlSetTextColor [0.5, 0, 0, 1];
		_cargobar progressSetPosition 1.0;
		_acceptbutton ctrlEnable false;
		hint "The selected supply exceeds the maximum transport capacity of the selected transport vehicle!"; };
	};		
		};


// CH-47 Chinook cargo capacity = 1
if (_transportcraft == "CH-47 Chinook") then {

_counter = 0;
_dynamic_index = 0;

while { _counter < _number_of_items } do {

		_item_factor_data_string = lbData [1507, _dynamic_index];
		_item_factor_data = call compile _item_factor_data_string;
		_supplykind = _item_factor_data select 7;
		_cargofactor = _item_factor_data select 6;
	if ( _supplykind == "item" ) then {
	
		_cargobar progressSetPosition 1.0;
		_acceptbutton ctrlEnable true;
		
		_counter = _number_of_items;
		
		_item_class_name = _item_factor_data select 1;
		if (tms_master_gear_box canAdd _item_class_name) then {
		_box1 = 1;
			} else {
			_cargobar ctrlSetTextColor [0.5, 0, 0, 1];
			_cargobar progressSetPosition 1.0;
			_acceptbutton ctrlEnable false;
			hint "Your selected items exceed the cargo space of the current supply box. The selected transport vehicle can not carry any more supply boxes!"; };
		
		} else {
		
		_counter = _counter + 1;
		_dynamic_index = _dynamic_index + 1;
		
	if (_number_of_items == 1) then { 
	_cargobar progressSetPosition 1.0; 
	_acceptbutton ctrlEnable true;
	};
	
	if ((_number_of_items > 1) or (_cargofactor > 2)) then {
	_cargobar ctrlSetTextColor [0.5, 0, 0, 1];
	_cargobar progressSetPosition 1.0;
	_acceptbutton ctrlEnable false;
	hint "The selected supply exceeds the maximum transport capacity of the selected transport vehicle!"; };
	
		};
		};
	};

// Self delivery (Jet)
if (_transportcraft == "Self Delivery (Jet)") then {

	if (_number_of_items > 0) then { 
	_cargobar progressSetPosition 1.0; 
	_acceptbutton ctrlEnable true;
	_cargobar ctrlSetTextColor [0.0, 0.5, 0, 1];
	};
};

// Self delivery (Helicopter)
if (_transportcraft == "Self Delivery (Helicopter)") then {

	if (_number_of_items > 0) then { 
	_cargobar progressSetPosition 1.0; 
	_acceptbutton ctrlEnable true;
	_cargobar ctrlSetTextColor [0.0, 0.5, 0, 1];
	};
};

_counter = 0;
_dynamic_index = 0;

while { _counter < _number_of_items } do {

	_item_factor_data_string = lbData [1507, _dynamic_index];
	_item_factor_data = call compile _item_factor_data_string;
	_gear = _item_factor_data select 1;

	_icon_v = getText (configFile / "CfgVehicles" / _gear / "picture");
	_icon_w = getText (configFile / "CfgWeapons" / _gear / "picture");

	_cargo_list lbSetPictureRight [_dynamic_index, _icon_v];
	_cargo_list lbSetPictureRight [_dynamic_index, _icon_w];	
	_cargo_list lbSetPictureRightColor [_dynamic_index, [1, 1, 1, 1]];
	
	_counter = _counter + 1;
	_dynamic_index = _dynamic_index + 1;
	
	};


