EnablePrimaryMouseButtonEvents (true)
local step = 2.0
local recoil = false
function OnEvent(event, arg)
  OutputLogMessage("event = %s, arg = %d\n", event, arg)
  if (event == "PROFILE_ACTIVATED") then
    EnablePrimaryMouseButtonEvents(true)
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
    recoil = false
    
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
	if (recoil == false) then
		step = 2.0
		recoil = true
	else
    		step = step * 1.25
	end
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
    if (recoil == false) then
		step = 2.0
		recoil = true
	else
    		step = step * 0.8
	end
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and recoil) then
    repeat
      Sleep(8)
      MoveMouseRelative(0, step)
    until not IsMouseButtonPressed(1)

  end
end
