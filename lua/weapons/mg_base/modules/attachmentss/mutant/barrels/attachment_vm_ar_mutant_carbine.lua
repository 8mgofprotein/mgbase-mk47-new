ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "Carbine KAC RIS"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_carbinebar.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_carbine.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.85
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.85
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.2
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.2
end
