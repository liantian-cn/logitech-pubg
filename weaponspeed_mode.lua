--------------------------------------------------------------------------
----------------        Basic Setting       ------------------------------
--------------------------------------------------------------------------

---- key bind ----

local ump9_key = nil
local akm_key = 5
local m16a4_key = 7
local m416_key = 8
local scarl_key = nil
local uzi_key = nil
local qbz_key = 4
local set_off_key = 6

---- keyboard ---- Only Support logitech G Keyboard

local ump9_gkey = 1  ---1 is use F1.
local akm_gkey = nil
local m16a4_gkey = nil
local m416_gkey = nil
local scarl_gkey = 3
local uzi_gkey = 2
local qbz_gkey = nil
local set_off_gkey = nil

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

local full_mode_key = "numlock"   ---numlock lamp on,recoil is full_mode."numlock" 
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

local auto_reloading = false

-- if auto_mode = true ,the guns need to switch automatic shooting mode,except m16 single.

local auto_mode = true
--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------
--- recoil times
--- if the Recoil compensation is Large or small，You can modify the value of all_recoil_Times or recoil_table{times}
local all_recoil_times = 1

local recoil_table = {}

recoil_table["akm"] = {
    basic={60.3,40.2,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.9, 71.5,73.6,79.3,79.3,81.6 ,70},
    basictimes = 1,
    full={61.3,41.2,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.9, 71.5,73.6,79.3,79.3,81.6 ,80},
    fulltimes = 1*0.75,
    quadruple={61.3,41.2,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.9, 71.5,73.6,79.3,79.3,81.6 ,80},
    quadrupletimes = 4*1,
    fullof4x={61.3,41.2,47.5,51.0,54.5, 64.0,67.5,69.0,70.5,71.9, 71.5,73.6,79.3,79.3,81.6 ,80},
    fullof4xtimes = 4*1*0.75,
    speed = 100,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["m416"] = {
    basic={52.0,39.5,41.0,43.0,48.0, 50.0,53.2,54.2,54.5,52.5, 55.5,54.8,58.6,58.6,59.5, 70.3},	
    basictimes = 1,
    full={52.0,39.5,41.0,43.0,48.0, 50.0,53.2,53.2,53.5,51.5, 51.5,54.8,58.6,58.6,59.5, 60.3},
    fulltimes = 1*0.75,	
    quadruple={52.0,39.5,41.0,43.0,48.0, 50.0,53.2,53.2,53.5,51.5, 51.5,54.8,58.6,58.6,59.5, 60.3},
    quadrupletimes = 4*1*0.9,
    fullof4x={52.0,39.5,41.0,43.0,48.0, 50.0,53.2,53.2,53.5,51.5, 51.5,54.8,58.6,58.6,59.5, 60.3},
    fullof4xtimes = 4*1*0.75,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["scarl"] = {
    basic={56.0,26.0,32.0,40.0,45.1, 48.9,51.0,54.2,59.8,60.4, 60.9,60.9,58.9,56.9,59.8, 60.5},
    basictimes = 1,
    full={56.0,26.0,32.0,40.0,45.1, 48.9,51.0,54.2,59.8,60.4, 60.9,60.9,58.9,56.9,59.8, 60.5},
    fulltimes = 1*0.75,
    quadruple={56.0,26.0,32.0,40.0,45.1, 48.9,51.0,54.2,59.8,60.4, 60.9,60.9,58.9,56.9,59.8, 60.5},
    quadrupletimes = 4*1,
    fullof4x={56.0,26.0,32.0,40.0,45.1, 48.9,51.0,54.2,59.8,60.4, 60.9,60.9,58.9,56.9,59.8, 60.5},
    fullof4xtimes = 4*1*0.75,
    speed = 100,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["qbz"] = {
    basic={52.0,25.0,28.7,38.2,42.4, 44.0,46.0,46.0,45.6,45.1, 48.0,51.3,52.0,54.0,56.0, 59},
    basictimes = 1.05,
    full={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
    fulltimes = 1*0.75,
    quadruple={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
    quadrupletimes = 4*1,
    fullof4x={51.2,24.5,28.7,38.2,42.4, 43.3,45.2,45.2,45.6,45.1, 48.0,50.3,51.0,53.0,55.0},
    fullof4xtimes = 4*1*0.75,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["ump9"] = {
    basic={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
    basictimes = 1.05,
    full={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
    fulltimes = 0.75*0.9,
    quadruple={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
    quadrupletimes = 4*1*0.97,
    fullof4x={33.5,19.2,30.5,35.7,39.3, 39.0,38.7,40.2,41.8,44.0, 43.8,43.8,46.5,44.5,47.5},
    fullof4xtimes = 4*0.75,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["uzi"] = { 
    basic={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
    basictimes = 1.15,
    full={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
    fulltimes = 1.15*0.75*0.75,
    quadruple={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
    quadrupletimes = 1.15,
    fullof4x={16.0,16.0,16.0,17.6,18.6, 20.4,22.4,22.9,25.8,27.6, 32.6,36.9,38.0,38.8,39.8,40.5},
    fullof4xtimes = 1.15*0.75*0.75,
    speed = 48,
    maxbullets = 35,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["m16a4"] = {
    basic={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
    basictimes = 1.05,
    full={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
    fulltimes = 1*0.77,
    quadruple={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
    quadrupletimes = 1*4,
    fullof4x={41.9,36.5,37.1,50.5,55.9, 62.9,66.9,69.5,69.5,70.0, 71.2,},
    fullof4xtimes = 4*1*0.75,
    speed = 75,
    maxbullets = 40,
    clickspeed = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	
}

recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    basictimes = 1,
    full={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fulltimes = 1,
    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadrupletimes = 1,
    fullof4x={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fullof4xtimes = 1,
    speed = 30,
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

function single_value(value)
    return 10 * math.floor(( value / 10 ) + 0.9)
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
        Fire = false
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
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == qbz_key)
    or (event == "G_PRESSED" and arg == qbz_gkey) then
        current_weapon = "qbz" 
		
    elseif (event == "M_RELEASED" and arg == 3 and Fire) then
        local intervals,recovery,clicktime,bullets = recoil_value(current_weapon,shoot_duration)
        if shoot_duration % (single_value(intervals) / 2) == 0 then
            PressAndReleaseMouseButton(1)
        end 
        MoveMouseRelative(0, recovery / 10)
        Sleep(single_value(intervals)/10)
        shoot_duration = shoot_duration + (single_value(intervals)/10)
        if auto_reloading then
            if shoot_duration > (single_value(intervals) * bullets) + 100 then
            ReleaseMouseButton(1)
            PressAndReleaseKey("r")
            Sleep(200)
            Fire = false
            end
        end
        if not Fire then
            ReleaseMouseButton(1)
        elseif Fire then
            SetMKeyState(3)
        end

    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressMouseButton(1)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
        elseif(current_weapon == "m16a4") then
            Fire = true
            SetMKeyState(3)
        else
            if auto_mode then
            repeat
            local intervals,recovery,clicktime,bullets = recoil_value(current_weapon,shoot_duration)
            MoveMouseRelative(0, recovery /10 )
            Sleep(intervals/10)
            shoot_duration = shoot_duration + (intervals/10)
            if auto_reloading then
               if shoot_duration > (intervals * bullets) + 100 then
               ReleaseMouseButton(1)
               PressAndReleaseKey("r")
               Sleep(200)
               end
            end
            until not IsMouseButtonPressed(1)
            else
            Fire = true
            SetMKeyState(3)
            end
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        Fire = false
        shoot_duration = 0.0
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
