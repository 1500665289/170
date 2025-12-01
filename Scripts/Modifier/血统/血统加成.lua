
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_QLAR")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.ScaleAddIM = -0.5
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_QLAR1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.PropertyMgr.Practice:AddMagic("XT_QLARGD");
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_QLAR2")
--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.FightBody:AddSkill("XT_QLAR2");
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("ARDS1")
--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_KXSR1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.FightBody:AddSkill("XT_KXSR1");
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_KXSR1_X")


--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local A = npc:GetProperty("BodyPractice_SuperPartAddv_AtkPower");
  npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",0.25*A,0,0,0)--攻击力
end


--离开modifier

function tbModifier:Leave(modifier, npc)
	local A = npc:GetProperty("BodyPractice_SuperPartAddv_AtkPower");
	npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",-0.25*A,0,0,0)--攻击力
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_KXSR2")
--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.FightBody:AddSkill("XT_QLAR2");
  npc:AddNpcModPath("Mod/GW/KSSR/KXSR.FBX")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("KXZX1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.FightBody:AddSkill("KXZX1");
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_XXGXT")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt)
	local N1 = world.DaySecond
	time = time + dt;
	if time >= 1 then
		if N1 >= 150 and N1 <= 450 then
			npc:AddModifier("XT_XXGXT_X");
		else
			npc:RemoveModifier("XT_XXGXT_X");
		end
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_XXGXT1")

local time = 0;

function tbModifier:Enter(modifier, npc)
  npc.PropertyMgr.Practice:AddMagic("XT_XXGXT1");
end

--modifier step
function tbModifier:Step(modifier, npc, dt)
	local N1 = world.DaySecond
	time = time + dt;
	if time >= 1 then
		if N1 >= 275 and N1 <= 450 then
			npc:AddModifier("XT_XXGXT_X");
		else
			npc:RemoveModifier("XT_XXGXT_X");
		end
	end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_XXGXT2")

local time = 0;

function tbModifier:Enter(modifier, npc)
  npc.FightBody:AddSkill("XT_XXGXT2");
  npc:AddNpcModPath("Mod/GW/XXG/XXG.FBX")
end

--modifier step
function tbModifier:Step(modifier, npc, dt)
	local N1 = world.DaySecond
	time = time + dt;
	if time >= 1 then
		if N1 <= 125 or N1 >= 450 then
			npc:AddModifier("XT_XXGXT2_X");
		else
			npc:RemoveModifier("XT_XXGXT2_X");
		end
	end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_BSJRXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.ScaleAddIM = 1.5
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_BSJRXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.ScaleAddIM = 2
  npc.FightBody:AddSkill("XT_BSJRXT1");
end






local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_BSJRXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
  npc.ScaleAddIM = 5
  npc:AddNpcModPath("Mod/GW/BYJR/BYJR.FBX")
end




local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_DTSXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.PropertyMgr.Practice:AddMagic("XT_DTSXT");
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_DTSXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.PropertyMgr.Practice:AddMagic("XT_DTSXT2");
 npc:AddNpcModPath("Mod/GW/LXF/LXF.FBX")
end




local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_STSXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.PropertyMgr.Practice:AddMagic("XT_STSXT1");
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_STSXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc:UnlockGodGuard("WX_HF_STS1");
 npc:UnlockGodGuard("WX_HF_STS2");
 npc:UnlockGodGuard("WX_HF_STS3");
 npc:AddNpcModPath("Mod/GW/MJL/MJL.FBX")
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_HF_STS1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
 local data2 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddMirror,Desc = "炽魂: 每攻击9出现18道分型，持续6秒",nParam1="9",nParam2 ="18",fParam1 ="6"};
    if fabao ~= nil then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT*1.1)
			fabao.Fabao:AddAbilityData(data2);
	else
	world:ShowMsgBox('没法宝你逗我玩呢？')
		
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_HF_STS2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
   npc.FightBody:AddSkill("WX_HF_STS2");
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_HF_STS3")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
local SL2 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumWorker)
   npc.PropertyMgr:AddModifier("WX_HF_STS3_X",1,false,SL1+SL2,false,-1)
end




local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_XTXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.FightBody:AddSkill("XT_XTXT1");
  npc:AddNpcModPath("Mod/GW/XT/XT.FBX")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_LYJLXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.PropertyMgr.Practice:AddMagic("XT_LYJLXT2");
  npc:AddNpcModPath("Mod/GW/LYJL/LYJL.FBX")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_JLXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.PropertyMgr.Practice:AddMagic("XT_JLXT1");

