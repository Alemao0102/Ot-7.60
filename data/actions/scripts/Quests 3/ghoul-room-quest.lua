-- Ghoul Room Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15090 then
  queststatus = getPlayerStorageValue(cid,15090)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Garlic Necklace and a Club Ring.")
   item_uid = doPlayerAddItem(cid,2199,1)
   item_uid = doPlayerAddItem(cid,2209,1)
   setPlayerStorageValue(cid,15090,1)


  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

