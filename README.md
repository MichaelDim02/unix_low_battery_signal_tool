# unix_low_battery_signal_tool
A minimal utility I created myself to help me with power management. If you use a wm like i3 or dwm, setting up a proper power utility system so I hope this might help you as well.

## What you'll need
* acpi to get the battery information \n ```sudo pacman -S acpi```
* Dunst to receive the notification \n```sudo pacman -S dunst``` \n Make sure it's running.

* notify-send to send the notification to Dunst
* mpv to play the siren sound, which btw is from pacman :) \n ``` sudo pacman -S mpv ```
* Cronie \n https://www.youtube.com/watch?v=rgSxYvFWjUY
