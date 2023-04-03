ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Promag 73rnd Drum"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_dmag.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
        weapon.Primary.ClipSize = 73
		weapon.Animations.Inspect = weapon.Animations.InspectDrum
        weapon.Animations.Reload = weapon.Animations.reload_dmag
        weapon.Animations.Reload_Empty = weapon.Animations.reload_empty_dmag
        weapon.Animations.Reload_Fast = weapon.Animations.reload_dmag_fast
        weapon.Animations.Reload_Empty_Fast = weapon.Animations.reload_empty_dmag_fast
		weapon.Animations.Inspect = weapon.Animations.Inspect_Drum
end