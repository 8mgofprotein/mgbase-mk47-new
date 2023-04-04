ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Default Mutant Mag"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_pmag.mdl")
ATTACHMENT.BulletList = {
	[1] = {"j_bullet"},
	[2] = {"j_bullet2"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
