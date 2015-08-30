//Burnes15th's LCAC vehicle unload script by Madopow2110 v2 
//
//Usage:
//
//_nul = [lcac] execVM "lcac-unload.sqf";
//
//
//Notes:
//Place vehicles in middle of LCAC map icon with elevation set to 4 then use (vehicle attachTo [lcac];) to attach vehicle
//to LCAC so it doesnt explode, execute this script on an LCAC's move waypoint placed just over shoreline and set to
//careless behavior and full speed. LCAC will automatically return to water after disembarkation so additonal waypoints
//are accepted.


//Define Vars
_ship = _this select 0;
_cargo = attachedObjects _ship;


//Eject Vehicles/freeze LCAC

sleep 2.5;
_ship enablesimulation false;
sleep 1.5;
_ship setVelocity [0,0,0];
{_x setVelocity [0,0,0];} forEach _cargo;

_shipdir = getDir _ship;
{detach _x;} forEach _cargo;
{_x disableAI "MOVE";} forEach _cargo;
{_x disableAI "ANIM";} forEach _cargo;


_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) -0.2];
sleep 0.1;
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) -0.2];
sleep 0.1;
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) -0.2];
sleep 0.1;
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) -0.2];
sleep 0.1;
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) -0.2];
sleep 0.1;
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) -0.2];
sleep 2;

//Vehicle Exit

{_x setDir _shipdir} forEach _cargo;
sleep 0.1;
{_x setDir _shipdir} forEach _cargo;
{_x setVelocity [(vectorDir _x select 0)*30,(vectorDir _x select 1)*20,(vectorDir _x select 2)*30];} forEach _cargo;
sleep 0.1;
{_x setDir _shipdir} forEach _cargo;
{_x setVelocity [(vectorDir _x select 0)*30,(vectorDir _x select 1)*20,(vectorDir _x select 2)*30];} forEach _cargo;
sleep 2;
{_x enableAI "MOVE";} forEach _cargo;
{_x enableAI "ANIM";} forEach _cargo;


//Wait period - can be changed if period is too short/long
sleep 30; 

//Clear Cargo Var
_cargo = 0;
_shipdir = 0;

//Release LCAC
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) +1.2];
_ship enablesimulation true;
_ship setPos [getPos _ship select 0, getPos _ship select 1, (getPos _ship select 2) +0.6];
_ship setVelocity [(vectorDir _ship select 0)*-20,(vectorDir _ship select 1)*-20,(vectorDir _ship select 2)*-20];

//Clear Ship Var
_ship = 0;