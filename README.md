# logitech-pubg
PUBG no-recoil script for Logitech gaming mouse 

## How To Use / 食用说明


- download and install `logitech gaming software`[LGS]
- 下载并安装`logitech gaming software`。
- http://support.logitech.com/software/lgs

- click PUBG in LGS, select `Scripting`.
- 点击pubg，选择编写脚本

![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014103015.png)![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014103649.png)


- copy and paste script from [adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua) to script box.
- 复制[adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua)的代码到脚本框内。

- Ctrl + S to save.
- 按ctrl+s 保存。

### Edit Setting / 编辑设置

![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014104238.png)
  
#### Assigned button number for weapon / 为枪械分配按键编号

- the button number can be find in log windows, when the mouse button click, log prompt `event = MOUSE_BUTTON_RELEASED, arg = X`, the X is the button number.
- Weapon has 6 kinds, and different models of Logitech mouse function keys may be less than 6, for unnecessary weapons allocation `nil` value.
- You should always assign a button to cancel the set recoil compensation. `set_off_key`
 
- 按键编号可以通过查看下方日志得到，当按下鼠标按键时，下方日志提示`event = MOUSE_BUTTON_RELEASED , arg = X`，这个X就是按键编号。
- 枪械拥有6种，而不同型号的罗技鼠标功能键数量可能小于6，为不需要使用的武器分配`nil`值。
- 总是应该为取消设置后座力补偿分配一个按键。`set_off_key`


#### Set the fire key and the mode switch key. / 设置开火按键和模式切换按键


- the fire key button needs to be consistent with the game settings, and in the game to cancel the left mouse button binding.
  When the mode switch key is pressed, recoil magnifies 3-4 times, easy to use quadruple mirror.

- 开火按键需要和游戏内设置一致，并在游戏内取消鼠标左键的绑定。
  模式切换键按下时，后座力放大3~4倍，便于使用四倍镜。

![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014110324.png)