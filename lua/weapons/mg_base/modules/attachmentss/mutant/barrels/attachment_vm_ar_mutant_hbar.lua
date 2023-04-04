ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Custom Heavy Barrel"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_lmgbar.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_hbar.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.15
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.3
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.9
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
    weapon.PrintName = "Mk47 HBAR"
end
