ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Torrent MOC-IV"
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_barshort.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_lgtguard.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.2
end
