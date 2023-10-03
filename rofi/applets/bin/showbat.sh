# Import Current Theme
source "$HOME"/.config/rofi/applets/shared/theme.bash
theme="$type/$style"

# Battery Info
battery="`acpi -b | cut -d',' -f1 | cut -d':' -f1`"
status="`acpi -b | cut -d',' -f1 | cut -d':' -f2 | tr -d ' '`"
percentage="`acpi -b | cut -d',' -f2 | tr -d ' ',\%`"
time="`acpi -b | cut -d',' -f3`"

# notify-send -u low " Remaining : ${percentage}% $ICON_CHRG Status : $status"
notify-send -u low "Remaining: ${percentage}%
Status: $status"
# notify-send -u low "$ICON_CHRG Status : $status"
