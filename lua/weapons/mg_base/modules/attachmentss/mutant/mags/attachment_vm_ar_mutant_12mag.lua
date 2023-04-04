ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Ak-12 5.45x39 Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_12mag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_ak15mag.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
	weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.88
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.88
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.8
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.7
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.5
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.5
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.5
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.5
    weapon.Primary.RPM = 800
    weapon.PrintName = "MK-74"
end