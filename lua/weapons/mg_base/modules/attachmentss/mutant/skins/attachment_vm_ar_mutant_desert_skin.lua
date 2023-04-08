ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "Sand Warrior"
ATTACHMENT.UIColor = Color(255, 84, 112)
ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path.."desert/", mat
end

function ATTACHMENT:OverrideAttachmentsMaterial(path, mat)
    return path.."desert/", mat
end




