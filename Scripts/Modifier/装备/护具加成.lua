local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXFJ_HF")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc) 
if npc.IsDisciple == true then
CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
else
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Clothes)
	if T:GetName() == "体修防护服" then
	
	npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,100,false,-1)
	elseif T:GetName() == "剑修防护服" then
	
	npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,100,false,-1)
	elseif T:GetName() == "法修防护服" then
	
	npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,100,false,-1)
	elseif T:GetName() == "无属性防护服" then
	
	npc.PropertyMgr:AddModifier("MY_None",1,false,100,false,-1)
	elseif T:GetName() == "金属性防护服" then

	npc.PropertyMgr:AddModifier("MY_Jin",1,false,100,false,-1)
	elseif T:GetName() == "木属性防护服" then

	npc.PropertyMgr:AddModifier("MY_Mu",1,false,100,false,-1)
	elseif T:GetName() == "水属性防护服" then

	npc.PropertyMgr:AddModifier("MY_Shui",1,false,100,false,-1)
	elseif T:GetName() == "火属性防护服" then
	
	npc.PropertyMgr:AddModifier("MY_Huo",1,false,100,false,-1)
	elseif T:GetName() == "土属性防护服" then
	
	npc.PropertyMgr:AddModifier("MY_Tu",1,false,100,false,-1)
	end
end
	
end

function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:FindModifier("WXFJ_HF")
if m.Stack == 1 then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Clothes)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXFJ_HF")
	npc:RemoveModifier("MY_NormalAttack")
	npc:RemoveModifier("MY_FabaoAttack")
	npc:RemoveModifier("MY_SkillAttack")
	npc:RemoveModifier("MY_None")
	npc:RemoveModifier("MY_Jin")
	npc:RemoveModifier("MY_Mu")
	npc:RemoveModifier("MY_Shui")
	npc:RemoveModifier("MY_Huo")
	npc:RemoveModifier("MY_Tu")
else
return  0
end
end















