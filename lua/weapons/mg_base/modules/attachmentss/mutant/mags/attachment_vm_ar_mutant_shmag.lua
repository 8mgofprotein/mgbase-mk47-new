ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "12 Gauge 10rnd Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_shmag.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 10
		weapon.Bullet.NumBullets = 8
		weapon.Bullet.Range = weapon.Bullet.Range * 0.4
		weapon.Bullet.PhysicsMultiplier = 3
		weapon.Primary.RPM = 400
		weapon.Bullet.Damage[1] = weapon.Bullet.Damage[1] * 2
		weapon.Bullet.Damage[2] = weapon.Bullet.Damage[2] * 0.8
		weapon.Bullet.EffectiveRange = weapon.Bullet.EffectiveRange * 0.4
		weapon.Bullet.DropOffStartRange = weapon.Bullet.DropOffStartRange * 0.4
	    weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.85
		weapon.Animations.Ads_Out.Fps = weapon.Animations.Ads_Out.Fps * 0.85
		weapon.Animations.Draw.Fps = weapon.Animations.Draw.Fps * 0.85
		weapon.Animations.Holster.Fps = weapon.Animations.Holster.Fps * 0.85
		weapon.Animations.Reload.Fps = weapon.Animations.Reload.Fps * 0.9
		weapon.Animations.Reload_Empty.Fps = weapon.Animations.Reload_Empty.Fps * 0.9
		weapon.Shell = "mwb_shelleject_12g"
		weapon.Recoil.Shake = 3
end
