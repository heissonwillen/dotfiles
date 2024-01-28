# TODO:
# - Map function keys: https://github.com/jergusg/k380-function-keys-conf
# - Invert trackpad directions
# - Shortcut to change from light to dark theme

echo "Updating APT and installing software packages."
# sudo apt update
sudo apt install xinput i3

# Setup keyboard
setxkbmap -layout us -variant intl

# Setup mouse
echo "Configuring the right mouse button as the primary button." 
logi_mouse_id=$(xinput list | grep "Logitech USB Receiver Mouse" | awk -F'=' '{print $2}' | awk '{print $1}')
xinput set-button-map "$logi_mouse_id" 3 2 1
