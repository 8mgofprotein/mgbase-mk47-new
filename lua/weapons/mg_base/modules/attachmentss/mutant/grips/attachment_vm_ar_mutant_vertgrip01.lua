ATTACHMENT.Base = "att_vm_vertgrip01"
ATTACHMENT.AttachmentBodygroups = {
    ["grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_vert_offset")
end