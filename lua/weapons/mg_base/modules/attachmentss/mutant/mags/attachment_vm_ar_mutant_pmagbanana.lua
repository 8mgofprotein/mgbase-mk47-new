ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Banana PMAG"
("models/kyo/attachments/icons/icon_attachment_pmag.vmt")
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_pmag.mdl")
ATTACHMENT.BulletList = {
	[1] = {"j_bullet"},
	[2] = {"j_bullet2"},
}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "banana_"..mat
end

--lets you change weapon textures
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path, "banana_"..mat
end
