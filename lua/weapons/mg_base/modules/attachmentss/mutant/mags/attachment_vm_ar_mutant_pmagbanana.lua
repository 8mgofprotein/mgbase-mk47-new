ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Banana PMAG"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_pmag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_pmag.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "banana_"..mat
end

--lets you change weapon textures
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path, "banana_"..mat
end
