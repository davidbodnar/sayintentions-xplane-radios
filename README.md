# SayIntentions.AI X-Plane 12 radio plugin

## Instalation
- Copy ´siai-radios.lua´ to your ´<X-Plane>/Resources/plugins/FlyWithLua/Scripts/´ folder.

## Configuration in SayIntentions Client app
1) Open Volume mixer panel
2) Set both COM1/2
    - ´How should the volume control for this audio channel be managed´ to ´SayIntentions.AI LVAR / Dataref´
    - Confirm by OK

## Notes
- The current state of the script is more likely a PoC.
- Tested ONLY on current X-Plane version 12.4.3 (12.4.3-r2-15ff1e4d)
- Tested ONLY with current SayIntentions.AI client 5.1.1.0
- Tested with default G1000 avionics, but should work with all aircrafts properly setting following datarefs
    - ´sim/cockpit2/radios/actuators/audio_volume_com1´
    - ´sim/cockpit2/radios/actuators/audio_volume_com2´
    - ´sim/cockpit2/radios/actuators/audio_selection_com1´
    - ´sim/cockpit2/radios/actuators/audio_selection_com2´
    - ´sim/cockpit2/radios/actuators/audio_com_selection´

## Bug reports
If your desired aircraft does not work:
1) Open issue
2) Describe briefly the problem
3) Attach Log.txt from X-Plane 12 root folder