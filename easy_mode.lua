--- 简易版不需要修改游戏键位
--- 只使用鼠标上的4、5、6三个按键

EnablePrimaryMouseButtonEvents (true)
local step = 2.0
function OnEvent(event, arg)
  OutputLogMessage("event = %s, arg = %d\n", event, arg)
  if (event == "PROFILE_ACTIVATED") then
    EnablePrimaryMouseButtonEvents(true)
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
    -- 6号按键开关
    recoil = not recoil
    if (recoil == false) then
      OutputLogMessage("Recoil OFF\n")
    else
      OutputLogMessage("Recoil ON\n")
    end
    -- 恢复步进到默认
    step = 2.0
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
	-- 4号键放大步进
    step = step * 1.25
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
    if step > 1 then
     -- 5号键缩小步进
      step = step * 0.8
    end
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and recoil) then
    repeat
    -- 循环
      Sleep(8)
      MoveMouseRelative(0, step)

    -- 每8毫秒下移一步进

    until not IsMouseButtonPressed(1)
    -- 松开前循环

  end
end
