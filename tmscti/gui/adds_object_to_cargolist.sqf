disableSerialization;

_row = lbCurSel 1502;
_supply = lbData [1502, _row];

_cargolist = lbAdd [1507, _row];

hint format ["Inhalt: %1", _supply];