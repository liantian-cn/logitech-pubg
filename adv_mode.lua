--------------------------------------------------------------------------
----------------        Basic Variable       -----------------------------
---------------- Do not edit                 -----------------------------
--------------------------------------------------------------------------
local current_weapon = "none"
local current_weapon_speed = 100
local current_weapon_intervals = 30
local shoot_duration = 0.0
local coefficient = 1.0
local current_weapon_recoil = 0.0
local recoil_recovery = 9.0

--------------------------------------------------------------------------
----------------        Basic Setting       ------------------------------
--------------------------------------------------------------------------

---- key bind ----

local ump9_key = 8
local akm_key = nil
local m16a4_key = 5
local m416_key = 7
local scarl_key = nil
local uzi_key = nil

local set_off_key = 6


---- fire key ----

local fire_key = "Pause"

---- Shooting delay setting
---- Two firing time intervals = weapon_speed * interval_ratio * ( 1 + random_seed * ( 0 ~ 1))

local interval_ratio = 0.5
local random_seed = 0.5

--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------

local recoil_table = {}

recoil_table["ump9"] = {
    basic={18.3,18.3,18.3,18.3,18.3,18.3,18.3,23,23,23,23,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3},
    quadruple={83.3,83.3,83.3,83.3,83.3,83.3,83.3,116.7,116.7,116.7,116.7,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3},
    speed = 92
}

recoil_table["akm"] = {
    basic={23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,28,28,28,28,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7},
    quadruple={66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,123.3,123.3,123.3,123.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3},
    speed = 100
}

recoil_table["m16a4"] = {
    basic={25.7,25.7,25.7,25.7,25.7,25.7,46.7,46.7,46.7,46.7,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30,30},
    quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7},
    speed = 75
}

recoil_table["m416"] = {
    basic={26.7,26.7,26.7,26.7,26.7,26.7,37,37,37,37,37,31,31,31,31,31,32,32,32,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35,35},
    quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7},
    speed = 86
}

recoil_table["scarl"] = {
    basic={22.3,22.3,22.3,22.3,22.3,22.3,22.3,29.3,29.3,29.3,29.3,26.7,26.7,26.7,26.7,26.7,26.7,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26,26},
    quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7},
    speed = 96
}

recoil_table["uzi"] = {
    basic={18.3,18.3,18.3,18.3,18.3,18.3,18.3,23,23,23,23,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3,23.3},
    quadruple={13.3,13.3,13.3,13.3,13.3,21.7,21.7,21.7,21.7,21.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7},
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

function recoil_mode()
    if IsKeyLockOn("capslock") then
        return "quadruple"
    else
        return "basic"
    end
end

function recoil_value(_weapon,_duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/100)) + 1
    if step > 40 then
        step = 40
    end
    return recoil_table[_weapon][_mode][step]
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
        current_weapon = "akm_key"
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
        shoot_duration = 0.0
        
        current_weapon_speed = recoil_table[current_weapon]["speed"]
        OutputLogMessage("current_weapon_speed = %s\n", current_weapon_speed)
        repeat

            coefficient = interval_ratio * ( 1 + random_seed * math.random())
            OutputLogMessage("coefficient = %s\n", coefficient)

            current_weapon_intervals = math.floor(coefficient  * current_weapon_speed)
            OutputLogMessage("current_weapon_intervals = %s\n", current_weapon_intervals)
            
            current_weapon_recoil = recoil_value(current_weapon,shoot_duration)
            OutputLogMessage("current_weapon_recoil = %s\n", current_weapon_recoil)

            recoil_recovery = current_weapon_recoil * current_weapon_intervals / 100
            OutputLogMessage("recoil_recovery = %s\n", recoil_recovery)

            PressAndReleaseKey(fire_key)
            Sleep(current_weapon_intervals)
            MoveMouseRelative(0, recoil_recovery)

            shoot_duration = shoot_duration + current_weapon_intervals
            OutputLogMessage("--------------------------\n")
        until not IsMouseButtonPressed(1)
        -- 松开前循环
    end

end
