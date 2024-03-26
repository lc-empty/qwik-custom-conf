# Colors
background='#1e1e2e'
foreground='#cdd6f4'

# black
color0='#181825'
color8='#313244'
# red
color1='#eba0ac'
color9='#f38ba8'
# green
color2='#a6e3a1'
color10='#94e2d5'
# yellow
color3='#f9e2af'
color11='#fab387'
# blue
color4='#74c7ec'
color12='#89dceb'
# magenta
color5='#cba6f7'
color13='#b4befe'
# cyan
color6='#94e2d5'
color14='#89dceb'
# white
color7='#f5e0dc'
color15='#cdd6f4'

accent='#f9e2af'

light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='JetBrains Mono:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Zafiro'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Arc-Dark'
icon_theme='Zafiro'
cursor_theme='Qogirr'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='10x48'
dunst_origin='top-right'
dunst_font='JetBrains Mono 10'
dunst_border='2'
dunst_separator='2'

# Picom
picom_backend='glx'
picom_corner='0'
picom_shadow_r='14'
picom_shadow_o='0.30'
picom_shadow_x='-12'
picom_shadow_y='-12'
picom_blur_method='none'
picom_blur_strength='0'

# Bspwm
bspwm_fbc="$color5"
bspwm_nbc="$background"
bspwm_abc="$color3"
bspwm_pfc="$color11"
bspwm_border='1'
bspwm_gap='3'
bspwm_sratio='0.50'
