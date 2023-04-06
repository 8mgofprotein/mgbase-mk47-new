ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "12'' Rugged ZN"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_barsil.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_minibar.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.7
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.4
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.4
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.3
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.3
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.5
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.5
end