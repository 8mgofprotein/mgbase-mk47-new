AddCSLuaFile()


---Mutant---
sound.Add({
    name =           "mw19.mutant.fire",
    channel =        CHAN_WEAPON,
    level = 145	,
    volume =         14,
    pitch = {100,100},
    sound = {"zeron/weapons/mutant/weap_akilo_fire_plr_shot_01.wav"
            }              
})
sound.Add({
    name =           "mw19.mutant.fire.suppressed",
    channel =        CHAN_WEAPON,
    level = 90,
    volume =         10,
    pitch = {-2,2},
    sound = {"zeron/weapons/mutant/mg_mutant_fire_suppressed.ogg"            }              
})
sound.Add({
    name =            "Atmo_Mutant.Outside",
    channel =        CHAN_ATMO,
 volume =      1.5,
    sound = {"zeron/weapons/mutant/weap_ar9_fire_plr_atmo_ext1_01.wav"}
})
sound.Add({
    name =            "Atmo_Mutant.Inside",
    channel =        CHAN_ATMO,
 volume =      1.2,
    sound = {"zeron/weapons/mutant/weap_ar_fire_plr_atmo_int1_03.wav"}
})