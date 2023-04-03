ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FTAC Hunter"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_stock_heavy02.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_heavy02.vmt")
ATTACHMENT.Bodygroups ={

    ["tag_stock"] = 1,
    ["stock_hide"] = 1
    
}
ATTACHMENT.AttachmentBodygroups ={

    ["tag_stock"] = 1,
    ["stock_hide"] = 1
    
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.86
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.86
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.91
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.91
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.85
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.85
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.85
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.85
end