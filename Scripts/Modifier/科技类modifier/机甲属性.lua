
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_YJJJ")
 
function tbModifier:Enter(modifier, npc)
m7 = npc.PropertyMgr:FindModifier("WXFJ_HF")
if npc.IsDisciple == true or m7 ~= nil then
CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
else
 npc.ScaleAddIM = 2 
 npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,100,false,-1)
 npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,100,false,-1)
 npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,100,false,-1)
end
npc.LuaHelper:AddPracticeResource("Ling",2000);
end

function tbModifier:Step(modifier, npc, dt)
	m = npc.PropertyMgr:FindModifier("WX_JJNY")
	m1 = npc.PropertyMgr:FindModifier("WX_JJNY_1")
	m2 = npc.PropertyMgr:FindModifier("WX_JJNY_2")
	m3 = npc.PropertyMgr:FindModifier("WX_JJNY_3")
	m4 = npc.PropertyMgr:FindModifier("WX_JJS_H")
	m5 = npc.PropertyMgr:FindModifier("WX_JJS_SJ")
	m6 = npc.PropertyMgr:FindModifier("WX_JJS_NLD")
if m.Stack <= 1600 and m1 == nil then
	npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("WX_JJNY_1",1,false,1,false,-1)
elseif m.Stack <= 1000 and m2 == nil then
	npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("WX_JJNY_2",1,false,1,false,-1)
elseif m.Stack <= 550 and m3 == nil then
	npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-10,false,-1)
	npc.PropertyMgr:AddModifier("WX_JJNY_3",1,false,1,false,-1)
else
return 0
end
if m.Stack == 1 then
CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
else
return 0
end

end





