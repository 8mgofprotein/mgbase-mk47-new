ATTACHMENT.Base = "att_laser_f"
ATTACHMENT.Name = "XC1"
ATTACHMENT.Model = Model("models/more/flashlight/xc1/xc1_lod0.mdl")
ATTACHMENT.Icon = Material("more_s_icons/xc1.vmt")
 ATTACHMENT.BonemergeToCategory = {"Barrels"}
 
 
ATTACHMENT.VElement = {
                 Bone = "tag_barrel_attach",
                 Position = Vector(-0.1, 10, 2),
                 Angles = Angle(0, 0, 0),
                 Offsets = { 
                 }
             }


ATTACHMENT.Laser = {
    BeamMaterial = Material("mw19_laserbeam.vmt"),
    DotMaterial = Material("sprites/light_glow02_add.vmt"),
    BeamSize = 15,
    BeamWidth = 1,
    DotSize = 5,
    Color = Color(255, 0, 0, 255),
    Attachment = "laser"
}
ATTACHMENT.Flashlight = {
    FlashlightMaterial = Material("effects/flashlight001.vmt"),
    Color = Color(255, 255, 255, 255),
    Attachment = "laser"
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Cone.Ads = weapon.Cone.Ads * 0.99
end 