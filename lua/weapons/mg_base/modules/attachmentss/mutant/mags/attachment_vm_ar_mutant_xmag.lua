ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Bakelite 40rnd Mag"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_xmag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_akxmag.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 40
		weapon.Animations.Reload = weapon.Animations.Reload_Xmag
		weapon.Animations.Reload_Empty = weapon.Animations.Reload_Empty_Xmag
		weapon.Animations.Reload_Fast = weapon.Animations.Reload_Xmag_Fast
		weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Empty_Xmag_Fast
	    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
		weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
		weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
		weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
		weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
		weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
end