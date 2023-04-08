ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "Demon Core"
ATTACHMENT.UIColor = Color(255, 84, 112)
ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path.."redtopo/", mat
end

function ATTACHMENT:OverrideAttachmentsMaterial(path, mat)
    return path.."redtopo/", mat
end

