# logitech-pubg
PUBG no-recoil script for Logitech gaming mouse 
绝地求生罗技鼠标宏


[manual](https://github.com/liantian-cn/logitech-pubg#ay-your-own-risk) (English translation part comes from google)
[使用说明](https://github.com/liantian-cn/logitech-pubg#风险自负)


#  AT YOUR OWN RISK


- `logitech gaming software` never got banwave in the past,but does not mean that there is no future.


# ChangeLog


2017.10.18

- Correct the logic of the suspension, easy to thunder.
- Increase the shielding of the shortcut keys, ignore_key, the default shift

2017.10.15

- Add sensitivity setting.



2017.10.14 

- Added uzi and scar-l recoil table.
- The default fire button is changed to "pause".
- Removed the full part mode because the chances of using are too small, resulting in a lack of testing.
- Rewriting the logic: now the excitation speed is related to the weapon firing rate.

# How To Use 

- download and install `logitech gaming software`[LGS]
  - http://support.logitech.com/software/lgs
- click PUBG in LGS, select `Scripting`.
  ![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014103649.png)
- copy and paste script from [adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua) to script box.
- Ctrl + S to save.


# How to Edit Setting

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014104238.png)
  
## 1. Assigned button number for weapon

- the button number can be find in log windows, when the mouse button click, log prompt `event = MOUSE_BUTTON_RELEASED, arg = X`, the X is the button number.
- Weapon has 6 kinds, and different models of Logitech mouse function keys may be less than 6, for unnecessary weapons allocation `nil` value.
- You should always assign a button to cancel the set recoil compensation. `set_off_key`
 

## 2. Set the fire key and the mode switch key. 


- the `fire key` button needs to be consistent with the game settings, and in the game to cancel the left mouse button binding.
- When the `mode switch key` is pressed, recoil zoom  3-4x , easy to use quadruple mirror.
- By default , `fire key` is `pause` ,  `mode switch key` is `capslock`.
- **All weapons use the single-shot model, which converts the individual into a fully automated mode, including M16a1. **

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014110324.png)


## 3. Ignore Key


- You can set a ignore Key, and when the key is pressed, the script pauses.
- Limited by LGS, you can only select "lalt", "ralt", "alt" "lshift", "rshift", "shift" "lctrl", "rctrl", "ctrl" and Logitech G Key(Logitech game keyboard only)
- By default is "lshift" 

## 4. Sensitivity Setting 

- If you modify the mouse sensitivity settings in the game menu, you need to modify the settings.
- Mouse dpi does not affect the script running, Logitech has done this.

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171015014208.png)

## 5. Obfs Setting

- In the default mode, the shooting interval varies randomly from 30ms to 39ms. You can modify several variables to change this random range.

- When `weapon_speed_mode = ture`, the use of weapons based on the rate of random fire.

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

