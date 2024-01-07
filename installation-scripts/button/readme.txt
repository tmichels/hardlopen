The code in this directory programs a red button to start and stop the complete application.
Button: rohs usb webkey button, like https://www.alibaba.com/product-detail/Programmable-Online-Click-Mini-French-Flyer_62024278303.html?spm=a2700.details.0.0.40da257cKEmeFX

This only works in Linux (tested on Ubuntu). Directories are hardcoded absolute paths so check if correct on new installation.

Put button-listener-starter.desktop in ~/.config/autostart. This ensures that button-listener.py is started on booting.
If button-listener.py detects a button press, it runs the button-action.sh script.
The button-action.sh starts or shuts down the application (depending on whether it is alreade running in Docker).

