ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Magpul CTR"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mutant_stock_ctr.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/stock/icon_attachment_stock_no.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.015
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.015
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.025
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.025
	weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
	weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
end
