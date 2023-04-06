ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "14'' Chroma LRS"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_barsil.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_dmrsil.mdl")
ATTACHMENT.ExcludedCategories = {"Muzzle Devices"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.8
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 1.2
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.75
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.75
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.8
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.5
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.5
	weapon:doSuppressorStats()
    weapon.PrintName = "Mk47SD-Sharp Shooter"
end