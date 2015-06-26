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
if (_transportcraft == "C-17 Globemaster III") then {

		_counter = 0;
		_dynamic_index = 0;
		_cargo_usage = 0;

		while {_counter < _number_of_items} do {

		_cargo_factor_data_string = lbData [1507, _dynamic_index];
		_cargo_factor_data = call compile _cargo_factor_data_string;
		_cargofactor = _cargo_factor_data select 6;
		
		_counter = _counter + 1;
		_cargo_usage = _cargo_usage + _cargofactor;
		_dynamic_index = _dynamic_index + 1;
				
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

if (_transportcraft == "CH-47 Chinook") then {

	if (_number_of_items == 1) then { 
	_cargobar progressSetPosition 1.0; 
	_acceptbutton ctrlEnable true;
	};
	
	if (_number_of_items > 1) then {
	_cargobar ctrlSetTextColor [0.5, 0, 0, 1];
	_cargobar progressSetPosition 1.0;
	_acceptbutton ctrlEnable false;
	hint "The selected supply exceeds the maximum transport capacity of the selected transport vehicle!"; };
	};

if (_transportcraft == "Self Delivery (Jet)") then {

	if (_number_of_items > 0) then { 
	_cargobar progressSetPosition 1.0; 
	_acceptbutton ctrlEnable true;
	_cargobar ctrlSetTextColor [0.0, 0.5, 0, 1];
	};
};
