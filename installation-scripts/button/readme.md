The code in this directory programs a red button to start and stop the complete application.
Button: rohs usb webkey button,
like https://www.alibaba.com/product-detail/Programmable-Online-Click-Mini-French-Flyer_62024278303.html?spm=a2700.details.0.0.40da257cKEmeFX

This only works in Linux (tested on Ubuntu). Directories are hardcoded absolute paths so check if correct on new
installation.

1. Run `sudo apt install gnome-terminal`
2. Run `sudo apt-get install python3-evdev` (not sure if this is needed)
2. Put button-listener-starter.desktop in ~/.config/autostart. This ensures that button-listener.py is started on
   booting.
2. Ensure that button device is owned by current user instead of root by adding the file 99-rode-knop-permnission.rules
   to /etc/udev/rules.d. Attributes may need to be adjusted based on attribute values as
   shown by `sudo udevadm info --name=/dev/input/by-id/usb-WebKey_WebKey-event-kbd --attribute-walk`
3. If button-listener.py detects a button press, it runs the button-action.sh script.
4. The button-action.sh starts or shuts down the application (depending on whether it is already running in Podman).

