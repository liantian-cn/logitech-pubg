--------------------------------------------------------------------------
----------------        Basic Setting       ------------------------------
--------------------------------------------------------------------------

---- key bind ----

local ump9_key = nil
local akm_key = 5
local m16a4_key = 7
local m416_key = 8
local scarl_key = 4
local uzi_key = nil
local set_off_key = 6

---- keyboard ---- Only Support logitech G Keyboard

local ump9_gkey = 1  ---1 is use F1.
local akm_gkey = nil
local m16a4_gkey = nil
local m416_gkey = nil
local scarl_gkey = nil
local uzi_gkey = 2
local set_off_gkey = nil

---- fire_key ----

local fire_key = "F8"

---- control_key ----

local control_key = "lctrl" 

---- can use "lalt", "ralt", "alt"  "lshift", "rshift", "shift"  "lctrl", "rctrl", "ctrl"

local ignore_key = "lalt" --- ignore key
local hold_breath_key = "lshift"

--- fastloot setting---
--- Press controlkey and and ignore_key and click Left mouse button ---
--- "lctrl" + "lalt" + mousebutton

local control_key = "lctrl" 
local fastloot = true ---if you don't need it, you can close it by true to false.
local move = 40 ----1920*1080

---- only can use "numlock", "capslock", "scrolllock"

local full_mode_key = "numlock"   ---numlock lamp on,recoil is full_mode.
local mode_switch_key = "capslock" 
local lighton_key = "scrolllock"  ---start script,scrolllock lamp will be on.close script ,scrolllock lamp will be off.

--- Your Sensitivity in Game 

local vertical_sensitivity = 0.7 --- default is 0.7
local target_sensitivity = 50 --- default is 50.0
local scope_sensitivity = 50 --- default is 50.0
local scope4x_sensitivity = 50 --- default is 50.0

-- you can close these by true to false

local hold_breath_mode = true
local full_mode = true

---- Obfs setting
-- local obfs_mode = false
local obfs_mode = false
local interval_ratio = 0.75
local random_seed = 1

local auto_reloading = true

--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------
--- recoil times
--- if the Recoil compensation is Large or small，You can modify the value of all_recoil_Times or recoil_table{times}
local all_recoil_times = 1

local recoil_table = {}