end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_JLXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.PropertyMgr.Practice:AddMagic("XT_JLXT2");
  npc:AddNpcModPath("Mod/GW/JL/JL.FBX")
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_PXXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
npc.LuaHelper:DropAwardItem("XTWQ_PXXT1",1)

end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_PXXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
npc.LuaHelper:DropAwardItem("XTWQ_PXXT2",1)
  npc:AddNpcModPath("Mod/GW/PX/PX.FBX")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YTXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
npc.LuaHelper:DropAwardItem("XTWQ_YTXT",1)

end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YTXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)

  npc:AddNpcModPath("Mod/GW/YT/YT.FBX")
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YYXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local A = {"XTWQ_YYXT1","XTWQ_YYXT2","XTWQ_YYXT3","XTWQ_YYXT4","XTWQ_YYXT5"}
	local N1 = world.DaySecond
	if N1 >= 500 then
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT1",1)
	elseif N1 >= 400 then
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT2",1)
	elseif N1 >= 300 then
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT3",1)
	elseif N1 >= 200 then
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT4",1)
	elseif N1 >= 100 then
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT5",1)
	else
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT3",1)
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT4",1)
	npc.LuaHelper:DropAwardItem("XTWQ_YYXT5",1)
	end
	

end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YYXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	 npc.PropertyMgr.Practice:AddMagic("XT_YYXT1");
	 
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YYXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	 npc.PropertyMgr.Practice:AddMagic("XT_YYXT2");
	npc:AddNpcModPath("Mod/GW/YY/YY.FBX")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_PSXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc:AddModifier("MY_Tu");

end






local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_PSXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc:AddModifier("MY_Tu");
	npc:AddNpcModPath("Mod/GW/PS/PS.FBX")
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_BDEXT")


--modifier step
function tbModifier:Step(modifier, npc, dt)
	local N1 = world.DaySecond

		if N1 >= 125 and N1 <= 450 then
			npc:AddModifier("XT_BDEXTD");
			npc:RemoveModifier("XT_BDEXTN");
		else
			npc:RemoveModifier("XT_BDEXTD");
			npc:AddModifier("XT_BDEXTN");
		end

end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_BDEXT1")

--进入modifier
function tbModifier:Enter(modifier, npc)
 npc.FightBody:AddSkill("XT_BDEXT1");

end

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	local N1 = world.DaySecond

		if N1 >= 125 and N1 <= 450 then
			npc:AddModifier("XT_BDEXT1D");
			npc:RemoveModifier("XT_BDEXT1N");
		else
			npc:RemoveModifier("XT_BDEXT1D");
			npc:AddModifier("XT_BDEXT1N");
		end

end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_BDEXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc:AddNpcModPath("Mod/GW/BDE/BDE.FBX")
end

function tbModifier:Step(modifier, npc, dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
	for k,v in pairs(a) do
	local d = v.Npc
	local m = npc.PropertyMgr:FindModifier("XT_BDEXT2_X");
	if d ~= nil then
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and m ~= nil then--判断是否是敌人和npc
			d:AddModifier("XT_BDEXT2_X");
			else
			return 0
			end
	else
	return 0
	
	end
	end

end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_XLXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc:AddNpcModPath("Mod/GW/XL/XL.FBX")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_DXXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc:AddModifier("WX_DXXT_X")
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_DXXT_X")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	local m = npc.PropertyMgr:FindModifier("WX_DXXT_X")
	local L = npc:GetProperty("NpcLingMaxValue");
	if m.Stack == 25 then
	npc.PropertyMgr:AddModifier("WX_DXXT",1,false,1,false,-1)
	elseif m.Stack == 50 then
	npc.PropertyMgr:AddModifier("WX_DXXT",1,false,1,false,-1)
	elseif m.Stack == 75 then
	npc.PropertyMgr:AddModifier("WX_DXXT",1,false,1,false,-1)
	npc:AddNpcModPath("Mod/GW/XL/XL.FBX")
	elseif m.Stack == 100 then
	npc.PropertyMgr:AddModifier("WX_DXXT",1,false,1,false,-1)
	end
	if npc.LingV <= L*0.4 then
		local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false then--判断是否是敌人和npc
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-150*m.Stack)
							if d.ZhenQi <= 100 then
							d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
							end	
					else 
						d:AddLing(-300*m.Stack)
							if d.LingV <= 100 then
							d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
							end	
					end
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(54, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil,11);--弹道效果设置
			 end
	else
	return 0
	end
			
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YLXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
	CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YLXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
	CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
	end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YLXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
	CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
	end
	npc:AddNpcModPath("Mod/GW/YL/YL.FBX")
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_RMXT") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_RMXT1") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	
	npc:AddNpcModPath("Mod/GW/HB/HB1.FBX")
