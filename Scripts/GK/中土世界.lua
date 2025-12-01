local WXXX = GameMain:GetMod("WXXX");
local time = 0;
local flag = 0;



function WXXX:D19()


world:ShowMsgBox('《中土世界》兽人海。怪物特点战斗中受到部位伤害效果减半')
for i=1,12,1 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/ZTBSR/BSR.FBX")
npc.PropertyMgr:AddModifier("WX_BSR");
npc:SetName("兽人武装斗士");
npc:AddTitle("兽族武者",0,CS.XiaWorld.g_emNpcTitleType.Normal,2)
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
npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",5000,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",10,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",0,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.2,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.2,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.1,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",300,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",500,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",500,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",25,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",15,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",2,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",2,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",5,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "WX_BSR" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)
BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1140,1380),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(999999999)
npc.FightBody.AttackWait = 0;
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",0);
npc:AddNpcModPath("Mod/GW/ZTBSR/BSR.FBX")
npc.PropertyMgr:AddModifier("WX_BSR");
npc:SetName("兽人武装战士");
npc:AddTitle("兽族武者",0,CS.XiaWorld.g_emNpcTitleType.Normal,3)
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
npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",500000,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",1000,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",500,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.4,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.4,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.2,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.2,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",600,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",500,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",500,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",50,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",0,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",5,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",10,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local n = "WX_BSR" -- 秘体名字
local index = 0
BodyPracticeData:UnLockSuperPart(n, false)
BodyPracticeData:EquptSuperPart(kind, n, index);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1140,1380),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,1500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(999999999)
npc.FightBody.AttackWait = 0;
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;

end
