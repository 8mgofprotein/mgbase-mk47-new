ATTACHMENT.Base = "att_perk"
ATTACHMENT.Name = "Personal Color"
ATTACHMENT.UIColor = Color(255, 84, 112)

local BaseClass = GetAttachmentBaseClass(ATTACHMENT.Base)

function ATTACHMENT:OverrideMaterial(path, mat)
    return path, "color_"..mat
end

--lets you change weapon textures
function ATTACHMENT:OverrideWeaponMaterial(path, mat)
    return path, "color_"..mat
end

function ATTACHMENT:Init(weapon)
    BaseClass.Init(self, weapon)

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