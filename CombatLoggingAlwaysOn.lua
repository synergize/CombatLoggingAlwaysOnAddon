CombatLoggingAlwaysOnConfig = 
{
	frame = CreateFrame("Frame", "frmCombatLoggingAlwaysOn")
}
CombatLoggingAlwaysOnConfig.frame:RegisterEvent("PLAYER_ENTERING_WORLD")

CombatLoggingAlwaysOnConfig.frame:SetScript("OnEvent", function(self, event, ...)

	if (event == "PLAYER_ENTERING_WORLD") then
		isInitialLogin, isReloadingUi = ...
		if (isInitialLogin) then 
			if not (LoggingCombat()) then
				DEFAULT_CHAT_FRAME:AddMessage("Combat is not being logged - starting it!", 0.0, 1.0, 0.0);  
				LoggingCombat(1);
			end
		end	
	end
	
end)
