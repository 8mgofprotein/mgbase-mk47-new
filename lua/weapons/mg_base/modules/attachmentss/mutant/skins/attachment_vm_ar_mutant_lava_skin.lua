ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "Lava"
ATTACHMENT.UIColor = Color(255, 84, 112)

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path.."lava/", mat
end

function ATTACHMENT:OverrideAttachmentsMaterial(path, mat)
    return path.."lava/", mat
end




