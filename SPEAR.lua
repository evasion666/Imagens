CastHotkey("ATKMAX")
function autospear()
	local spearid = 3277
	local assassinid = 7368
	local hand = self.handleft
	local spear = FindItem(spearid)
	local assassin = FindItem(assassinid)
	if (hand == 0 or (hand == assassinid and self.handleftct < 4 and self.cap > 2 and self.cap < 5)) then
		if (assassin ~= nil) then
			ThrowItemCtoI(assassin.num, assassin.slot, SLOT_HANDLEFT, assassinid, 1)
		end
	end
	if (hand == 0 or (hand == assassinid and self.handleftct < 6 and self.cap > 61 and self.cap < 9)) then
		if (assassin ~= nil) then
			ThrowItemCtoI(assassin.num, assassin.slot, SLOT_HANDLEFT, assassinid, 3)
		end
		end
	if (hand == 0 or (hand == assassinid and self.handleftct < 8 and self.cap > 201)) then
		if (assassin ~= nil) then
			ThrowItemCtoI(assassin.num, assassin.slot, SLOT_HANDLEFT, assassinid, assassin.quantity)
		end
		end
	if (hand == 0 or (hand == spearid and self.handleftct < 4 and self.cap > 21 and self.cap < 60)) then
		if (spear ~= nil) then
			ThrowItemCtoI(spear.num, spear.slot, SLOT_HANDLEFT, spearid, 1)
		end
		end
	if (hand == 0 or (hand == spearid and self.handleftct < 5 and self.cap > 61 and self.cap < 2000)) then
		if (spear ~= nil) then
			ThrowItemCtoI(spear.num, spear.slot, SLOT_HANDLEFT, spearid, 3)
		end
		end
	if (hand == 0 or (hand == spearid and self.handleftct < 8 and self.cap > 2001)) then
		if (spear ~= nil) then
			ThrowItemCtoI(spear.num, spear.slot, SLOT_HANDLEFT, spearid, spear.quantity)
		end
		end
end
SetTimerCallback("autospear")
