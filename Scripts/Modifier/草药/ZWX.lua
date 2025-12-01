--秘密丹
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("modifier_ZWX")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  
 local JL = WorldLua:RandomInt(1,1000); 
 local JLR = WorldLua:RandomInt(1,50); 

if JL <= 70 then
GameMain:GetMod("jiez"):JieZhen1("诛仙剑阵","9|8|0|zhuxian_0|10|9|2|zhuxian_3|10|8|0|zhuxian_4|8|8|5|zhuxian_1|8|7|0|zhuxian_2",4)
 npc.LuaHelper:DropAwardItem("Item_PTJB",JLR*5)

 
 else
for i=1,6 do
GameMain:GetMod("jiez"):JieZhen1("诛仙剑阵","9|8|0|zhuxian_0|10|9|2|zhuxian_3|10|8|0|zhuxian_4|8|8|5|zhuxian_1|8|7|0|zhuxian_2",4)
end	
 npc.LuaHelper:DropAwardItem("Item_PTJB",JL)

	end
end

--modifier step
function tbModifier:Step(modifier, npc, dt)

end

--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
	
end

--离开modifier
function tbModifier:Leave(modifier, npc)
	
end

--获取存档数据
function tbModifier:OnGetSaveData()
	return nil
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)

end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("ZZJ")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
while world.DaySecond == 250 do

local WSXY = {"Item_WSXY","Item_JSXY","Item_MSXY","Item_SSXY","Item_HSXY","Item_TSXY"}
 local WSYR = me:RandomInt(1,#WSXY+1);
 npc.LuaHelper:DropAwardItem(""..WSXXY[WSYR].."",10)
end

end

--modifier step
function tbModifier:Step(modifier, npc, dt)


end


--层数更新
function tbModifier:UpdateStack(modifier, npc, add)
	
end

--离开modifier
function tbModifier:Leave(modifier, npc)
	
end

--获取存档数据
function tbModifier:OnGetSaveData()
	return nil
end

--载入存档数据
function tbModifier:OnLoadData(modifier, npc, tbData)

end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_LS")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  
if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
local LM = npc.MaxZhenQi 
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(LM*0.5)
else 
local LM = npc.MaxLing
npc:AddLing(LM*0.5)
end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_LM")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  
if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
local LM = npc.MaxZhenQi 
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(LM)
else 
local LM = npc.MaxLing
npc:AddLing(LM)
end
end
