-- Fire axe Dragon Cave Quest --

function onUse(cid, item, frompos, item2, topos)
if item.uid == 15080 then
  queststatus = getPlayerStorageValue(cid,15080)
  if queststatus == -1 or queststatus == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a Knight axe.")
   item_uid = doPlayerAddItem(cid,2430,1)
   setPlayerStorageValue(cid,15080,1)

  else
   doPlayerSendTextMessage(cid,22,"it\'s empty.")
  end
else
  return 0
end
return 1
end