- recoil table some from [mpgh](mpgh.net/forum/forumdisplay.php?f=913) / [uc](unknowncheats.me/forum/playerunknown-s-battlegrounds/)e or other forums public information , other from developer self testing.
- all other source code, write by my self.
- [The Unlicense](https://github.com/liantian-cn/logitech-pubg/blob/master/LICENSE "The Unlicense")
- No service, any suggest can use [Issues](https://github.com/liantian-cn/logitech-pubg/issues?q= "Issues").



#  风险自负。


- `logitech gaming software`过去没有触发过任何Ban wave，但过去没有，不代表将来也没有。

#  更新说明


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

你可能没有注意到Pubg是以管理员身份运行的，也许是因为pubg是 steam.exe的子进程 , steam 又是steam update的子进程。 steam update 以管理员权限更新steam。 也或许，是因为网游加速器需要lsp劫持或者vpn拨号，是以管理员权限启动的，然后通过加速器启动的游戏。

### 设置 "当游戏正在运行时锁定配置" ###
默认的，LGS只对当前的活动窗口生效。[GetActiveWindow](https://msdn.microsoft.com/en-us/library/windows/desktop/ms646292(v=vs.85).aspx) ,在Win10中，活动窗口可能被输入法或者提醒功能抢占。



# 一些不无聊可以谈谈的问题

这些问题，国内玩家问的很多，很多论坛都在谈论，随便说说。

## Q1: 为什么我看隔壁的鼠标宏只能打在一个点上？这个项目却跟没用一样 ##

A: 请区分“鼠标宏”和“无后坐力挂”的区别。

在PUBG这个游戏内，后座力由几个向量构成:

* 垂直方向上：
  * 一个非线性的固定后座力。
  * 一个最大值线性增加的随机后座力。
  * 一个抵抗后座力恢复效果，同样包含固定和随机的成分。

* 水平方向上：
  * 只有一个最大值线性增加的随机后座力。

* 一个线性增长的散射度。令你瞄准也可能会打歪。

后座力上的随机性，使的这个游戏没有完美的压枪，即便APLUS和shourd的爆头率，也是远低于他们csgo的。
更不存在完美的“鼠标宏”，宏只能对垂直方向的非线性后座力有效，所以在作者看来：`这个repository的效果，虽然不能说完美，但已经尽力了，鼠标宏能实现的不过如此。`

再来说说“**无后坐力挂**”，目前无后坐力挂分为两种：

* 修改游戏pak文件实现的无后坐力，可以参见[UC论坛的帖子](https://www.unknowncheats.me/forum/playerunknown-s-battlegrounds/245772-recoil-gold-players-pak-mods.html)，完全利用蓝洞的设计漏洞实现。俗称的"无后"
* 写内存的方式实现的无后座力，就是俗称的"外挂"。
  * 喜欢研究代码，可以参见[G-E-N-E-S-I-S/TslGame_MULTI_HACK](https://github.com/G-E-N-E-S-I-S/TslGame_MULTI_HACK)和[TJ888/PUBG-SDK](https://github.com/TJ888/PUBG-SDK)，学习技术总是无罪的。

不管哪种，都可以实现枪的子弹打到一个点上。目前来说，这都是高风险的作弊行为。

## Q2: 怎么看待鼠标宏？ ##

A: 参考[wiki对于"作弊"的解释](https://en.wikipedia.org/wiki/Cheating)：
It is generally used for the breaking of rules to gain unfair advantage in a competitive situation. 
翻译过来就是：在竞争中获得不公平的优势。
那么什么是不公平的，什么又是公平，存在公平么？

* 144hz的显示器，相对60hz的显示器，是否是不公平的？
* 使用[ROG的声波雷达](https://rog.asus.com/technology/rog-sound-innovations/sonic-radar/)，相对普通声卡，是否是公平的？
* 使用8700k+1080ti流畅玩家，是否对于3570+760的玩家是不公平？

所以本来本来没有绝对的公平，只能define 公平=一个限度内的不公平。

所以，鼠标宏是否算作作弊，要看你心中的限度有多大。

## Q3: 作者现在什么枪用什么鼠标宏？ ##

如前所述，在pubg中，鼠标宏的作用极其有限。所以，当你游戏时间超过200小时的时候，鼠标宏可能除了用于M16A1的连射外就无他用了。
liantian就是这个状态，目前游戏时间305小时，这个宏基本用不到了...


## Q4：我的朋友用罗技鼠标宏被封号了 ##

A：不管你在哪个论坛看到这个言论，99%有以下几个真相：
 
* "我的朋友"="我自己"
* 如果不是吓唬人，那就是那个LZ买到了“无后pak”或者“无后挂”。

## Q5：罗技鼠标宏会被检测么？ ##

A：几乎可以100%确定，已经被检测到了。

被任何主流反作弊检测到并不难，毕竟....：

* 宏不是硬件宏，只是用LGS内置的LUA引擎运行的软件宏而已。
* LGS没有任何反注入、反检测什么的。
* 宏是明文保存在你的电脑里，并加载到内存里的。

## Q6：罗技鼠标宏会被封号么？ ##

A： 有微小的可能，很难想象。

罗技是世界最大的游戏外设制造商，自定义脚本这个功能，作为罗技高端G系列键鼠的卖点而存在。
所以，如果任何游戏厂商想在自己的游戏中鼠标宏无法作用，与其去封号，不如去找外设厂商谈谈。

目前，即便竞技性最强的CS:GO，也没有发生应为几大外设厂商的宏功能导致封号的案例发生。

## Q7: 付费指导 ##

A: 抱歉，没精力，懒。


## Q8: 推荐作弊器么 ##

A: 外挂那么贵，吃鸡封号成本那么高，有钱想爽，不如去大保健。


# 版权说明 

- recoil table 后座力表格来自[mpgh](mpgh.net/forum/forumdisplay.php?f=913) 、 [uc](unknowncheats.me/forum/playerunknown-s-battlegrounds/) 等论坛的公开信息及个人测试。
- 后座力表格以外的源代码，均作者自己书写。
- 使用[The Unlicense](https://github.com/liantian-cn/logitech-pubg/blob/master/LICENSE "The Unlicense")授权，允许任意使用。（拿去卖也不介意，但麻烦自行售后）
- 不提供任何服务，功能性建议可以在[Issues](https://github.com/liantian-cn/logitech-pubg/issues?q= "Issues")提出。



