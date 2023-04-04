ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "60rnd Casket Mag"
ATTACHMENT.Model = Model("models/viper/mw/attachments/anovember94/attachment_vm_ar_anov94_xmagslrg.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/anovember94/icon_attachment_ar_anov94_xmagslrg.vmt")

ATTACHMENT.BulletList = {
	[1] = {"j_bullet01"},
	[2] = {"j_bullet02"},
	[3] = {"j_bullet03"},
	[4] = {"j_bullet04"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 60
	    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.92
		weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.92
		weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.9
		weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.9
		weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.8
		weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.8
end
