ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "AK-103 Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_bmag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_ak103mag.vmt")
ATTACHMENT.BulletList = {
	[1] = {"j_bullet"},
	[2] = {"j_bullet2"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end