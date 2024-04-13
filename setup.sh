# TODO:
# - Map function keys: https://github.com/jergusg/k380-function-keys-conf
# - Shortcut to change from light to dark theme

echo "Updating APT and installing software packages."
# sudo apt update
sudo apt install xinput i3 pip arandr

# Setup keyboard
setxkbmap -layout us -variant intl

# Add user to video group. This allows sudoless 'brightnessctl' usage
usermod -aG video ${USER}

# Setup mouse
echo "Configuring the right mouse button as the primary button." 
logi_mouse_id=$(xinput list | grep "Logitech USB Receiver Mouse" | awk -F'=' '{print $2}' | awk '{print $1}')
xinput set-button-map "$logi_mouse_id" 3 2 1
