-- Script by Nottinghster
function onUse(cid, item, frompos, item2, topos)
if item.uid == 2129 then
  queststatus = getPlayerStorageValue(cid,2129)
  if queststatus == -1 and getPlayerAccess(cid) == 0 then
   doPlayerSendTextMessage(cid,22,"You have found a gread shield.")
   doPlayerAddItem(cid, 2522, 1)
   setPlayerStorageValue(cid,2129,1)

  else
   doPlayerSendTextMessage(cid,22,"The chest is empty.")
  end
else
  return 0
end
return 1
end

