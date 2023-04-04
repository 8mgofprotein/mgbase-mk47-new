ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "60 Fast Mags"
ATTACHMENT.Model = Model("models/viper/mw/attachments/sierra552/attachment_vm_ar_sierra552_xmagslrg.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/sierra552/icon_attachment_ar_sierra552_xmagslrg.vmt")

ATTACHMENT.BulletList = {
	[1] = {"j_bullet1"},
	[2] = {"j_bullet3"},
    [60] = {"j_bullet2"},
    [100] = {"j_bullet2"},
}
-- its work when i said its work
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.ClipSize = 60
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.83
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.83
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.2
    weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.2
end