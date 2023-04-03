ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Mimura"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_bmag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_ak103mag.vmt")
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "knk_"..mat
end

--lets you change weapon textures
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path, "knk_"..mat
end
