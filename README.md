# logitech-pubg
PUBG no-recoil script for Logitech gaming mouse 

(English translation part comes from google)


##  AY YOUR OWN RISK. / 风险自负。


- `logitech gaming software` never got banwave in the past,but does not mean that there is no future.
- `logitech gaming software`过去没有触发过任何Ban wave，但过去没有，不代表将来也没有。

## ChangeLog / 更新说明

2017.10.15

- Add sensitivity setting.
- 增加灵敏度设置。 


2017.10.14 

- Added uzi and scar-l recoil table.
- The default fire button is changed to "pause".
- Removed the full part mode because the chances of using are too small, resulting in a lack of testing.
- Rewriting the logic: now the excitation speed is related to the weapon firing rate.


- 新增了uzi 和 scar-l 的后座力表格。
- 默认开火键修改为"pause"
- 移除了全配件模式，因为使用机会太小，导致缺乏测试。
- 重写了逻辑：现在激发速度和武器射速相关。

## How To Use / 食用说明

- download and install `logitech gaming software`[LGS]
  - http://support.logitech.com/software/lgs
- click PUBG in LGS, select `Scripting`.
  ![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014103649.png)
- copy and paste script from [adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua) to script box.
- Ctrl + S to save.



- 下载并安装`logitech gaming software`。
  - LGS下载地址 : http://support.logitech.com/software/lgs
- 点击pubg，选择编写脚本。
  ![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014103015.png)

- 复制[adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua)的代码到脚本框内。

- 按ctrl+s 保存。



### Edit Setting / 编辑设置

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014104238.png)
  
#### 1. Assigned button number for weapon / 为枪械分配按键编号

- the button number can be find in log windows, when the mouse button click, log prompt `event = MOUSE_BUTTON_RELEASED, arg = X`, the X is the button number.
- Weapon has 6 kinds, and different models of Logitech mouse function keys may be less than 6, for unnecessary weapons allocation `nil` value.
- You should always assign a button to cancel the set recoil compensation. `set_off_key`
 
- 按键编号可以通过查看下方日志得到，当按下鼠标按键时，下方日志提示`event = MOUSE_BUTTON_RELEASED , arg = X`，这个X就是按键编号。
- 枪械拥有6种，而不同型号的罗技鼠标功能键数量可能小于6，为不需要使用的武器分配`nil`值。
- 总是应该为取消设置后座力补偿分配一个按键。`set_off_key`


#### 2. Set the fire key and the mode switch key. / 设置开火按键和模式切换按键


- the `fire key` button needs to be consistent with the game settings, and in the game to cancel the left mouse button binding.
- When the `mode switch key` is pressed, recoil zoom  3-4x , easy to use quadruple mirror.
- By default , `fire key` is `pause` ,  `mode switch key` is `capslock`


- 开火`fire key`按键需要和游戏内设置一致，并在游戏内取消鼠标左键的绑定。
- 模式切换键`mode switch key`按下时，后座力放大3~4倍，便于使用四倍镜。
- 默认情况，开火键是"Pause"，方向键上方最右一个。使用大小写锁定键切换4倍模式。

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014110324.png)


#### 3. You should always use Ctrl + S to save script after edit script. / 编辑脚本后记得ctrl + s保存。

#### 4. All weapons use the single-shot model, which converts the individual into a fully automated mode, including M16a1. / 所有武器使用单发模式，这个脚本会将单发转化为全自动模式，包括M16a1


#### 5. Sensitivity Setting & Delay Setting / 鼠标灵敏度设置和延迟设置。

## Recommended settings / 推荐设置

罗技的大多数游戏鼠标包含5个快捷键。默认1个前进、1个后退、1个放大dpi，一个缩小dpi，一个放大镜。

- 分配一个按键使用ump9，这样按键同时也适合全配件的m416和scar-l.
- 分配一个按键使用m16a1, m16a1搭配红点瞄准镜或全息瞄准镜，不需要其他配件，就可以发挥威力。
- 分配一个按键使用akm，akm的模式同样适用于sks和mini 14.
- 分配一个按键使用大跳。
- 分配一个给取消后座力补偿。


Logitech's most gaming mice contain 5 shortcuts. The default 1 forward, 1 back, 1 zoom, a reduced dpi, a magnifying glass.

- Assign a button to use ump9, so that the keys are also suitable for full accessory m416 and scar-l.
- Assign a button to use m16a1, m16a1 with red dot sight or holographic sight, do not need other accessories, you can play a power.
- Assign a button using akm, akm mode also applies to sks and mini 14.
- Assign a button to use a big jump.
- Assign a button  to cancel the no-recoil.

![](https://github.com/liantian-cn/logitech-pubg/raw/master/img/20171014153403.png)









## Copyright / 版权说明 

- recoil table some from elitepvpers or ownedcore or other forums public information , other from developer self testing.
- all other source code, write by my self.
- [The Unlicense](https://github.com/liantian-cn/logitech-pubg/blob/master/LICENSE "The Unlicense")
- No service, any suggest can use [Issues](https://github.com/liantian-cn/logitech-pubg/issues?q= "Issues").



- recoil table 后座力表格来自elitepvpers / ownedcore 等论坛的公开信息及个人测试。
- 后座力表格以外的源代码，均作者自己书写。
- 使用[The Unlicense](https://github.com/liantian-cn/logitech-pubg/blob/master/LICENSE "The Unlicense")授权，允许任意使用。
- 不提供任何服务，功能性建议可以在[Issues](https://github.com/liantian-cn/logitech-pubg/issues?q= "Issues")提出。
