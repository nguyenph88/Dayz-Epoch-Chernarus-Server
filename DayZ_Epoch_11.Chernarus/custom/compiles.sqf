// blood transfusion
player_selectSlot = compile preprocessFileLineNumbers "custom\ui_selectSlot.sqf";
player_useMeds =  compile preprocessFileLineNumbers "custom\player_useMeds.sqf";

// tow life
call compile preprocessFileLineNumbers "logistic\init.sqf";

// snap pro
if (!isDedicated) then {
    player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
    snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
    dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
};

// custom hud
player_updateGui  = compile preprocessFileLineNumbers "dayz_code\compile\player_updateGui.sqf";