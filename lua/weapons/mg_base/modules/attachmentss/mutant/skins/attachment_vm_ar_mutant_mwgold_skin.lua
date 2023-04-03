ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "redtopo"
ATTACHMENT.UIColor = Color(255, 84, 112)

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:OverrideMaterial(path, mat)
    return path.."/redtopo", mat
end
