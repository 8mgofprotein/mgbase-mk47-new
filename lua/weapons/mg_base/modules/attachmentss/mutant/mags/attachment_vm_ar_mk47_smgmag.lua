ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "9mm Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_smgmag.mdl")
ATTACHMENT.Icon = Material("viper/mw/attachments/icons/galima/icon_attachment_ar_galima_smag.vmt")


local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Primary.RPM = 1000
    weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 0.8
    weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.5
    weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.5
	weapon.Bullet.Range = weapon.Bullet.Range * 0.7
    weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.9
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.9
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    weapon.Primary.ClipSize = 30
    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 1.25
    weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 1.25
    weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 1.2
    weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 1.2
	weapon.Recoil.Shake = 0.5
	weapon.Recoil.Kick = 0.05
end


function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon.Primary.RPM = 1000
end