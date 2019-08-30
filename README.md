# outdated/已過時

在2018年5月3日的更新過後，後坐力表已經完全過時，

請關注其他Fork


After the update on May 3, 2018, the recoil table is outdated.

pls try other fork

https://github.com/liantian-cn/logitech-pubg/network

https://github.com/minglich/logitech-pubg/







# logitech-pubg
绝地求生罗技鼠标宏
PUBG recoil control script for Logitech gaming mouse 


# deprecated

- still safe.
- still useless.
- recoil table maybe outdated.
- can find new recoil table in other [fork](https://github.com/liantian-cn/logitech-pubg/network) ,THANK ALL.

2018.2.1

```

现已停止维护。

不要想太多，只是觉得这个东西没什么用了。
作者(liantian-cn)已经一整个赛季没有使用压枪宏，第一赛季亚服单排 2503。
压枪宏可以帮你度过初级阶段，但固有的障碍没办法帮你提高更多。热爱游戏，还是要自己熟悉压枪。

谢谢过去在issues中提出意见的各位。
```

PUBG no-recoil script for Logitech gaming mouse 




[manual](https://github.com/liantian-cn/logitech-pubg#ay-your-own-risk) (English translation helped by Siming)
[使用说明](https://github.com/liantian-cn/logitech-pubg#风险自负)


#  AT YOUR OWN RISK


- `logitech gaming software` never triggered any banwaves in the past, but this doesn't mean there won't be any banwaves in the future.


# ChangeLog


2017.12.23

- update for 3.5.5.6 (1.0 release)  [Script Effect](https://github.com/liantian-cn/logitech-pubg/issues/47)

2017.10.18

- Fixed macro disable logic, optimized for tossing grenades
- Added hotkey to disable macro named "ignore_key", default to "shift"

2017.10.15

- Added sensitivity setting.



2017.10.14 

- Added uzi and scar-l recoil table.
- The default fire button is changed to "pause".
- Removed the full attachment mode because the chances of geting all attachments is low, and lacks testing.
- Rewriting the logic: now the trigger speed is on par with the weapon firing rate.

# How To Use 

- download and install `logitech gaming software`[LGS]
  - http://support.logitech.com/software/lgs
- click PUBG in LGS, select `Scripting`.
  ![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014103649.png)
- copy and paste script from [adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua) to script box.
- Ctrl + S to save.


# How to Edit Setting

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014104238.png)
  
## 1. Assign buttons to weapon

- you can get the button numbers from logitech log window. When you click a mouse button, the log will prompt `event = MOUSE_BUTTON_RELEASED, arg = X`, X is the button number.
- there are 6 weapon types. if you have a logitech mouse with less than 6 buttons, map unused buttons/weapons to `nil`.
- You should always assign a button to cancel the recoil macro. `set_off_key`
 

## 2. Set the fire key and the mode switch key. 


- unset the `Fire` binding in game from your mouse left button, and set it to `Pause` key. This needs to be consistent between the script and the game setting.
- When the `mode switch key` is pressed, recoil is magnified by  3-4x, consistent with 4x scope mode.
- By default in the script , `fire key` is `pause` ,  `mode switch key` is `capslock`.
- **always keep your weapons in single-fire mode. The script will automatically fire in auto mode, including M16A1s**

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014110324.png)


## 3. Ignore Key (script pause)


- You can set a ignore Key, and when the key is pressed, the script pauses.
- Limited by LGS, you can only select "lalt", "ralt", "alt" "lshift", "rshift", "shift" "lctrl", "rctrl", "ctrl" and Logitech G Key(Logitech game keyboard only)
- By default the ignore key is "lshift" 

## 4. Sensitivity Setting 

- If you modify the mouse sensitivity settings in the game menu, you need to modify the settings in script.
- Mouse dpi does not affect the script. this is built into Logitech driver functionality.

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171015014208.png)

## 5. Obfs Setting

- by default, shoot interval random between 30-39ms. You can modify script variables to change this behavior.

- When `weapon_speed_mode = true`, shots will be fired the same rate as weapon base rate, instead of the above random interval.

## 6. You should always use Ctrl + S to save script after edit script. 


# Recommended settings


Logitech's most gaming mice contain 5 shortcuts. The default 1 forward, 1 back, 1 zoom, a reduced dpi, a magnifying glass.

- Assign a button to use ump9, so that the keys are also suitable for full accessory m416 and scar-l.
- Assign a button to use m16a1, m16a1 with red dot sight or holographic sight, do not need other accessories, you can play a power.
- Assign a button using akm, akm mode also applies to sks and mini 14.
- Assign a button to use a big jump.
- Assign a button  to cancel the no-recoil.

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014153403.png)


# Not working?

