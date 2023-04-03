ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "CMMG 9'' Barrel"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_barshort.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_cmmg9.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.8
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.8
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.7
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.05
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.05
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 1.025
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 1.025
	weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
	weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.2
	weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
	weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.PrintName = "Mk47 Banshee"
end