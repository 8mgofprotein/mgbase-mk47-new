ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "75rnd Fast Drum"
ATTACHMENT.Model = Model("models/viper/mw/attachments/akilo47/attachment_vm_ar_akilo47_drum_mag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/akilo47/icon_attachment_drums_akilo47.vmt")
ATTACHMENT.BulletList = {
	[1] = {"j_drumbullet1"},
	[2] = {"j_drumbullet2"},
	[2] = {"j_drumbullet3"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 75
        weapon.Animations.Reload = weapon.Animations.reload_dmag
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_dmag
        weapon.Animations.Reload_Fast = weapon.Animations.reload_dmag_fast
        weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_dmag_fast
	    weapon.Animations.Inspect = weapon.Animations.Inspect_Drum
	    weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 1.2
		weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 1.2
		weapon.Primary.RPM = 690
end