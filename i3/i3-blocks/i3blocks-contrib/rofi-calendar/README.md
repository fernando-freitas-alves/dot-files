# rofi-calendar

Have a minimal calendar pop up in rofi when clicking the date blocklet

![](screenshot.png)

![](screenshot2.png)
	
# Dependencies

* rofi 
* cal from util-linux package, supporting --color=always
# Installation

* Copy the script into your directory of choice, e.g. ~/.i3blocks/blocklets
* Give it execution permission (`chmod +x rofi-calendar`)
* Edit rofi launch options in the script to fit your needs
* Add the following blocklet to your i3blocks.conf:

```ini
[rofi-calendar]
command=$SCRIPT_DIR/rofi-calendar
label=
interval=3600
```

