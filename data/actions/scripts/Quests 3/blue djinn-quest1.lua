function onUse(cid, item, frompos, item2, topos)
	if item.uid==8604 then
		newpos = {x=33239, y=32397, z=7}
		doPlayerSendTextMessage(cid,22,"You have get the Spy report, you are now teleported back.")
  doPlayerAddItem(cid,2345,1)
   setPlayerStorageValue(cid,8604,1)
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end