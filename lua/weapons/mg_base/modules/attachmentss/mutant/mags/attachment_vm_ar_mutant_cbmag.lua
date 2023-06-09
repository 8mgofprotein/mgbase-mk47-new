ATTACHMENT.Base = "att_magazine"
ATTACHMENT.Name = "Colorable AK-103 Magazine"
ATTACHMENT.Model = Model("models/zeron/attachment_vm_ar_mk47_bmag.mdl")
ATTACHMENT.Icon = Material("models/kyo/attachments/icons/icon_attachment_ak103mag.vmt")

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "color_"..mat
end

--lets you change weapon textures
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path, "color_"..mat
end

function ATTACHMENT:PostInitModels(weapon)
  BaseClass.PostInitModels(self, weapon)
  self:EnablePlayerColor(weapon)

    if (CLIENT) then
        self.m_Model.plyColor = Vector()

        function self.m_Model:GetPlayerColor()
            if (IsValid(weapon) && IsValid(weapon:GetOwner()) && weapon:GetOwner().GetPlayerColor != nil) then
                self.plyColor = weapon:GetOwner():GetPlayerColor()
            end

            return self.plyColor
        end

        self.m_TpModel.plyColor = Vector()

        function self.m_TpModel:GetPlayerColor()
            if (IsValid(weapon) && IsValid(weapon:GetOwner()) && weapon:GetOwner().GetPlayerColor != nil) then
                self.plyColor = weapon:GetOwner():GetPlayerColor()
            end

            return self.plyColor
        end
    end
end