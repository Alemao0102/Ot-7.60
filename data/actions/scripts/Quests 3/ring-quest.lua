-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15055 then
  queststatus = getPlayerStorageValue(cid,15055)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found two rings.")
   item_uid = doPlayerAddItem(cid,2169,1)
   item_uid = doPlayerAddItem(cid,2207,1)
   setPlayerStorageValue(cid,15055,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

