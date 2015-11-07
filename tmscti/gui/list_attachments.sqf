_index = lbCurSel 1502;
_supply_item_data_string = lbData [1502, _index];
_supply_item_data = call compile _supply_item_data_string;

_weapon = _supply_item_data select 1;

_wpnrails = [_weapon, 301] call CBA_fnc_compatibleItems;
_wpnscopes = [_weapon, 201] call CBA_fnc_compatibleItems;
_wpnsuppressors = [_weapon, 101] call CBA_fnc_compatibleItems;
_wpnbipods = [_weapon, 302] call CBA_fnc_compatibleItems;
_muzzlearray = getArray (configFile >> "CfgWeapons" >> _weapon >> "muzzles");
_ubl_magazines = getArray (configFile >> "CfgWeapons" >> _weapon >> _muzzlearray select 1 >> "magazines");
_magazines = (configFile >> "CfgWeapons" >> _weapon >> "magazines") call BIS_fnc_getCfgData;

//Optics&Scopes
_number_of_optics = count _wpnscopes;
_counter = 0;
_selected_index = 0;
_display = findDisplay 5000;
_scopelist = _display displayCtrl 1503;
_scans = 0;
_selected_optic = 0;
_number_of_optics_in_variable = count tms_supply_optics_objects;

lbClear _scopelist;

_scopelist lbAdd "Iron sights (None)";

while {_counter < _number_of_optics} do {
	_scans = 0;
	_scanned_index = (_wpnscopes select _counter);

	while {_scans < _number_of_optics_in_variable} do {
		_item = (tms_supply_optics_objects select _scans) select 1;

		if (_scanned_index == _item) then {
			_item = tms_supply_optics_objects select _scans;
			_item_string = str _item;
			_entry = _scopelist lbAdd (_item select 0);
			_scopelist lbSetData [_entry, _item_string];
			_scans = _number_of_optics_in_variable; //Stops the search for this specific attachment, because it has already been found.
			} else {

				_scans = _scans + 1;
				};
			};
			_counter = _counter + 1;
		};

//Rail Objects
_number_of_robjects = count _wpnrails;
_counter = 0;
_display = findDisplay 5000;
_robjectslist = _display displayCtrl 1504;
_scans = 0;
_number_of_robjects_in_variable = count tms_supply_railobject_objects;

lbClear _robjectslist;

_robjectslist lbAdd "No Rail Object";

while {_counter < _number_of_robjects} do {
	_scans = 0;
	_scanned_index = (_wpnrails select _counter);

	while {_scans < _number_of_robjects_in_variable} do {
		_item = (tms_supply_railobject_objects select _scans) select 1;

		if (_scanned_index == _item) then {
			_item = tms_supply_railobject_objects select _scans;
			_item_string = str _item;
			_entry = _robjectslist lbAdd (_item select 0);
			_robjectslist lbSetData [_entry, _item_string];
			_scans = _number_of_robjects_in_variable; //Stops the search for this specific attachment, because it has already been found.
			} else {
				_scans = _scans + 1;
				};
			};
			_counter = _counter + 1;
		};

//Bipods
_number_of_bipods = count _wpnbipods;
_counter = 0;
_display = findDisplay 5000;
_bipodlist = _display displayCtrl 1505;
_scans = 0;
_number_of_bipods_in_variable = count tms_supply_bipod_objects;

lbClear _bipodlist;

_bipodlist lbAdd "No Bipod";

while {_counter < _number_of_bipods} do {
	_scans = 0;
	_scanned_index = (_wpnbipods select _counter);
	while {_scans < _number_of_bipods_in_variable} do {
	_item = (tms_supply_bipod_objects select _scans) select 1;

	if (_scanned_index == _item) then {
	_item = tms_supply_bipod_objects select _scans;
	_item_string = str _item;
	_entry = _bipodlist lbAdd (_item select 0);
	_bipodlist lbSetData [_entry, _item_string];
	_scans = _number_of_bipods_in_variable; //Stops the search for this specific attachment, because it has already been found.
	} else {
		_scans = _scans + 1;
		};
	};
	_counter = _counter + 1;
};  

//Silencer
_number_of_silencers = count _wpnsuppressors;
_counter = 0;
_display = findDisplay 5000;
_silencerlist = _display displayCtrl 1506;
_scans = 0;
_number_of_silencers_in_variable = count tms_supply_silencer_objects;

lbClear _silencerlist;

_silencerlist lbAdd "No Silencer";

while {_counter < _number_of_silencers} do {
	_scans = 0;
	_scanned_index = (_wpnsuppressors select _counter);

	while {_scans < _number_of_silencers_in_variable} do {
		_item = (tms_supply_silencer_objects select _scans) select 1;

		if (_scanned_index == _item) then {
		_item = tms_supply_silencer_objects select _scans;
		_item_string = str _item;
		_entry = _silencerlist lbAdd (_item select 0);
		_silencerlist lbSetData [_entry, _item_string];
		_scans = _number_of_silencers_in_variable; //Stops the search for this specific attachment, because it has already been found.
		} else {
			_scans = _scans + 1;
			};
		};
		_counter = _counter + 1;
	};

//Magazines
_number_of_magazines = count _magazines;
_counter = 0;
_display = findDisplay 5000;
_magazinelist = _display displayCtrl 1508;
_scans = 0;
_number_of_magazines_in_variable = count tms_supply_magazine_objects;

lbClear _magazinelist;

_magazinelist lbAdd "No Ammo";

while {_counter < _number_of_magazines} do {
	_scans = 0;
	_scanned_index = (_magazines select _counter);

	while {_scans < _number_of_magazines_in_variable} do {
		_item = (tms_supply_magazine_objects select _scans) select 1;

		if (_scanned_index == _item) then {
		_item = tms_supply_magazine_objects select _scans;
		_item_string = str _item;
		_entry = _magazinelist lbAdd (_item select 0);
		_magazinelist lbSetData [_entry, _item_string];
		_scans = _number_of_magazines_in_variable; //Stops the search for this specific attachment, because it has already been found.
		} else {
			_scans = _scans + 1;
			};
		};
		_counter = _counter + 1;
	};

//Under Barrel Magazines

if (isNil "_ubl_magazines") then {
	} else {
	_number_of_ubl_magazines = count _ubl_magazines;
	_counter = 0;
	_display = findDisplay 5000;
	_magazinelist = _display displayCtrl 1508;
	_scans = 0;
	_number_of_ubl_magazines_in_variable = count tms_supply_magazine_objects;

	while {_counter < _number_of_ubl_magazines} do {
		_scans = 0;
		_scanned_index = (_ubl_magazines select _counter);

		while {_scans < _number_of_ubl_magazines_in_variable} do {
			_item = (tms_supply_magazine_objects select _scans) select 1;

			if (_scanned_index == _item) then {
				_item = tms_supply_magazine_objects select _scans;
				_item_string = str _item;
				_entry = _magazinelist lbAdd (_item select 0);
				_magazinelist lbSetData [_entry, _item_string];
				_scans = _number_of_ubl_magazines_in_variable; //Stops the search for this specific attachment, because it has already been found.
				} else {
					_scans = _scans + 1;
					};
				};
				_counter = _counter + 1;
			};
		};