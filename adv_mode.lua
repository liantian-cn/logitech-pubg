local recoil_table = {}
recoil_table["m4"] = {
    base={7.8,7.8,7.8,7.8,7.8,7.8,7.8,13.8,13.8,13.8,13.8,9.8,9.8,9.8,9.8,9.8,10,10,10,10.1,10.1,10.1},
    x4={26,26,26,26,26,26,26,45,45,45,45,29,29,29,29,29,29,29,29,29,29,29},
    all = {5,5,5,5,5,5,5,7,7,7,7,7,7,7,7,7,7,6,6,6,6,6}
}
recoil_table["m16"] = {
    base={7,7,7,7,7,7,7,13.6,13.6,13.6,13.6,10.2,10.2,10.2,10.2,10.2,10.2,10.2,10.2,8,8,8},
    x4={26,26,26,26,26,26,26,45,45,45,45,29,29,29,29,29,29,29,29,29,29,29},
    all={7,7,7,7,7,7,7,11,11,11,11,8,8,8,8,8,8,8,8,8,8,8}
}
recoil_table["ak"] = {
    base={7.1,7.1,7.1,7.1,7.1,7.1,7.1,7.1,7.1,7.1,9,9,9,9,8.9,8.9,8.9,8.9,8.9,8.9,8.9},
    x4={20,20,20,20,20,20,20,20,20,20,37,37,37,37,28,28,28,28,28,28,28},
    all={6,6,6,6,6,6,6,6,6,6,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5,7.5}
}
recoil_table["ump9"] = {
    base={5.5,5.5,5.5,5.5,5.5,5.5,5.5,6.9,6.9,6.9,6.9,7.1,7.1,7.1,7.1,7.1,7.1,7.1,7.1,7,7,7},
    x4={25,25,25,25,25,25,25,35,35,35,35,28,28,28,28,28,28,28,28,28,28,28},
    all={4,4,4,4,4,4,4,4.3,4.3,4.3,4.3,4,4,4,4,4,4,4,4,4,4,4}
}

-------------------------------------------------------------------------------------------------------
local weapon = "none"

-------------------------------------------------------------------------------------------------------
function recoil_value(_weapon,_mode,_shotTime)
    if _weapon == "none" then
        return 0
    else
        local step = (math.floor(_shotTime/100)) + 1
        if step > 20 then
            step = 20
        end
        return recoil_table[_weapon][_mode][step]
    end 
end 

-------------------------------------------------------------------------------------------------------
function recoil_mode()
    if IsKeyLockOn("capslock") then
      return "x4"
    elseif IsKeyLockOn("numlock") then
      return "base"
    else
      return "all"
    end
end 

-------------------------------------------------------------------------------------------------------
function OnEvent(event, arg)
    OutputLogMessage("event = %s, arg = %d\n", event, arg)
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
    elseif event == "PROFILE_DEACTIVATED" then
        weapon = "none"
        ReleaseKey("Left")
        ReleaseMouseButton(1)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
        -- button 6 : Disable
        weapon = "none"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
        -- button 4 : AKM
        weapon = "ak"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
        -- button 5 : M16A4
        weapon = "m16"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 7) then
        -- button 7 : M4A1
        weapon = "m4"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 8) then
        -- button 8 : UMP9
        weapon = "ump9"
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot  
        shotTime = 0.0
        repeat
        -- 循环
            seed = 1.0 + math.random()
            shotTime = shotTime + 30 * seed
            mode = recoil_mode()
            step = recoil_value(weapon,mode,shotTime)

            PressAndReleaseKey("Left")
            Sleep(30 * seed)
            MoveMouseRelative(0, step * seed)

        until not IsMouseButtonPressed(1)
        -- 松开前循环
    end

end
