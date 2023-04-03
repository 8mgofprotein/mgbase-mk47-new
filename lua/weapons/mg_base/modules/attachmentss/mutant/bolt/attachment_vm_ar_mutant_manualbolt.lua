ATTACHMENT.Base = "att_bolt"
ATTACHMENT.Name = "Manual Bolt"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_mutantghillie.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 5
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 2.5
	weapon.Animations.Rechamber = weapon.Animations.Bolt
	weapon.Firemodes[1].Name = "Bolt Action"
    weapon.Firemodes[1].OnSet = function(weapon)
        weapon.Primary.Automatic = false
        return "Firemode_Auto"
    end
end