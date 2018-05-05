--------------------------------------------------------------------------
----------------        Basic Variable       -----------------------------
----------------         Do not edit                 ---------------------
--------------------------------------------------------------------------
local current_weapon = "none"

--------------------------------------------------------------------------
----------------        Basic Setting       ------------------------------
--------------------------------------------------------------------------

---- key bind ----

local ump9_key = nil
local akm_key = 5
local m16a4_key = 7
local m416_key = 8
local scarl_key = nil
local uzi_key = 4
local set_off_key = 6


---- fire key ----

local fire_key = "F8"
local full_mode_key = "numlock"
local mode_switch_key = "capslock"

---- ignore key ----
---- can use "lalt", "ralt", "alt"  "lshift", "rshift", "shift"  "lctrl", "rctrl", "ctrl"

local ignore_key = "lalt"

--- Sensitivity in Game
--- default is 50.0

local target_sensitivity = 50
local scope_sensitivity = 50
local full_sensitivity = 50
local scope4x_sensitivity = 50

---- Obfs setting
---- Two firing time intervals = weapon_speed * interval_ratio * ( 1 + random_seed * ( 0 ~ 1))
local weapon_speed_mode = false
-- local obfs_mode = false
local obfs_mode = false
local interval_ratio = 0.75
local random_seed = 1
-- local fullmode = false
local fullmode = false
--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------
--- recoil times
--- if the Recoil compensation is Large or small，You can modify the value of all_recoil_Times or recoil_table{times}
local all_recoil_times = 1

local recoil_table = {}

recoil_table["ump9"] = {
    basic={28,30,30,30,37,30,31,36,37,37,37,40,40,39,39},
    full={0},
    quadruple={0},
    speed = 90,
    times = 0.963
}

recoil_table["akm"] = {
    basic={56,37,38,40,43,49,49,50,51,50,48,53,56,52,56},
    full={0},
    quadruple={0},
    speed = 100,
    times = 0.9
}

recoil_table["m16a4"] = {
    basic={48,38,40,37,55,58,66,58,64,67,69,61,61,61,65},
    full={0},
    quadruple={0},
    speed = 80,
    times = 1.1
}

recoil_table["m416"] = {
    basic={46,38,39,40,44,45,48,47,47,45,50,52,55,54,59},
    full={0},
    quadruple={},
    speed = 90,
    times = 1.05
}

recoil_table["scarl"] = {
    basic={40,28,35,44,44,45,46,46,46,48,49,45,44,44,51},
    full={0},
    quadruple={0},
    speed = 100,
    times = 0.89
}

recoil_table["uzi"] = {
    basic={18,18,18,19,19,21,24,24,30,26,30,30,34,34,38},
    full={0},
    quadruple={0},
    speed = 48,
    times = 1.7
}

recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    speed = 60,
    times = 1
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
local full_scale = calc_sens_scale(full_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)

function recoil_mode()
    if IsKeyLockOn(mode_switch_key) then
        return "quadruple";
    elseif IsKeyLockOn(full_mode_key) and fullmode then
        return "full"
    else
        return "basic";
    end
end


function recoil_value(_weapon,_duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/100)) + 1
    if step > 40 then
        step = 40
    end
    local weapon_recoil = recoil_table[_weapon][_mode][step]
    -- OutputLogMessage("weapon_recoil = %s\n", weapon_recoil)
    
    local weapon_speed = 30
    if weapon_speed_mode then
        weapon_speed = recoil_table[_weapon]["speed"]
    end
    -- OutputLogMessage("weapon_speed = %s\n", weapon_speed)
    
    local weapon_times = recoil_table[_weapon]["times"]
	
    local weapon_intervals = weapon_speed
    if obfs_mode then

        local coefficient = interval_ratio * ( 1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient  * weapon_speed) 
    end
    -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil * weapon_intervals / 100 * all_recoil_times * weapon_times
    
    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "full" then
        recoil_recovery = recoil_recovery / full_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery / scope4x_scale
    end

    return weapon_intervals,recoil_recovery
end


--------------------------------------------------------------------------
----------------          OnEvent          ------------------------------
--------------------------------------------------------------------------


function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "PROFILE_DEACTIVATED" then
        current_weapon = "none"
        shoot_duration = 0.0
        ReleaseKey(fire_key)
        ReleaseMouseButton(1)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) then
        current_weapon = "none"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key) then
        current_weapon = "akm"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key) then
        current_weapon = "m16a4"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key) then
        current_weapon = "m416"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key) then
        current_weapon = "ump9"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key) then
        current_weapon = "uzi"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key) then
        current_weapon = "scarl"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressKey(fire_key)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
            ReleaseKey(fire_key)
        else
            local shoot_duration = 0.0
            repeat
                local intervals,recovery = recoil_value(current_weapon,shoot_duration)
                PressAndReleaseKey(fire_key)
                MoveMouseRelative(0, recovery )
                Sleep(intervals)
                shoot_duration = shoot_duration + intervals
            until not IsMouseButtonPressed(1)
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        ReleaseKey(fire_key)
    end
    
end
