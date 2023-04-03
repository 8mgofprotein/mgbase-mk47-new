return "Firemode_Auto"

ATTACHMENT.Base = "att_base"
ATTACHMENT.Name = "Default"
ATTACHMENT.Category = "Bolt"

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:Stats(weapon)
    weapon.ReloadRechambers = false
end