# ⚠️ Legacy repository

The main functionality that this plugin was originally created for was implemented on day one directly into the native SayIntentions application starting with version `5.2.4.5` and later.

SayIntentions now handles the following natively:
- COM1/COM2 volume control
- RX/TX indications on GNS 430/530 and G1000 avionics, and potentially other avionics that use the relevant core X-Plane datarefs

If you are using a recent SayIntentions build, the recommended setup is to use `Flight Simulator In-Dash Knobs` instead of the older LVAR/Dataref-based approach.

# SayIntentions.AI X-Plane 12 radio plugin

This plugin provides a lightweight compatibility layer for X-Plane 12 radio integration, enabling COM volume controls and TX/RX indications to work with SayIntentions.

The plugin currently focuses on:
- COM1/COM2 volume control support
- RX/TX indication support for avionics such as GNS 430/530 and G1000, and other aircraft that use the relevant X-Plane datarefs

Planned work:
- Intercom volume control support (Toliss)
- Detection of individual receiver unit power states

## Installation
- Copy `siai-radios.lua` to `<X-Plane 12>/Resources/plugins/FlyWithLua/Scripts/`.

## Configuration in the SayIntentions Client app
1. Open the Volume Mixer panel.
2. For both COM1 and COM2:
   - Set `How should the volume control for this audio channel be managed` to `SayIntentions.AI LVAR / Dataref`.
   - Confirm with OK.

## Notes
- This script is still in a proof-of-concept state.
- Tested only on X-Plane version 12.4.3 (`12.4.3-r2-15ff1e4d`).
- Tested only with the SayIntentions.AI client version `5.1.1.0`.
- Tested with default G1000 avionics, but it should work with any aircraft that correctly exposes or uses the following datarefs:
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