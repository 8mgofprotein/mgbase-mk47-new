ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "M-16 Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/mike4/attachment_vm_ar_mike4_customstock.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/mike4/icon_attachment_stockcust_mike4.vmt")
ATTACHMENT.Bodygroups ={
    ["tag_stock"] = 0
}

ATTACHMENT.VElement = {
                Bone = "tag_stock_attach",
                Position = Vector(0, -0.69, 0.08),
                Angles = Angle()
}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.86
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.86
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.86
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.86
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.89
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.89 
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.92
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.92
end