ATTACHMENT.Base = "att_barrel"
ATTACHMENT.Name = "AR47 DEFAULT"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_ar47_bar.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end