## run LGS as administrator
UAC will isolate user32.dll‘s function between users and administrators. both [keybd_event](https://msdn.microsoft.com/en-us/library/windows/desktop/ms646304(v=vs.85).aspx) and [SendInput](https://msdn.microsoft.com/en-us/library/windows/desktop/ms646310(v=vs.85).aspx) function are in user32.dll. so if you run pubg as administrator , you also need to run LGS as administrator.

You may not notice that pubg in the admin, may be pubg is child process of steam.exe , and steam is child process of steam update , steam update must run as admin.

## set "Lock profile while game is running"
By default ， LGS will only run profile when game's window is "active", use [GetActiveWindow](https://msdn.microsoft.com/en-us/library/windows/desktop/ms646292(v=vs.85).aspx) , but in windows 10 , input and notification will often become active window, maybe bug maybe not.


# Copyright 

- [The Unlicense](https://github.com/liantian-cn/logitech-pubg/blob/master/LICENSE "The Unlicense")
- No support, for suggestions, use [Issues](https://github.com/liantian-cn/logitech-pubg/issues?q= "Issues").



#  风险自负。


- `logitech gaming software`过去没有触发过任何Ban wave，但过去没有，不代表将来也没有。

#  更新说明


2017.12.23

- 正对正式版更新，效果见[#47](https://github.com/liantian-cn/logitech-pubg/issues/47)

2017.10.18

- 修正关闭时的逻辑，方便丢雷。
- 增加暂时屏蔽压枪的快捷键，ignore_key，默认为shift 

2017.10.15

- 增加灵敏度设置。 


2017.10.14 

- 新增了uzi 和 scar-l 的后座力表格。
- 默认开火键修改为"pause"
- 移除了全配件模式，因为使用机会太小，导致缺乏测试。
- 重写了逻辑：现在激发速度和武器射速相关。

# 食用说明


- 下载并安装`logitech gaming software`。
  - LGS下载地址 : http://support.logitech.com/software/lgs
- 点击pubg，选择编写脚本。
  ![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014103015.png)

- 复制[adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua)的代码到脚本框内。

- 按ctrl+s 保存。



# 编辑设置

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014104238.png)
  
## 1.  为枪械分配按键编号
 
- 按键编号可以通过查看下方日志得到，当按下鼠标按键时，下方日志提示`event = MOUSE_BUTTON_RELEASED , arg = X`，这个X就是按键编号。
- 枪械拥有6种，而不同型号的罗技鼠标功能键数量可能小于6，为不需要使用的武器分配`nil`值。
- 总是应该为取消设置后座力补偿分配一个按键。`set_off_key`


## 2.  设置开火按键和模式切换按键

- 开火`fire key`按键需要和游戏内设置一致，并在游戏内取消鼠标左键的绑定。
- 模式切换键`mode switch key`按下时，后座力放大3~4倍，便于使用四倍镜。
- 默认情况，开火键是"Pause"，方向键上方最右一个。使用大小写锁定键切换4倍模式。
- 所有武器使用单发模式，这个脚本会将单发转化为全自动模式，包括M16a1

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014110324.png)


## 3. 忽略键

- 您可以设置一个忽略键，当按下该键时，脚本会暂停。
- 受限于LGS，你只能选择这些按键作为忽略键： "lalt", "ralt", "alt" "lshift", "rshift", "shift" "lctrl", "rctrl", "ctrl" 
- 默认设置是 "lshift" 

## 4. 灵敏度设置 

- 如果您修改游戏菜单中的鼠标灵敏度设置，则需要修改设置。
- 鼠标dpi不影响脚本运行，罗技已经做好了转换。

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171015014208.png)

## 5. 混淆设置

- 在默认模式下，射击间隔从30ms到39ms随机变化。 可以修改几个变量来更改此随机范围。

- 当 `weapon_speed_mode = ture`, 使用武器速度做基准，而不是默认的30ms.


## 6.编辑脚本后记得ctrl + s保存。

#  推荐设置

罗技的大多数游戏鼠标包含5个快捷键。默认1个前进、1个后退、1个放大dpi，一个缩小dpi，一个放大镜。

- 分配一个按键使用ump9，这样按键同时也适合全配件的m416和scar-l.
- 分配一个按键使用m16a1, m16a1搭配红点瞄准镜或全息瞄准镜，不需要其他配件，就可以发挥威力。
- 分配一个按键使用akm，akm的模式同样适用于sks和mini 14.
- 分配一个按键使用大跳。
- 分配一个给取消后座力补偿。


![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014153403.png)


# 常见问题 ? 

## Q1: 无法自动射击　？
一般是因为使用代理加速器，导致游戏是以管理员身份运行导致的。

### 以管理员身份运行LGS ###
文件坐标："C:\Program Files\Logitech Gaming Software\LCore.exe" ，可以在这个程序的属性>兼容性，勾选以“管理员身份运行此程序”

UAC会隔离user权限的user32.dll对管理员权限的进程访问.  [keybd_event](https://msdn.microsoft.com/en-us/library/windows/desktop/ms646304(v=vs.85).aspx) 和 [SendInput](https://msdn.microsoft.com/en-us/library/windows/desktop/ms646310(v=vs.85).aspx) 都属于 user32.dll.所以，如果pubg是管理员权限运行的，也需要以管理员权限运行LGS。

你可能没有注意到Pubg是以管理员身份运行的，也许是因为pubg是 steam.exe的子进程 , steam 又是steam update的子进程。 steam update 以管理员权限更新steam。 也或许，是因为网游加速器需要lsp劫持或
