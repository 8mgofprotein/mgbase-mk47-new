ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "Nebula"
ATTACHMENT.UIColor = Color(255, 84, 112)
ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path.."nebule/", mat
end

function ATTACHMENT:OverrideAttachmentsMaterial(path, mat)
    return path.."nebule/", mat
end




