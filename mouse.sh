xinput --list --short
echo "Enter mouse ID:"
read -e MOUSE
echo "Enter touchpad ID:"
read -e TOUCHPAD
xinput --set-prop $MOUSE "Device Accel Constant Deceleration" 2.5
xinput --set-prop $MOUSE "Device Accel Velocity Scaling" 2
xinput set-prop $TOUCHPAD "Device Enabled" 0
