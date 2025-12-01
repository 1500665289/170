local ZXRW = GameMain:NewMod("ZXRW");



function ZXRW:SHWJ(JF,ZQ,HQ,GJ,FY,JJ,RS)
local N = world.DayCount
local N1 = world.DaySecond
for i=1,RS,1 do
local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human",g_emNpcSex.Male);
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,JF,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple("Gong_SS",JJ);
npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
npc:SetName("丧尸");
npc:AddTitle("感染者",0,CS.XiaWorld.g_emNpcTitleType.Normal,2)
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
npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",ZQ,0,0,0)--真气+5
npc.PropertyMgr:ModifierProperty("BodyPratice_RecoverZhenQi",HQ,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPratice_DefenseRecoverZhenQi",-999,0,0,0)--回气+1
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_CatchFabao",0.1,0,0,0)--镇压概率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_ArmorPenetration",0.1,0,0,0)--穿透加成率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefRate",0.1,0,0,0)--防御成功率
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_AtkRate",0.5,0,0,0)--命中率
npc.PropertyMgr:ModifierProperty("MaxAge",800,0,0,0)--寿命
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",GJ,0,0,0)--攻击力
npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_DefPower",FY,0,0,0)--防御力
npc.PropertyMgr:ModifierProperty("PainTolerance",99,0,0,0)--疼痛忍耐
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",5,0,0,0)--身体强悍程度
npc.PropertyMgr:ModifierProperty("BodyPratice_CatchFaboValue",-0.5,0,0,0)--镇压法宝消耗
npc.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.1,0,0,0)--闪避
npc.PropertyMgr:ModifierProperty("BodyPractice_AngerFireEffectAddp",0.5,0,0,0)--激狂之怒倍率
npc.PropertyMgr:ModifierProperty("BodyPratice_SuperPartCostAddP",1,0,0,0)--秘体消耗
npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",1,0,0,0)--身体自愈能力
local BodyPracticeData = npc.PropertyMgr.Practice.BodyPracticeData
local kind = CS.XiaWorld.g_emSuperPartEquptKind.Attack
local MT = {"SSZ","SSJBTB","SSJBXM","SSJBJP","SSJBBM","SSJBFH"} -- 秘体名字
local MTR = WorldLua:RandomInt(0, #MT+1);
BodyPracticeData:UnLockSuperPart(""..MT[MTR].."", false)
BodyPracticeData:UpgradSuperPart2RandomLevel(""..MT[MTR].."")
BodyPracticeData:EquptSuperPart(kind, ""..MT[MTR].."", 0);
npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(999999999)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
if SL1 <= 1 then
npc.FightBody.AttackWait = 600;
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


