local ZTWP = GameMain:GetMod("ZTWP")
local tbEvent = GameMain:GetMod("_Event");

function ZTWP:GetItemCountInMap(name)		--获取地图上指定物品的数量
	local itemlist = World.map.Things:FindItems(nil, 50, 999999, name, 0, nil, 0, 9999, nil, false, false)
	local count = 0
	if itemlist then
		for k,v in pairs(itemlist) do
			count = count + v.Count
		end
	end
	return count
end

function ZTWP:GetItemCount(name)		--获取指定物品在乾坤界，储物箱，地图上的总数
	local count = World.map:GetSpaceRingItemCount(name)
	count = count + WorldLua:GetItemCount(name)

	return count 
end

function ZTWP:SubItemCount(name,count)	--消耗物品，消耗顺序乾坤界-地图，bool为true时物品不足亦可消耗
	local count = count
	if World.map:GetSpaceRingItemCount(name) > 0 then
		if World.map:GetSpaceRingItemCount(name) >= count then
			World.map.SpaceRing:AddStorage(name, -count, false)
			count = 0
		else
			local subcount = World.map.SpaceRing:FindItem(name, nil, 0, 9999, nil).Count
			World.map.SpaceRing:AddStorage(name, -subcount, false)
			count = count-subcount
		end
	end
	
	local itemlist = World.map.Things:FindItems(nil, 50, 9999, name, 0, nil, 0, 9999, nil, false, false)
	if count > 0 and itemlist then
		for k,v in pairs(itemlist) do
			if v.Count >= count and count > 0 then
				v:SubCount(count)
				count = 0
			elseif v.Count < count and count > 0 then
				count = count-v.Count
				v:SubCount(v.Count)
			end
		end
	end
	
	return count
end