end

function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_RMXT2") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
		
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RMXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
	local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_YGXT") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RMXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_YGXT1") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RMXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	
	npc:AddNpcModPath("Mod/GW/HB/HB2.FBX")
end

function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_YGXT2") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_RMXT") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT1")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_RMXT1") then
			npc.PropertyMgr:AddModifier("XT_RYJB1",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
	
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	
	npc:AddNpcModPath("Mod/GW/HB/HB1.FBX")
end

function tbModifier:Step(modifier, npc, dt)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,40)
	for k,v in pairs(a) do
		local d = v.Npc
		if d.PropertyMgr:HasModifier("XT_RMXT2") then
			npc.PropertyMgr:AddModifier("XT_RYJB",1,false,1,false,-1)
		else
			npc:RemoveModifier("XT_RYJB");
		end
		
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RYJB")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	if npc.PropertyMgr:HasModifier("XT_RMXT") then
		npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,500,false,-1)
	elseif npc.PropertyMgr:HasModifier("XT_RMXT1") then
		npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,800,false,-1)
	elseif npc.PropertyMgr:HasModifier("XT_RMXT2") then
		npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,1000,false,-1)
	elseif npc.PropertyMgr:HasModifier("XT_YGXT") then
		npc.PropertyMgr:ModifierProperty("MaxAge",500,0,0)
	elseif npc.PropertyMgr:HasModifier("XT_YGXT") then
		npc.PropertyMgr:ModifierProperty("MaxAge",1500,0,0)
	elseif npc.PropertyMgr:HasModifier("XT_YGXT") then
		npc.PropertyMgr:ModifierProperty("MaxAge",6000,0,0)
	end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RMXTX")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	local XS = npc:GetProperty("NpcFight_ShieldResistanceToHuo");
	local XS1 = npc:GetProperty("GongMatch_HuoAddV");
	if d.GongKind ~= CS.XiaWorld.g_emGongKind.Body then
	 npc:AddLing(-1500-(1500-((XS/10)+XS1)))
	else
	npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-500-(500-((XS/10)+XS1)))
	end
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RMXT1X")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	local XS = npc:GetProperty("NpcFight_ShieldResistanceToHuo");
	local XS1 = npc:GetProperty("GongMatch_HuoAddV");
	if d.GongKind ~= CS.XiaWorld.g_emGongKind.Body then
	 npc:AddLing(-3000-(3000-((XS/10)+XS1)))
	else
	npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000-(1000-((XS/10)+XS1)))
	end
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_RMXT2X")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Step(modifier, npc, dt)
	local XS = npc:GetProperty("NpcFight_ShieldResistanceToHuo");
	local XS1 = npc:GetProperty("GongMatch_HuoAddV");
	if d.GongKind ~= CS.XiaWorld.g_emGongKind.Body then
	 npc:AddLing(-9000-(9000-((XS/10)+XS1)))
	else
	npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-3000-(3000-((XS/10)+XS1)))
	end
	
end




local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXTX")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local XS = npc:GetProperty("NpcFight_ShieldResistanceToShui");
	npc.PropertyMgr:AddModifier("WX_SHJS",1,false,math.ceil(XS)+100,false,-1)
	npc.PropertyMgr:AddModifier("WX_SHJS2",1,false,math.ceil(XS)+100,false,-1)
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WX_SHJS");
	npc:RemoveModifier("WX_SHJS2");
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT1X")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local XS = npc:GetProperty("NpcFight_ShieldResistanceToShui");
	npc.PropertyMgr:AddModifier("WX_SHJS",1,false,math.ceil(XS)+300,false,-1)
	npc.PropertyMgr:AddModifier("WX_SHJS2",1,false,math.ceil(XS)+300,false,-1)
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WX_SHJS");
	npc:RemoveModifier("WX_SHJS2");
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_YGXT2X")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local XS = npc:GetProperty("NpcFight_ShieldResistanceToShui");
	npc.PropertyMgr:AddModifier("WX_SHJS",1,false,math.ceil(XS)+1000,false,-1)
	npc.PropertyMgr:AddModifier("WX_SHJS2",1,false,math.ceil(XS)+1000,false,-1)
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WX_SHJS");
	npc:RemoveModifier("WX_SHJS2");
end




local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_TMXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc.LuaHelper:DropAwardItem("XTWQ_TMXT",1)
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XT_TMXT2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc:AddNpcModPath("Mod/GW/TM/TM.FBX")
end















