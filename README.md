# SayIntentions.AI X-Plane 12 radio plugin

This plugin was created to make in-sim COM volume knobs and TX/RX indications work properly with SayIntentions.

## Installation
- Copy `siai-radios.lua` to `<X-Plane 12>/Resources/plugins/FlyWithLua/Scripts/`.

## Configuration in the SayIntentions Client app
1. Open the Volume Mixer panel.
2. For both COM1 and COM2:
     - Set `How should the volume control for this audio channel be managed` to `SayIntentions.AI LVAR / Dataref`.
     - Confirm with OK.

## Notes
- The script is currently in a PoC state.
- Tested ONLY on X-Plane version 12.4.3 (`12.4.3-r2-15ff1e4d`).
- Tested ONLY with SayIntentions.AI client `5.1.1.0`.
- Tested with default G1000 avionics, but it should work with all aircraft that correctly provide the following datarefs:
    - `sim/cockpit2/radios/actuators/audio_volume_com1`
    - `sim/cockpit2/radios/actuators/audio_volume_com2`
    - `sim/cockpit2/radios/actuators/audio_selection_com1`
    - `sim/cockpit2/radios/actuators/audio_selection_com2`
    - `sim/cockpit2/radios/actuators/audio_com_selection`

## Bug reports
If your aircraft does not work as expected:
1. Open an issue.
2. Briefly describe the problem.
3. Attach `Log.txt` from the X-Plane 12 root folder.