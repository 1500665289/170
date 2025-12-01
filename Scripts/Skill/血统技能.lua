
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_QLAR2")


--技能被释放
function tbSkill:Cast(skilldef, from)
  
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	GameMain:GetMod("ZTWP"):SubItemCount("Item_PTJB",300)
	for i=1,2,1 do
	local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
	NpcMgr:AddNpc(npc,600,Map,CS.XiaWorld.Fight.g_emFightCamp.Friend);
	ThingMgr:EquptNpc(npc,9,CS.XiaWorld.g_emNpcRichLable.Richest);
	npc:SetName("打手")
	npc.PropertyMgr:AddModifier("ARDS");
	npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
	npc.PropertyMgr.Practice:RandomTree();
	npc.PropertyMgr.Practice:MakeGold(300000)
	npc:AddLing(999999999);
	npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
	npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
	npc:AddLing(99999999999);
	local npcitems = npc.Bag.m_lisItems -- 获取NPC身上物品列表
	for i= 0,npcitems.Count-1 do -- 删除NPC 身上物品
	 ThingMgr:RemoveThing(npcitems[0])
	end
	local item1 =CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon,0,12,100); -- 获取随机武器
	local item2 =CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes,0,12,100); -- 获取随机衣服
	local item3 =CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers,0,12,100); -- 获取随机裤子
	npc:EquipItem(item1);
	npc:EquipItem(item2);
	npc:EquipItem(item3);
	local list = npc.Equip:FindFabao();
	for k,v in pairs(list) do;
	npc.Equip:UnEquipItem(v);
	ThingMgr:RemoveThing(v);
	end
	local count = 0;
	while(count < 3) do
	for i=1,3,1 do
	local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
	fabao.Fabao:AddGodCount(0)
	fabao:BindItem2Npc(npc)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,150)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,600)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.5)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,5+5)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,5+5)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,150+150)
	npc:EquipItem(fabao);
	fabao:AddLing(fabao.MaxLing);
	count = count + 1;
	end
	end
	npc:AddLing(999999999);
	npc.FightBody.AutoNext = true;
	npc.FightBody.IsAttacker = true;
	npc.FightBody.AttackWait = 5;
	npc.FightBody.AttackTime = 900;
	npc.TargetMode = 2;
	npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
	npc.ScaleAddIM = 0.5
	WorldLua:PlayEffect("Effect/A/Prefabs/Projectiles/Light/LightImpactNormal", from.Pos, 15);
	end
	end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_KXSR1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XT_KXSR1_X")
	
	end
end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("KXZX1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then

	local SH = {"Damage_Boss_LingBoom","Jin_BoneNail","Huo_VisceralBurn","BodyPractice_Bhit2","BodyPractice_Bhit3"}
	local SHR = WorldLua:RandomInt(0,#SH+1)
	local BW = {"UpperElixirField","LowerElixirField","LeftShoulder","LeftScapula","RightScapula","RightShoulder","Heart","Body","Liver","Spleen","Lung","Kidney","Genitals"}
	local BWR = WorldLua:RandomInt(0,#BW+1)
	local CD = WorldLua:RandomInt(0,1)
	local npc = fightbody.Npc
	npc:AddDamage(""..BW[BWR].."",""..SH[SHR].."",CD,false);--伤害类型，部位--
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_XXGXT2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local N1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
	
	end
end

--技能被释放
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	self.power = 0
	local BJ = WorldLua:RandomInt(0,100)
	if BJ >= 50 then
	if fightbody ~= nil and fightbody.Npc ~= nil then
      local power1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
	  
      return power1*0.5
	  
	end
	else
		return
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_BSJRXT1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XT_BSJRXT1_X")
	
	end
end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_DTSXT2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	  local power1 = npc:GetProperty("NpcLingMaxValue");
	  npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-0.15*power1,0,0,0)
	
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_HF_STS2")



--技能在fightbody身上生效
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	self.power = 0
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	  local power1 = npc:GetProperty("GodCity_MaxResident");
	  return power1*0.00005
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_XTXT1")


--技能被释放
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	local npc = fightbody.Npc
	if fightbody and fightbody.Npc then
	local N = npc:GetModifierStack("XT_XTXT");
	if N ~= nil then
	npc.PropertyMgr:AddModifier("XT_XTXT",1,false,-100,false,-1)		
	  
      return  N.Stack*5
	 else
	 return 0
	 end
	 end 
	end
	


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_BDRXT1")

function tbSkill:GetValueAddv(skilldef, fightbody, from)
	L = self:GetValueAddv(skilldef, npc.FightBody, from);
	if fightbody and fightbody.Npc and npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
	local npc = fightbody.Npc
	npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(L)
	end
end
--技能被释放
function tbSkill:Cast(skilldef, from)
	local N1 = world.DaySecond
	if fightbody and fightbody.Npc then
		if N1 >= 125 and N1 <= 450 then
      return -(3000*0.5)
		end
	end
	end






























