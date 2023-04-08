ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Classic A2 Barrel"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_carbinebar.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_classic.mdl")
ATTACHMENT.ExcludedCategories = {"Grips", "Lasers"}

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.2
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.2
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
end
