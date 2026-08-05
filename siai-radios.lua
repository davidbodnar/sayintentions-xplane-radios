-- SayIntentions.AI radio plugin for X-Plane 12
-- Author David Bodnar https://github.com/davidbodnar
-- Repository URL: https://github.com/davidbodnar/sayintentions-xplane-radios

dataref("COM1_VOLUME", "sim/cockpit2/radios/actuators/audio_volume_com1", "readonly")
dataref("COM2_VOLUME", "sim/cockpit2/radios/actuators/audio_volume_com2", "readonly")

dataref("COM1_ACTIVE", "sim/cockpit2/radios/actuators/audio_selection_com1", "readonly")
dataref("COM2_ACTIVE", "sim/cockpit2/radios/actuators/audio_selection_com2", "readonly")

dataref("COM_SEL", "sim/cockpit2/radios/actuators/audio_com_selection", "readonly")

dataref("COM1_TX", "sim/atc/com1_tx_override")
dataref("COM2_TX", "sim/atc/com2_tx_override")
dataref("COM1_RX", "sim/atc/com1_rx_override")
dataref("COM2_RX", "sim/atc/com2_rx_override")

dataref("SI_PTT", "siai/radio_ptt", "readonly")

SI_COM1_VOLUME = create_dataref_table("siai/volume_com1", "Int")
SI_COM2_VOLUME = create_dataref_table("siai/volume_com2", "Int")

dataref("SI_COM1_RX", "siai/com1_receiving", "readonly")
dataref("SI_COM2_RX", "siai/com2_receiving", "readonly")

function sync_volumes()
    SI_COM1_VOLUME[0] = math.floor(COM1_VOLUME * 100)
    SI_COM2_VOLUME[0] = math.floor(COM2_VOLUME * 100)

    if COM1_ACTIVE == 1 and COM_SEL == 6 and SI_PTT == 1 then
        set("sim/atc/com1_tx_override", 1)
    else
        set("sim/atc/com1_tx_override", 0)
    end

    if COM2_ACTIVE == 1 and COM_SEL == 7 and SI_PTT == 1 then
        set("sim/atc/com2_tx_override", 1)
    else
        set("sim/atc/com2_tx_override", 0)
    end

    if SI_COM1_RX == 1 then
        set("sim/atc/com1_rx_override", 1)
    else
        set("sim/atc/com1_rx_override", 0)
    end

    if SI_COM2_RX == 1 then
        set("sim/atc/com2_rx_override", 1)
    else
        set("sim/atc/com2_rx_override", 0)
    end
end

do_every_draw("sync_volumes()")
