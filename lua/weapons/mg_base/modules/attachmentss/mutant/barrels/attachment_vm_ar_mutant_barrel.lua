ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "MUTANT DEFAULT"
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_cmmg15.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1
end