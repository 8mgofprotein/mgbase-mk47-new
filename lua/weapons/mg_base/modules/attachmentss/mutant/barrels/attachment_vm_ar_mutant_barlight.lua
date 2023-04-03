ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "KAC URX"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_urxbar.vmt")
ATTACHMENT.Model = Model("models/kyo/attachment_vm_ar_mutant_urx145.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.9
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.9
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.1
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.1
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end
