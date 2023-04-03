AddCSLuaFile()

PrecacheParticleSystem("AC_muzzle_rifle")
PrecacheParticleSystem("AC_muzzle_pistol_suppressed")
PrecacheParticleSystem("AC_muzzle_pistol_ejection")
PrecacheParticleSystem("AC_muzzle_pistol_smoke_barrel")
include("animations.lua")
include("customization.lua")

if CLIENT then
    killicon.Add( "mg_mutant", "VGUI/entities/mg_mutant", Color(255, 0, 0, 255))
    SWEP.WepSelectIcon = surface.GetTextureID("VGUI/entities/mg_mutant")
end

SWEP.Base = "mg_base"
SWEP.GripPoseParameters = {"grip_ang_offset", "grip_vert_offset", "grip_vert_pro_offset"}

SWEP.PrintName = "Mk47 Mutant"
SWEP.Category = "Modern Warfare"
SWEP.SubCategory = "Assault Rifles"
SWEP.Spawnable = true
SWEP.VModel = Model("models/kyo/v_mutant.mdl")
SWEP.WorldModel = Model("models/kyo/w_mutant.mdl")
SWEP.Trigger = {
    PressedSound = Sound("mw19.galima.fire.first"),
    ReleasedSound = Sound("mw19.galima.fire.disconnector"),
    Time = 0.022
}

SWEP.Slot = 2
SWEP.HoldType = "Rifle"

SWEP.Primary.Sound = Sound("mw19.mutant.fire")
SWEP.Primary.Ammo = "Ar2"
SWEP.Primary.ClipSize = 30
SWEP.Primary.Automatic = true
SWEP.Primary.BurstRounds = 1
SWEP.Primary.BurstDelay = 0
SWEP.Primary.RPM = 650  
SWEP.CanChamberRound = true  
SWEP.ReloadRechambers = false
SWEP.ParticleEffects = {
    ["MuzzleFlash"] = "AC_muzzle_rifle",
    ["MuzzleFlash_Suppressed"] = "AC_muzzle_pistol_suppressed",
    ["Ejection"] = "AC_muzzle_pistol_ejection", 
}

SWEP.Reverb = { 
    RoomScale = 50000, --(cubic hu)
    --how big should an area be before it is categorized as 'outside'?

    Sounds = {
        Outside = {
            Layer = Sound("Atmo_Mutant.Outside"),
            Reflection = Sound("Reflection_AR.Outside")
        },

        Inside = { 
            Layer = Sound("Atmo_AR.Inside"),
            Reflection = Sound("Reflection_AR.Inside")
        }
    }
}

SWEP.Firemodes = {
    [1] = {
        Name = "Full Auto",
        OnSet = function()
            return "Firemode_Auto"
        end
    },

    [2] = {
        Name = "Semi Auto",
        OnSet = function(self)
            self.Primary.Automatic = false
            --self.Primary.RPM = 450

            return "Firemode_Semi"
        end
    },

}

SWEP.BarrelSmoke = {
    Particle = "AC_muzzle_pistol_smoke_barrel",
    Attachment = "muzzle",
    ShotTemperatureIncrease = 35,
    TemperatureThreshold = 100, --temperature that triggers smoke
    TemperatureCooldown = 100 --degrees per second
}

SWEP.Cone = {
    Hip = 0.53, --accuracy while hip
    Ads = 0.035, --accuracy while aiming
    Increase = 0.075, --increase cone size by this amount every time we shoot
    AdsMultiplier = 0.16, --multiply the increase value by this amount while aiming
    Max = 1.4, --the cone size will not go beyond this size
    Decrease = 0.21, -- amount (in seconds) for the cone to completely reset (from max)
    Seed = 4182774 --just give this a random number
}

SWEP.Recoil = {
    Vertical = {1, 1.9}, --random value between the 2
    Horizontal = {-1.8, 1.8}, --random value between the 2
    Shake = 1.4, --camera shake
    AdsMultiplier = 0.2, --multiply the values by this amount while aiming
    Seed = 128134353, --give this a random number until you like the current recoil pattern
    ViewModelMultiplier = 1.32,
	AdsShakeMultiplier = 1.45,
	Punch = 0.7
}
SWEP.Bullet = {
    Damage = {35, 15}, --first value is damage at 0 meters from impact, second value is damage at furthest point in effective range
    DropOffStartRange = 16, --in meters, damage will start dropping off after this range
    EffectiveRange = 45, --in meters, damage scales within this distance
    Range = 160, --in meters, after this distance the bullet stops existing
    Tracer = false, --show tracer
    NumBullets = 1, --the amount of bullets to fire
    PhysicsMultiplier = 1, --damage is multiplied by this amount when pushing objects
    Penetration = {
        DamageMultiplier = 0.74, --how much damaged is multipled by when leaving a surface.
        MaxCount = 4, --how many times the bullet can penetrate.
        Thickness = 30, --in hu, how thick an obstacle has to be to stop the bullet.
    }
}

SWEP.Zoom = {
    FovMultiplier = 0.9,
    ViewModelFovMultiplier = 0.98,
    Blur = {
        EyeFocusDistance = 6.5
    }
}

SWEP.WorldModelOffsets = {
    Bone = "tag_sling",
    Angles = Angle(-10,0,0),
    Pos = Vector(1,0,-0.15)
}

SWEP.ViewModelOffsets = {
    Aim = {
        Angles = Angle(0, 0, 0),
        Pos = Vector(0.008, 4.5, -0.51)
    },
    Idle = {
        Angles = Angle(0, 0, 3),
        Pos = Vector(0, 0, 0)
    },
	Sprint = {
        Angles = Angle(-2, 10, 5),
        Pos = Vector(4, 0, 0)
    },
    Inspection = {
        Bone = "tag_sling",
        X = {
            [0] = {Pos = Vector(0, 3, 3), Angles = Angle(40, 0, -30)},
            [1] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 0, 0)}
        },
        Y = {
            [0] = {Pos = Vector(0, 0, 0), Angles = Angle(-10, 20, 0)},
            [1] = {Pos = Vector(4, 0, 1.5), Angles = Angle(10, -20, 0)}
        }
    },
    
    RecoilMultiplier = 1.16,
    KickMultiplier = 1.3,
    AimKickMultiplier = 1.5
}

SWEP.Shell = "mwb_shelleject_762"

DEFINE_BASECLASS("mg_base")