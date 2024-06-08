if not TooltipDataProcessor.AddTooltipPostCall then return end

local _G = _G

local C_FONT = 'Interface\\Addons\\SharedMedia_Argi\\Media\\Fonts\\Aptos Narrow.ttf'
local C_FONTSIZE_LARGE = 14
local C_FONTSIZE_SMALL = 13
local C_NAMEINDEX = 1

TooltipDataProcessor.AddTooltipPostCall(TooltipDataProcessor.AllTypes, function(tooltip)
	if tooltip:IsForbidden() then return end
    if tooltip ~= GameTooltip then return end

    -- print ("entering hook")
    _G["GameTooltipTextLeft" .. C_NAMEINDEX]:SetFont(C_FONT, C_FONTSIZE_LARGE, "")

    local numLines = tooltip:NumLines()
    for i = 2, numLines do
        -- print("i=" .. i)
        local line = _G["GameTooltipTextLeft" .. i]
        if line then
            -- print("line=" .. line:GetText())
            line:SetFont(C_FONT, C_FONTSIZE_SMALL, "")
        end
    end
end)