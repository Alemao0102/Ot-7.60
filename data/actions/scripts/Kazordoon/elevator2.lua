local exhaust = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaust, CONDITION_PARAM_TICKS, 2500)


function onUse(cid, item, fromposition, itemEx, toPosition)
if(hasCondition(cid, CONDITION_EXHAUST) == TRUE) then
		doPlayerSendDefaultCancel(cid, RETURNVALUE_YOUAREEXHAUSTED)
		return TRUE
	end

switch2pos = {x=32637, y=31881, z=7, stackpos=1}
telepos = {x=32636, y=31881, z=2}
tilepos1 = {x=32636, y=31881, z=7}

getswitch2 = getThingfromPos(switch2pos)
gettilepos1 = getThingfromPos(tilepos1)

if item.actionid == 8024 and
getswitch2.itemid == 1945 and
gettilepos1.itemid == 425 then

doAddCondition(cid, exhaust)
doTeleportThing(cid,telepos)
doSendMagicEffect(telepos,2)
else
pos.x = pos.x-2
doTeleportThing(cid, pos)
doPlayerSendTextMessage(cid,18,"You are not standing on the tile!")
end
return TRUE
end