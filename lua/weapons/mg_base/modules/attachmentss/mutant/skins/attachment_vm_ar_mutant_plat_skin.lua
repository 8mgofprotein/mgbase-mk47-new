ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "Platinum Plated"
ATTACHMENT.UIColor = Color(255, 84, 112)

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path.."platchrome/", mat
end

function ATTACHMENT:OverrideAttachmentsMaterial(path, mat)
    return path.."platchrome/", mat
end




