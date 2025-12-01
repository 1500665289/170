local WXXX = GameMain:GetMod("WXXX");
local time = 0;
local flag = 0;



function WXXX:D1()


world:ShowMsgBox('第一波，《生化危机》抵御丧尸的进攻。')
for i=1,6,1 do
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
npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",0,0,0,0)--真气+5
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
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",-2,0,0,0)--身体强悍程度
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
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(999999999)
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 10000;
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
end
