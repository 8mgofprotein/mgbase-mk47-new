ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "AK-103 Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_bmag.mdl")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    BaseClass.Stats(self, weapon)
end