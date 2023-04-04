ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Overpressured 10rnd Mag"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_dmrmag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_10rndoverpressoredmag.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Firemodes[1].Name = "Semi Auto"
    weapon.Firemodes[1].OnSet = function(weapon)
        weapon.Primary.Automatic = false
        weapon.Primary.RPM = 700
        return "Firemode_Semi"
    end
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 1.5
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 2
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 1.3
	weapon.Bullet.Range = weapon.Bullet.Range * 2
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 1.3
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 1.3
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 1.3
    weapon.Primary.ClipSize = 10
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.15
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.15
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
    weapon.Animations.Reload = weapon.Animations.reload_smag
    weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_smag
    weapon.Animations.Reload_Fast = weapon.Animations.reload_smag_fast
    weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_smag_fast
	weapon.Recoil.Shake = 2
end


function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.Firemodes[2] = nil
    weapon.Primary.RPM = 450
end