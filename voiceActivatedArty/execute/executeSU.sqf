
// Surgical execute
execVM "voiceActivatedArty\clearKeyDowns.sqf";

_lat = _this select 0;
_lon = _this select 1;
_pos = [_lat, _lon];

// createMarker
deleteMarker "gun1";
_marker1 = createMarker ["gun1", _pos];
_marker1 setMarkerShapeLocal "ELLIPSE";
_marker1 setMarkerColorLocal "ColorRed";
_marker1 setMarkerSizeLocal [100, 100];
_marker1 setMarkerAlphaLocal 0.9;

// function
RGG_callArty1 = {
	
	numericalInput = false;
	// sleep 15;
	// systemChat "HE x 25 inbound, splash in 60 ...";
	// sleep 30;
	// // inform user through display or .ogg, but for now just use sysChat 
	// systemChat "HE x 25, splash in 30 ...";
	// sleep 15;
	// systemChat "splash in 15 ...";
	// sleep 10;
	systemChat ".. 5 ..";
	sleep 1;
	systemChat ".. 4 ..";
	sleep 1;
	systemChat ".. 3 ..";
	sleep 1;
	systemChat ".. 2 ..";
	sleep 2;
	
	params ["_shell", "_origin", "_radius", "_count"];

	while {_count = _count - 1; _count >= 0} do {

		private _int = selectRandom [1, 2, 4, 8];
		private _dir = random 360;
		private _rad = 5;
		private _prj = _shell createVehicle (_origin getPos [_rad, _dir]);		
		sleep _int;
	};


	numericalInputBool = false;
	deleteMarker "gun1";
	execVM "voiceActivatedArty\initialiseVAA.sqf";
	
};

["BombCluster_02_Ammo_F", _pos, 1, 1] call RGG_callArty1;	

//

