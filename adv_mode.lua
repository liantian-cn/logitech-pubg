--------------------------------------------------------------------------
----------------        Basic Variable       -----------------------------
----------------         Do not edit                 ---------------------
--------------------------------------------------------------------------
local current_weapon = "none"

--------------------------------------------------------------------------
----------------        Basic Setting       ------------------------------
--------------------------------------------------------------------------

---- key bind ----

local ump9_key = 4
local akm_key = 5
local m16a4_key = 7
local m416_key = 8
local scarl_key = 0
local uzi_key = nil

local set_off_key = 6


---- fire key ----

local fire_key = "F8"
local mode_switch_key = "capslock"


---- ignore key ----
---- can use "lalt", "ralt", "alt"  "lshift", "rshift", "shift"  "lctrl", "rctrl", "ctrl"

local ignore_key = "lalt"

--- Sensitivity in Game
--- default is 50.0

local target_sensitivity = 50
local scope_sensitivity = 50
local scope4x_sensitivity = 50

---- Obfs setting
---- Two firing time intervals = weapon_speed * interval_ratio * ( 1 + random_seed * ( 0 ~ 1))
local weapon_speed_mode = false
-- local obfs_mode = false
local obfs_mode = true
local interval_ratio = 0.75
local random_seed = 1

--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------

local recoil_table = {}

recoil_table["ump9"] = {
    basic={20,20,20,20,20,20,20,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,25,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26},
    quadruple={},
    speed = 90
}

recoil_table["akm"] = {
    basic={60,36,35,40,47,52,44},
    quadruple={},
    speed = 100
}

recoil_table["m16a4"] = {
    basic={48,38,40,37,50,58,66},
    quadruple={0},
    speed = 80
}

recoil_table["m416"] = {
    basic={37,34,35,36,37,42},
    quadruple={},
    speed = 90
}

recoil_table["scarl"] = {
    basic={},
    quadruple={},
    speed = 100
}

recoil_table["uzi"] = {
    basic={},
    quadruple={},
    speed = 48
}

recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    speed = 60
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
    if IsKeyLockOn(mode_switch_key) then
        return "quadruple";
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

    local weapon_intervals = weapon_speed
    if obfs_mode then

        local coefficient = interval_ratio * ( 1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient  * weapon_speed) 
    end
    -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil * weapon_intervals / 100
    
    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery= recoil_recovery / scope4x_scale
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
