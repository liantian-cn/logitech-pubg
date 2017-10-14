# logitech-pubg
PUBG no-recoil script for Logitech gaming mouse 

## How To Use / 食用说明


- download and install `logitech gaming software`[LGS]
  下载并安装`logitech gaming software`。
  http://support.logitech.com/software/lgs

- click PUNG in LGS, select `Scripting`.
  点击pubg，选择编写脚本
![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014103015.png)![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014103649.png)


- copy and paste script from [adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua) to script box.
  复制[adv_mode.lua](https://raw.githubusercontent.com/liantian-cn/logitech-pubg/master/adv_mode.lua)的代码到脚本框内。

- Ctrl + S to save.
  按ctrl+s 保存。

### Edit Setting / 编辑设置

![](https://github.com/liantian-cn/logitech-pubg/raw/master/20171014104238.png)
  
#### Assigned button number for weapon / 为枪械分配按键编号

the button number can be find in log windows, when the mouse button click, log prompt `event = MOUSE_BUTTON_RELEASED, arg = X`, the X is the button number.

 
- 按键编号可以通过查看下方日志得到，当按下鼠标按键时，下方日志提示`event = MOUSE_BUTTON_RELEASED , arg = X`，这个X就是按键编号。
- 枪械拥有6种，而不同型号的罗技鼠标功能键数量可能小于6，为不需要使用的武器分配`nil`值。
- 总是应该为取消设置后座力补偿分配一个按键。`set_off_key`
