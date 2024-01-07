import subprocess
from datetime import datetime

from evdev import InputDevice, categorize, ecodes

# See https://python-evdev.readthedocs.io/en/latest/tutorial.html#reading-events

# Button is technically a keyboard and can be read by its device ID
dev = InputDevice('/dev/input/by-id/usb-WebKey_WebKey-event-kbd')
# Each time the button is pressed, the following sequence is read (as programmed in button hardware)
button_defined_sequence = ['KEY_LEFTCTRL', 'KEY_LEFTCTRL', 'KEY_LEFTSHIFT', 'KEY_LEFTSHIFT',
                           'KEY_LEFTCTRL', 'KEY_LEFTCTRL', 'KEY_LEFTSHIFT', 'KEY_LEFTSHIFT',
                           'KEY_LEFTCTRL', 'KEY_LEFTCTRL', 'KEY_LEFTSHIFT', 'KEY_LEFTSHIFT',
                           'KEY_LEFTCTRL', 'KEY_LEFTCTRL', 'KEY_LEFTSHIFT', 'KEY_LEFTSHIFT',
                           'KEY_LEFTCTRL', 'KEY_LEFTCTRL', 'KEY_LEFTSHIFT', 'KEY_LEFTSHIFT']

keys = []
for event in dev.read_loop():
    if event.type == ecodes.EV_KEY:
        keys.append(categorize(event).keycode)
    if keys == button_defined_sequence:
        keys = []
        print(datetime.now().time(), 'Knop gedrukt')
        popen = subprocess.run('gnome-terminal -x sh /home/thomas/projecten/hardlopen/installation-scripts/button/button-action.sh', shell=True, stderr=subprocess.PIPE, stdout=subprocess.PIPE)
