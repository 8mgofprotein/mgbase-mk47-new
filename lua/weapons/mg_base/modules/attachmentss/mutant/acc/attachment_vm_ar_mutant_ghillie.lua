ATTACHMENT.Base = "att_acc"
ATTACHMENT.Name = "Ghillie"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mutant_ghillie.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_mutantghillie.vmt")

ATTACHMENT.VElement = {
                 Bone = "tag_sling",
                 Position = Vector(0, 25, 0.1),
                 Angles = Angle(),
                 Offsets = { 
                 }
             }
			 
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 2
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.5
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.8
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.8
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.1
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.1
end