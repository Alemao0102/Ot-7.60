function onUse(cid, item, frompos, item2, topos)
	if item2.itemid == 2345 then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Congratulations you are vip member right now!")
		setPlayerStorageValue(cid, 30009, 1)
		doPlayerAddPremiumDays(cid, 7)
		doRemoveItem(item.uid, 1)
	end

	return true
end