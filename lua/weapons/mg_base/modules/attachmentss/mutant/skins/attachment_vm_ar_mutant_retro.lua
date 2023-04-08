ATTACHMENT.Base = "att_skin_mutant"
ATTACHMENT.Name = "Retro"
ATTACHMENT.UIColor = Color(255, 84, 112)
ATTACHMENT.ExcludedAttachments = {"attachment_vm_ar_mutant_lgtguard"}
ATTACHMENT.CosmeticChange = true

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)
function ATTACHMENT:PostProcess(weapon)
    BaseClass.PostProcess(self, weapon)
    weapon:SetViewModel("models/kyo/v_mutant_retro.mdl")
end




