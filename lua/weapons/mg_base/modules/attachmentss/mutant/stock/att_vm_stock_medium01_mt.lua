ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "FSS Close Quarters Stock"
ATTACHMENT.Model = Model("models/viper/mw/attachments/attachment_vm_stock_medium01.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_medium01.vmt")
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

    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.09
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.09
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.05
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.05
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.05
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.05
end