//------------------------------------------\\
//		Clickable self bloodbag by adg		\\
//				 Version: 2.0				\\
//											\\
//------------------------------------------\\

private ["_started","_finished","_animState","_isMedic","_num_removed","_lastUsed","_infectionChance","_disallowinVehicle","_bloodAmount","_useTime","_giveHumanity","_humanityAmount","_hospitalDistance","_ambulanceDistance","_hospitalEnable","_ambulanceEnable","_anywhereEnable"];
disableserialization;

//------------------------------------------------------------------------------------------------------------------------------------------------------------------\\
// CONFIG START																																						\\
//------------------------------------------------------------------------------------------------------------------------------------------------------------------\\
_useTime = 60; //Time in seconds before being able to use again.
_bloodAmount = 4000; //Amount of blood the bloodbag gives to player (gets multiplied in hosp/ambulance, so 4000 = 8000 in hospital and 6000 near ambulance)
_infectionChance = 30; //Chance of getting infected while using the bloodbag (0 = disabled, 40 = 40%, 100 = 100% etc)
_disallowinVehicle = true; //Do not allow usage in a vehicle. true = cannot use, false = can use in vehicle

_giveHumanity = false; //Give players humanity for self bloodbag. true = give humanity, false = do not give
_humanityAmount = 50; //Amount of humanity to give, if _giveHumanity = true

_hospitalDistance = 21; //Max distance within Hospital
_ambulanceDistance = 5; // Max. distance from ambulance (medical hmmwv, medical vodnik or medic van)
_hospitalEnable = 1; // 1 enables SelfBloodbag in hospitals (leave as 1 if you have _anywhereEnable = 1; and want to get bonuses near hospital)
_ambulanceEnable = 1; // 1 enables SelfBloodbag near ambulances (leave as 1 if you have _anywhereEnable = 1; and want to get bonuses near med vehicles)
_anywhereEnable = 0; // 1 enables SelfBloodBag anywhere (turns automa