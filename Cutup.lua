Cutup = AceLibrary("AceAddon-2.0"):new("AceConsole-2.0", "AceDB-2.0", "AceEvent-2.0", "AceHook-2.1", "AceModuleCore-2.0")
Cutup:RegisterDB("CutupDB")
Cutup:SetModuleMixins("AceEvent-2.0", "AceHook-2.1")
Cutup.Options = {
	type = "group",
	name = "Cutup",
	desc = "A framework for Rogue-specific modules.",
	args = {},
}

function Cutup:OnEnable()
	self:RegisterChatCommand({"/cutup"}, self.Options)
end

function Cutup:OnDisable()
	for name, module in self:IterateModules() do
		self:ToggleModuleActive(module, false)
	end
end