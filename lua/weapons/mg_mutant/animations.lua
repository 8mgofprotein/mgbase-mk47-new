AddCSLuaFile()

SWEP.Animations = {
    ["Idle"] = {--idle is a special animation index, movement animations are played when this is on
        Sequences = {"idle"},
        Fps = 30,
        Events = {
        {Time = 0, Callback = function(self) self:EnableGrip() end}       
        }
        --does not need NextSequence to loop, it's an exception to the rule
    },

    ["Draw"] = {
        Sequences = {"draw"},
        Length = 0.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.galima.raise")) end}
        }
    },

    ["Holster"] = {
        Sequences = {"holster"},
        Length = 0.5,
        Fps = 30,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.galima.drop")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
        }
    },

    ["Equip"] = {
        Sequences = {"draw_First"},
        Length = 1.5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_raise_first_04")) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.75, Callback = function(self) self:EnableGrip() end},
            {Time = 1.033, Callback = function(self) self:EnableGrip() end},
            {Time = 0.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_raise_first_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_raise_first_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_raise_first_01")) end},
        }
    },

    ["Reload"] = {
        Sequences = {"reload"},
        Length = 2.65,
        Fps = 30,
        MagLength = 2,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.3, Callback = function(self) self:EnableGrip() end},
            {Time = 2.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_06")) end},
            {Time = 1.9, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_05")) end},
            {Time = 1.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_04")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_02")) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_01")) end},
        }
    },
    
    ["Reload_Fast"] = {
        Sequences = {"reload_fast"},
        Length = 1.65,
        Fps = 30,
        MagLength = 1.12,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_fast_01")) end},
            {Time = 0.05, Callback = function(self) self:DisableGrip() end},
            {Time = 1.267, Callback = function(self) self:EnableGrip() end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_fast_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_fast_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_fast_02")) end},
        }
    },

    ["reload_smag"] = {
        Sequences = {"reload_smag"},
        Length = 2,
        Fps = 30,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_05")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_03")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_01")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_02")) end},
        }
    },
    ["reload_dmag"] = {
        Sequences = {"reload_dmag"},
        Length = 2,
        Fps = 19,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.363, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_05")) end},
            {Time = 1.72, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_03")) end},
            {Time = 2.563, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_01")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_02")) end},
        }
    },
        ["reload_dmag_fast"] = {
        Sequences = {"reload_dmag"},
        Length = 2,
        Fps = 22,
        MagLength = 1.5,
        NextSequence = "Idle",
        Events = {
             {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.363, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_05")) end},
            {Time = 1.72, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_04")) end},
            {Time = 0.933, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_03")) end},
            {Time = 2.563, Callback = function(self) self:EnableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_01")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_02")) end},
        }
    },
           
    ["reload_smag_fast"] = {
        Sequences = {"reload_smag_fast"},
        Length = 1.4,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) self:DisableGrip() end},
            {Time = 1.233, Callback = function(self) self:EnableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_fast_01")) end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_fast_03")) end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_fast_05")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_fast_04")) end},
            {Time = 1.233, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_fast_06")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_fast_02")) end},
        }
    },

    ["Reload_Xmag"] = {
        Sequences = {"reload_xmag"},
        Length = 2.8,
        Fps = 30,
        MagLength = 2.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_06")) end},
            {Time = 2.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_07")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_04")) end},
            {Time = 1.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_05")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_02")) end},
            {Time = 0.567, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_03")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_01")) end},
            {Time = 2.5, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Xmag_Fast"] = {
        Sequences = {"reload_xmag_fast"},
        Length = 1.45,
        Fps = 30,
        MagLength = 1.15,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_fast_02")) end},
            {Time = 0.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_fast_03")) end},
            {Time = 0.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_fast_01")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_fast_06")) end},
            {Time = 0.767, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_fast_04")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_fast_05")) end},
            {Time = 1.3, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty"] = {
        Sequences = {"reload_empty"},
        Length = 3.15,
        Fps = 30,
        MagLength = 1.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_01")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.9, Callback = function(self) self:EnableGrip() end},
            {Time = 2.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_07")) end},
            {Time = 2.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_06")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_05")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_03")) end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_02")) end},
            {Time = 1.633, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_04")) end},
        }
    },

    ["Reload_Empty_Fast"] = {
        Sequences = {"reload_empty_fast"},
        Length = 2.15,
        Fps = 30,
        MagLength = 1.12,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.055, Callback = function(self) self:DisableGrip() end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_fast_01")) end},
            {Time = 1.8, Callback = function(self) self:EnableGrip() end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_fast_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_fast_02")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_fast_05")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_empty_fast_04")) end},
        }
    },

    ["reload_empty_smag"] = {
        Sequences = {"reload_empty_smag"},
        Length = 2.7,
        Fps = 30,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_01")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_06")) end},
            {Time = 1.867, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_05")) end},
            {Time = 1.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.5, Callback = function(self) self:EnableGrip() end},
        }
    },
        ["reload_empty_dmag"] = {
        Sequences = {"reload_empty_dmag"},
        Length = 2.7,
        Fps = 18,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_01")) end},
            {Time = 3.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_06")) end},
            {Time = 2.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_05")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 3.3, Callback = function(self) self:EnableGrip() end},
        }
    },
	["reload_empty_dmag_fast"] = {
        Sequences = {"reload_empty_dmag"},
        Length = 2.7,
        Fps = 21,
        MagLength = 1.45,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 1.067, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_03")) end},
            {Time = 0.333, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_02")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_01")) end},
            {Time = 3.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_06")) end},
            {Time = 2.667, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_05")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_04")) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 3.3, Callback = function(self) self:EnableGrip() end},
        }
    },
    ["reload_empty_smag_fast"] = {
        Sequences = {"reload_empty_smag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) end},
            {Time = 0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_fast_01")) end},
            {Time = 1.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_fast_03")) end},
            {Time = 0.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_fast_02")) end},
            {Time = 1.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_fast_05")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_smags_empty_fast_04")) end},
            {Time = 1.85, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Reload_Empty_Xmag"] = {
        Sequences = {"reload_empty_xmag"},
        Length = 3.55,
        Fps = 30,
        MagLength = 2.25,
        NextSequence = "Idle",
        Events = {
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 2.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_055")) end},
            {Time = 3.25, Callback = function(self) self:EnableGrip() end},
            {Time = 0.367, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_02")) end},
            {Time = 1.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_03")) end},
            {Time = 0.0, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_01")) end},
            {Time = 2.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_06")) end},
            {Time = 3.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_07")) end},
            {Time = 1.733, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_04")) end},
            {Time = 1.967, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_05")) end},
        }
    },

    ["Reload_Empty_Xmag_Fast"] = {
        Sequences = {"reload_empty_xmag_fast"},
        Length = 2,
        Fps = 30,
        MagLength = 1.1,
        NextSequence = "Idle",
        Events = {
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.0, Callback = function(self) end},
            {Time = 0.1, Callback = function(self) self:DisableGrip() end},
            {Time = 1.8, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_fast_06")) end},
            {Time = 1.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_fast_04")) end},
            {Time = 1.4, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_fast_05")) end},
            {Time = 0.533, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_fast_02")) end},
            {Time = 0.833, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_fast_03")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_reload_xmags_empty_fast_01")) end},
            {Time = 1.85, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Fire"] = {
        Sequences = {"fire"},
        Fps = 60,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoParticle("Ejection", "shell_eject")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Fire_Last"] = {
        Sequences = {"fire"},
        Fps = 60,
        NextSequence = "Idle",
        Events = {
            {
                Time = 0, 
                Callback = function(self) 
                    self:DoParticle("MuzzleFlash", "muzzle")
                    self:DoParticle("Ejection", "shell_eject")
                    self:DoEjection("shell_eject")
                end
            },
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.mike4.fire.last")) end},
            {Time = 0, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Ads_In"] = {
        Sequences = {"ads_in"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.galima.ads.up")) end}
        }
    },

    ["Ads_Out"] = {
        Sequences = {"ads_out"},
        Length = 0.3,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.galima.ads.down")) end}
        }
    },

    ["Sprint_In"] = {
        Sequences = {"sprint_in"},
        Fps = 24,
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
        --NextSequence = "Sprint_Loop",
    },

    ["Sprint_Loop"] = {
        Sequences = {"sprint_loop"},
        Fps = 30,
        NextSequence = "Sprint_Loop", --make our state loop
        --while sprinting, the playback rate of the viewmodel is scaled with velocity (cod-like behaviour)
        Events = {
        }
    },

    ["Sprint_Out"] = {
        Sequences = {"sprint_out"},
        Length = 0.3,
        Fps = 24,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Firemode_Auto"] = {
        Sequences = {"semi_on"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.galima.fire.switch.off")) end}
        }
    },
    
    ["Firemode_Semi"] = {
        Sequences = {"semi_off"},
        Length = 0.75,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end}, 
            {Time = 0, Callback = function(self) self:DoSound(Sound("mw19.galima.fire.switch.on")) end}
        }
    },

    ["Inspect"] = {
        Sequences = {"inspect_cust"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 4.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_05")) end},
            {Time = 3.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_04")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_01")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_03")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_02")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
        }
    },

    ["Inspect_Drum"] = {
        Sequences = {"inspect_drum"},
        Length = 5,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 4.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_05")) end},
            {Time = 3.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_04")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_01")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_03")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_02")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
        }
    },
    ["Rechamber"] = {
        Sequences = {"boltpull"},
        Length = 1,
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 4.2, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_05")) end},
            {Time = 3.467, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_04")) end},
            {Time = 0.033, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_01")) end},
            {Time = 2.433, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_03")) end},
            {Time = 1.3, Callback = function(self) self:DoSound(Sound("ps_wfoly_plr_ar_galima_inspect_02")) end},
            {Time = 0.133, Callback = function(self) self:DisableGrip() end},
            {Time = 4.3, Callback = function(self) self:EnableGrip() end},
        }
    },
    ["Jog_Out"] = {
        Sequences = {"sprint_out"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Jump"] = {
        Sequences = {"jump"},
        Fps = 15,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Land"] = {
        Sequences = {"jump_land"},
        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Melee"] = {
        Sequences = {"melee_miss_01", "melee_miss_02", "melee_miss_03"},
        Length = 0.6, --if melee misses

        Size = 15,
        Range = 40,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Miss_Medium")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end} 
        }
    },

    ["Melee_Hit"] = {
        Sequences = {"melee_hit_01", "melee_hit_02", "melee_hit_03"},
        Length = 0.3, --if melee hits

        Damage = 16,

        Fps = 30,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0, Callback = function(self) self:DoSound(Sound("MW_Melee.Flesh_Medium")) end},
            {Time = 0.8, Callback = function(self) self:EnableGrip() end}
        }
    },

    ["HybridOn"] = {
        Sequences = {"hybrid_toggle_off"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:EnableGrip() end},
            {Time = 0.15, Callback = function(self) self:DoSound(Sound("Flipsight.Up")) end}
        }
    },

    ["HybridOff"] = {
        Sequences = {"hybrid_toggle_on"},
        Fps = 30,
        Length = 0.9,
        NextSequence = "Idle",
        Events = {
            {Time = 0, Callback = function(self) self:DisableGrip() end},
            {Time = 0.7, Callback = function(self) self:EnableGrip() end},
            {Time = 0.1, Callback = function(self) self:DoSound(Sound("Flipsight.Down")) end}
        }
    },
}