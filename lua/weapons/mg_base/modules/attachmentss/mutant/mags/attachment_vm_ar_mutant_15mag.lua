ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "AK-15 Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_15mag.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end