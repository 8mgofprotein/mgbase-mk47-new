ATTACHMENT.Base = "att_vm_angledgrip02"
ATTACHMENT.AttachmentBodygroups = {
    ["grip_hide"] = 1
}
ATTACHMENT.BonemergeToCategory = {"Barrels"}
local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetGripPoseParameter("grip_ang_offset")
end