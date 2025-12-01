local WXXX = GameMain:GetMod("WXXX");

function WXXX:D10()

world:ShowMsgBox('第十波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,4,1 do
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY1")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,300,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(150000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",2)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
while(count < 2) do
for i=1,2,1 do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao:AddGodCount(0)
fabao:BindItem2Npc(npc)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.8)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,55)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end


function WXXX:D11()

world:ShowMsgBox('第11波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,4,1 do
npc = CS.XiaWorld.NpcRandomMechine.RandomNpc("Human");
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY1")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,300,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(200000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",2)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
while(count < 2) do
for i=1,2,1 do
local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
fabao.Fabao:AddGodCount(0)
fabao:BindItem2Npc(npc)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,100)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,0.8)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,55)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end

function WXXX:D12()

world:ShowMsgBox('第12波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,6,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY1")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,300,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(300000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end

function WXXX:D13()

world:ShowMsgBox('第13波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,6,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(400000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end


function WXXX:D14()

world:ShowMsgBox('第14波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,9,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

end

function WXXX:D15()

world:ShowMsgBox('第15波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,6,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ_1")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,1500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;

end

function WXXX:D16()

world:ShowMsgBox('第15波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,6,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end
for i=1,2,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ_1")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,1500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;

end

end

function WXXX:D17()

world:ShowMsgBox('第15波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,6,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ_2")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,1500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000017);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;

end

function WXXX:D18()

world:ShowMsgBox('第15波，《木乃伊归来》抵御木乃伊的进攻，成功防守将获得少量奖励。')
for i=1,6,1 do
npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,600,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),9);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
end

npc = CS.XiaWorld.SpNpcMgr.Instance:CallSpNpc(CS.XiaWorld.SpNpcMgr.Instance:AddSpNpc(nil).Name);
npc:AddNpcModPath("Mod/GW/MNY/MNY.FBX")
npc:SetName("木乃伊");
npc:AddModifier("WX_MNY2")
npc:AddModifier("WX_MNYJ_3")
CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,npc.LuaHelper:RandomInt(1240,1280),Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
World.map:DropItems("Item_PTJB",nil,1500,npc.Key,false,true,0,1);
npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
npc.PropertyMgr.Practice:RandomTree();
npc.BodyColor = 2;
npc:AddLing(100000000001999);
npc.PropertyMgr.Practice:MakeGold(600000);
npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",3)
npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) 
npc:AddLing(100000000001999);
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
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,200)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,150)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,1)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,12)
fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,85)
npc:EquipItem(fabao);
fabao:AddLing(fabao.MaxLing);
count = count + 1;
end
end
npc:AddLing(1000000000019);
npc.FightBody.AutoNext = true;
npc.FightBody.IsAttacker = true;
npc.FightBody.AttackWait = 5;
npc.FightBody.AttackTime = 6000;
npc.TargetMode = 2;
npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;

end