recoil_table["akm"] = {
    basic={56,41,42,46,48, 58,58.5,64,68,68, 70,71,70,74.4,77, 77},
    basictimes = 1.04,
	
    full={56,41,42,46,48, 58,58.5,64,68,68, 70,71,70,74.4,77, 77},
    fulltimes = 1.04*0.75,

    quadruple={56,41,42,46,48, 58,58.5,64,68,68, 70,71,70,74.4,77, 77},
    quadrupletimes = 4*1.04,
	
    fullof4x={56,41,42,46,48, 58,58.5,64,68,68, 70,71,70,74.4,77, 77},
    fullof4xtimes = 4*1.04*0.75,
	
    speed = 100,

    maxbullets = 40,

    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["m416"] = {
    basic={41,30,33,36,41, 40,46,47,45.6,46.5, 47.5,46.5,49.2,52.2,53.1, 53},	
    basictimes = 1.08,

    full={41,30,33,36,41, 40,46,47,45.6,46.5, 47.5,46.5,49.2,52.2,53.1, 53},
    fulltimes = 1.08*0.75,	
    
    quadruple={41,30,33,36,41, 40,46,47,45.6,46.5, 47.5,46.5,49.2,52.2,53.1, 53},
    quadrupletimes = 4*1.08,
	
    fullof4x={41,30,33,36,41, 40,46,47,45.6,46.5, 47.5,46.5,49.2,52.2,53.1, 53},
    fullof4xtimes = 4*1.08*0.75,
	
    speed = 89.98,

    maxbullets = 40,

    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["scarl"] = {
    basic={40,25,31.5,39.6,39.6, 41.4,42.3,42.3,43.2,48.6, 50.4,52.2,54,52.2,55, 55},
    basictimes = 1,

    full={40,25,31.5,39.6,39.6, 41.4,42.3,42.3,43.2,48.6, 50.4,52.2,54,52.2,55, 55},
    fulltimes = 1*0.75,
	
    quadruple={40,25,31.5,39.6,39.6, 41.4,42.3,42.3,43.2,48.6, 50.4,52.2,54,52.2,55, 55},
    quadrupletimes = 4*1,
	
    fullof4x={40,25,31.5,39.6,39.6, 41.4,42.3,42.3,43.2,48.6, 50.4,52.2,54,52.2,55, 55},
    fullof4xtimes = 4*1*0.75,
	
    speed = 96,

    maxbullets = 40,

    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["ump9"] = {
    basic={30,31,32,34,37, 35,35,36,42,38, 39,42,42,41,41, 41,41,42,42,42, 43,40,41,43,40, 40,40,41,42},
    basictimes = 1,
	
    full={30,31,32,34,37, 35,35,36,42,38, 39,42,42,41,41, 41,41,42,44,42, 43,40,41,44,40, 40,41,42,43},
    fulltimes = 0.75*0.9,

    quadruple={30,31,32,34,37, 35,35,36,42,38, 39,42,42,41,41, 41,41,42,44,42, 43,40,41,44,40, 40,41,42,43},
    quadrupletimes = 4*1*0.97,
	
    fullof4x={30,31,32,34,37, 35,35,36,42,38, 39,42,42,41,41, 41,41,42,44,42, 43,40,41,44,40, 40,41,42,43},
    fullof4xtimes = 4*0.75,
	
    speed = 92,

    maxbullets = 40,

    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["uzi"] = { 
    basic={8.5,8.5,9,9,9,10.5,10.5,10.5,12,13,13,14.5,15.5,16,17.5,18.5,19,19.5,19,19.5,19,19,19.5,20},
    basictimes = 2,

    full={4.8,4.8,5,5,5,6,6,6,6.2,6.8,6.8,7.6,7.6,7.9,8.2,8.2,8.2,8.7,8.7,9,9.5,9.5,9.6,9.6},
    fulltimes = 2,
	
    quadruple={8.5,8.5,9,9,9,10.5,10.5,10.5,12,13,13,14.5,15.5,16,17.5,18.5,19,19.5,19,19.5,19,19,19.5,20},
    quadrupletimes = 2,
	
    fullof4x={4.8,4.8,5,5,5,6,6,6,6.2,6.8,6.8,7.6,7.6,7.9,8.2,8.2,8.2,8.7,8.7,9,9.5,9.5,9.6,9.6},
    fullof4xtimes = 2,

    speed = 48,
    maxbullets = 35,

    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["m16a4"] = {
    basic={42.3,31.2,32.4,42.3,50.4, 54.1,62.1,60,62.5,65.5, 63,62.1,64.4,64.4,65.25,63.9},
    basictimes = 1.23,
		
    full={42.3,31.2,32.4,42.3,50.4,54.1,62.1,60,62.5,65.5,63,62.1,64.4,64.4,65.25,63.9},
    fulltimes = 1.23*0.77,
	
    quadruple={42.3,31.2,32.4,42.3,50.4,54.1,62.1,60,62.5,65.5,63,62.1,64.4,64.4,65.25,63.9},
    quadrupletimes = 1.23*4,
	
    fullof4x={42.3,31.2,32.4,42.3,50.4,54.1,62.1,60,62.5,65.5,63,62.1,64.4,64.4,65.25,63.9},
    fullof4xtimes = 4*1.23*0.75,

    speed = 80,

    maxbullets = 40,

    clickspeed = 40,

    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

--------------------------------------------------------------------------
----------------          Function          ------------------------------
--------------------------------------------------------------------------


function convert_sens(unconvertedSens) 
    return 0.002 * math.pow(10, unconvertedSens / 50)
end

function calc_sens_scale(sensitivity)
    return convert_sens(sensitivity)/convert_sens(50)
end

local target_scale = calc_sens_scale(target_sensitivity)
local scope_scale = calc_sens_scale(scope_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)

function recoil_mode()
    if not IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
	       return "full";
	else
	       return "basic";
        end
    end	
	
    if IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
	       return "fullof4x"
	else
	       return "quadruple"
        end 
    end		
end
		   
function recoil_value(_weapon,_duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/recoil_table[_weapon]["speed"])) + 1
    if step > #recoil_table[_weapon][_mode] then
        step = #recoil_table[_weapon][_mode]
    end

    local weapon_recoil = recoil_table[_weapon][_mode][step]
    local weapon_speed = recoil_table[_weapon]["speed"]
    local weapon_clickspeed = recoil_table[_weapon]["clickspeed"]
    local weapon_maxbullets = recoil_table[_weapon]["maxbullets"]
    local weapon_basictimes = recoil_table[_weapon]["basictimes"]
    local weapon_fulltimes = recoil_table[_weapon]["fulltimes"]
    local weapon_quadrupletimes = recoil_table[_weapon]["quadrupletimes"]
    local weapon_fullof4xtimes = recoil_table[_weapon]["fullof4xtimes"]
    local weapon_holdbreathtimes = recoil_table[_weapon]["holdbreathtimes"]
    local weapon_fullofholdbreathtimes = recoil_table[_weapon]["fullholdbreathtimes"]
    local weapon_intervals = weapon_speed    
    local weapon_clicktime = weapon_clickspeed
    local weapon_bullets = weapon_maxbullets 

    if obfs_mode then
        local coefficient = interval_ratio * ( 1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient  * weapon_speed) 
    end
    -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil
    recoil_times = all_recoil_times * 0.7 / vertical_sensitivity 

    if recoil_mode() == "basic" and not IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * recoil_times * weapon_basictimes
    end
    if recoil_mode() == "basic" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * weapon_holdbreathtimes * recoil_times * weapon_basictimes
    end

    if recoil_mode() == "full" and not IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fulltimes
    end
    if recoil_mode() == "full" and hold_breath_mode and IsModifierPressed(hold_breath_key) then
    recoil_recovery = recoil_recovery * weapon_fullofholdbreathtimes * recoil_times * weapon_fulltimes
    end

    if recoil_mode() == "quadruple" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_quadrupletimes
    end
	
    if recoil_mode() == "fullof4x" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fullof4xtimes
    end

    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale 
    elseif recoil_mode() == "full" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery / scope4x_scale
    elseif recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery / scope4x_scale
    end

    return weapon_intervals,recoil_recovery,weapon_clicktime,weapon_bullets
end

--------------------------------------------------------------------------
----------------          OnEvent          ------------------------------
--------------------------------------------------------------------------


function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
	current_weapon = "none"
        shoot_duration = 0.0
        if IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        elseif IsKeyLockOn(full_mode_key) then
        PressAndReleaseKey(full_mode_key)
        elseif IsKeyLockOn(mode_switch_key) then
        PressAndReleaseKey(mode_switch_key)
        end
    elseif event == "PROFILE_DEACTIVATED" then
        ReleaseKey(fire_key)
        ReleaseMouseButton(1)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) 
    or (event == "G_PRESSED" and arg == set_off_gkey) then
        current_weapon = "none"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key)
    or (event == "G_PRESSED" and arg == akm_gkey) then
        current_weapon = "akm"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key)
    or (event == "G_PRESSED" and arg == m16a4_gkey) then
        current_weapon = "m16a4"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key)
    or (event == "G_PRESSED" and arg == m416_gkey) then
        current_weapon = "m416"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key)
    or (event == "G_PRESSED" and arg == ump9_gkey) then
        current_weapon = "ump9"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key)
    or (event == "G_PRESSED" and arg == uzi_gkey) then
        current_weapon = "uzi"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key)
    or (event == "G_PRESSED" and arg == scarl_gkey) then
        current_weapon = "scarl"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot
        if ((current_weapon == "none")) then
            PressKey(fire_key)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
            ReleaseKey(fire_key)
        elseif(current_weapon == "m16a4")
        or (current_weapon == "sks")
        or (current_weapon == "mini")
        or (current_weapon == "slr") then
            ReleaseMouseButton(1)
            local shoot_duration = 0.0
            repeat
            local intervals,recovery,clicktime,bullets = recoil_value(current_weapon,shoot_duration)
            if shoot_duration % clicktime == 0 then
               PressAndReleaseKey(fire_key)
            end 
            MoveMouseRelative(0, recovery / 10)
            Sleep(intervals/10)
            shoot_duration = shoot_duration + (intervals/10)
            if auto_reloading then
               if shoot_duration > (intervals * bullets) + 100 then
               ReleaseKey(fire_key)
               PressAndReleaseKey("r")
               Sleep(200)
               end
            end
            until not IsMouseButtonPressed(1)
        else
            ReleaseMouseButton(1)
            PressKey(fire_key)
            local shoot_duration = 0.0
            repeat
            local intervals,recovery,clicktime,bullets = recoil_value(current_weapon,shoot_duration)
            MoveMouseRelative(0, recovery /10 )
            Sleep(intervals/10)
            shoot_duration = shoot_duration + (intervals/10)
            if auto_reloading then
               if shoot_duration > (intervals * bullets) + 100 then
               ReleaseKey(fire_key)
               PressAndReleaseKey("r")
               Sleep(200)
               end
            end
            until not IsMouseButtonPressed(1)
            ReleaseKey(fire_key)
        end
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        ReleaseKey(fire_key)
    end

    while (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsModifierPressed(control_key) and IsModifierPressed(ignore_key) and fastloot) do
        ReleaseMouseButton(1)
        PressMouseButton(1)
        for i = 0, 14 do
        MoveMouseRelative(move, 0)
        Sleep(2)
        end
        ReleaseMouseButton(1)
        for i = 0, 14 do
        MoveMouseRelative(-move, 0)
        Sleep(2)
        end
        Sleep(10)          
    end
    if (current_weapon == "none") then
        if IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        end 
    else
        if not IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        end
    end
end
