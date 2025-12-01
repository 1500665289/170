local WXXX = GameMain:GetMod("WXXX");
local time = 0;
local flag = 0;

function WXXX:SSW1()-- 2000积分

world:ShowMsgBox('第二波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,12,1 do -- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,4,1 do -- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,4,1 do--3阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,800,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

end


function WXXX:D2G()-- 2000积分

world:ShowMsgBox('第二波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,4,1 do -- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,2,1 do -- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end


end





function WXXX:D3G()-- 4000


world:ShowMsgBox('第三波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,6,1 do-- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,3,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,1,1 do--3阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,800,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

end



function WXXX:D4()-- 6000

world:ShowMsgBox('第四波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,9,1 do-- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,6,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,2,1 do--3阶
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,800,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

end

function WXXX:D5()-- 10000


world:ShowMsgBox('第5波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,9,1 do-- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,6,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,4,1 do--3阶
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,800,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("丧尸王");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc.PropertyMgr:AddModifier("SSW_DX");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",20000,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.2,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.2,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.2,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",800,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",200000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",200000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",999,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",15,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.2,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.4,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local kind2 = CS.XiaWorld.g_emSuperPartEquptKind.Effect
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"}
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UnLockSuperPart("SSYBDX", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:UpgradSuperPart2RandomLevel("SSYBDX")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
BodyPracticeData:EquptSuperPart(kind2, "SSYBDX", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,2600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end


function WXXX:D6()-- 4000

world:ShowMsgBox('第6波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')

for i=1,12,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,6,1 do--3阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
 npc.ScaleAddIM = 2
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

end



function WXXX:D7()-- 4000


world:ShowMsgBox('第7波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,12,1 do-- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,100,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,9,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,6,1 do--3阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("丧尸王");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",10000,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",800,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local kind2 = CS.XiaWorld.g_emSuperPartEquptKind.Effect
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"}
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UnLockSuperPart("SSYBCB", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:UpgradSuperPart2RandomLevel("SSYBCB")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
BodyPracticeData:EquptSuperPart(kind2, "SSYBCB", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,2600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
 npc.ScaleAddIM = 2
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end


function WXXX:D8()-- 4000

world:ShowMsgBox('第8波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,12,1 do-- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,100,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,9,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,9,1 do--3阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("丧尸王");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",10000,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",800,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local kind2 = CS.XiaWorld.g_emSuperPartEquptKind.Effect
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"}
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UnLockSuperPart("SSYBCX", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:UpgradSuperPart2RandomLevel("SSYBCX")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
BodyPracticeData:EquptSuperPart(kind2, "SSYBCX", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,2600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
 npc.ScaleAddIM = 2
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end


function WXXX:D9()-- 4000

world:ShowMsgBox('第9波，《生化危机》抵御丧尸的进攻，成功防守将获得奖励。')
for i=1,12,1 do-- 1阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("一阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_1");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "SSZ" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)

BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,100,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

for i=1,12,1 do-- 2阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",1);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("二阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_2");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.01,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.01,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.01,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",9,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.01,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,200,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

for i=1,9,1 do--3阶丧尸
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("三阶丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5800,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",80,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",1000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",1000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,400,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end

local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",2);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("丧尸王");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,1)
npc.PropertyMgr:AddModifier("WX_SD_3");
npc:ChangeRank(g_emNpcRank.Disciple);
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

npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",10000,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.8,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",800,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",100000,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",100000,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",1.5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力

local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local kind1 = CS.XiaWorld.g_emSuperPartEquptKind.Defense
local kind2 = CS.XiaWorld.g_emSuperPartEquptKind.Effect
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"}
local MTR = WorldLua:RandomInt(1, #MT+1);
local MTR1 = WorldLua:RandomInt(1, #MT+1);
local index = 0
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UnLockSuperPart(""..MT[MTR1].."", false)
BodyPracticeData:UnLockSuperPart("SSYBWZ", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:UpgradSuperPart2RandomLevel("SSYBWZ")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", index);
BodyPracticeData:EquptSuperPart(kind1, ""..MT[MTR1].."", index);
BodyPracticeData:EquptSuperPart(kind2, "SSYBWZ", index);
do
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,2600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(1000000000019)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
 npc.ScaleAddIM = 2
if SL1 <= 1 then
npc.FightBody.AttackWait = 100;
else
npc.FightBody.AttackWait = 5;
end
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end
