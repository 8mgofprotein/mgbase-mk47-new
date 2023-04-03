ATTACHMENT.Base = "att_bolt"
ATTACHMENT.Name = "Manual Bolt"
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_mutantghillie.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 5
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 2.5
	weapon.Animations.Rechamber = weapon.Animations.Bolt
    weapon.Animations.Reload_Empty = weapon.Animations.Reload                
    weapon.Animations.Reload_Empty_Xmag = weapon.Animations.Reload_Xmag
    weapon.Animations.reload_empty_smag = weapon.Animations.reload_smag
    weapon.Animations.reload_empty_dmag = weapon.Animations.reload_dmag
	weapon.Animations.Reload_Empty_Fast = weapon.Animations.Reload_Fast                
    weapon.Animations.Reload_Empty_Xmag_Fast = weapon.Animations.Reload_Xmag_Fast
    weapon.Animations.reload_empty_smag_fast = weapon.Animations.reload_smag_fast
    weapon.Animations.reload_empty_dmag_fast = weapon.Animations.reload_dmag_fast
	weapon.Firemodes[1].Name = "Bolt Action"
    weapon.Firemodes[1].OnSet = function(weapon)
        weapon.Primary.Automatic = false
        return "Firemode_Auto"
    end
end