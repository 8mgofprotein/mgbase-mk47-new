ATTACHMENT.Base = "att_stock"
ATTACHMENT.Name = "Magpul PRS Gen 3"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mutant_stock_prs.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_gen3prs.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
    weapon.Recoil.Vertical[1] = weapon.Recoil.Vertical[1] * 0.9
    weapon.Recoil.Vertical[2] = weapon.Recoil.Vertical[2] * 0.9
    weapon.Recoil.Horizontal[1] = weapon.Recoil.Horizontal[1] * 0.9
    weapon.Recoil.Horizontal[2] = weapon.Recoil.Horizontal[2] * 0.9
	weapon.Animations.Ads_In.Fps = weapon.Animations.Ads_In.Fps * 0.9
end
