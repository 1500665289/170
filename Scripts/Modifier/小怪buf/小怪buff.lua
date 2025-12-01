
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_MNYJ_3")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
		local Z = npc:GetProperty("NpcLingMaxValue");
		local A = npc.PropertyMgr:FindModifier("MY_NormalAttack")
		if npc.LingV <= Z*0.5 and A == nil then
		npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,6,false,-1)
		else
		return 0
		end
				
	end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_MNYJ_2")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
		A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
		for k,v in pairs(A) do
		local d = v.Npc
			if d ~= nil then
				if d.PropertyMgr:FindModifier("WX_MNYJ_2_0") == false then
					if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
						if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
							return 0
						else 
							d:AddModifier("WX_MNYJ_2_0")
							world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
							 function(p)
							  world:PlayEffect(72, d.Pos, 5)
							 end
							 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
							 end	
						end
								 
					end
				else
				return 0 
				end
		end
				
	end

	


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_MNYJ_1")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
	local m4 = npc.PropertyMgr:FindModifier("WX_CM");
	local m1 = npc.PropertyMgr:FindModifier("WX_MNYJ_1_0");
	local Z3 = npc:GetProperty("NpcLingMaxValue");
	if npc.LingV == Z3*0.50 and m1 == nil then
		A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,2000) --获取NPC坐标指定范围内指定阵营敌人
		for k,v in pairs(A) do
		local d = v.Npc
			if d ~= nil then
			local Z = d:GetProperty("NpcLingMaxValue");
			local Z1 = d:GetProperty("BodyPratice_MaxZhenQi");
				if m4 == nil then
					if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
						if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
							d:AddModifier("WX_MNYJ_1_0")
							d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-Z1)
							world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
							 function(p)
							  world:PlayEffect(72, d.Pos, 5)
							 end
							 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
		
						else 
							d:AddModifier("WX_MNYJ_1_0")
							world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
							 function(p)
							  world:PlayEffect(72, d.Pos, 5)
							 end
							 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
							 end	
							d:AddLing(-Z)	
						end
								 
					end
				else
				return 0 
				end
		end
				
	end
	end	
	



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_MNYJ")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
	local m1 = npc.PropertyMgr:FindModifier("WX_MNYJ1");
	local m2 = npc.PropertyMgr:FindModifier("WX_MNYJ2");
	local m4 = npc.PropertyMgr:FindModifier("WX_CM");
	local Z = npc:GetProperty("NpcLingMaxValue");
	
	if npc.LingV <= Z*0.55 and m1 == nil then
		local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false then--判断是否是敌人和npc
				if npc.LingV <= Z*0.75 and m4 ~= nil then
					npc:AddModifier("WX_MNYJ1")
				else
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						if npc.LingV == Z*0.75 then
						npc:AddModifier("WX_MNYJ1")
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
						npc:AddLing(500);
						world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
						 function(p)
						  world:PlayEffect(74, d.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
						 end	
							
					else 
						if npc.LingV == Z*0.75 then
						npc:AddModifier("WX_MNYJ1")
						else
						d:AddLing(-2000)
						npc:AddLing(2000);
						world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
						 function(p)
						  world:PlayEffect(74, d.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
						 end	
					end
				end	
				end
		elseif npc.LingV <= Z*0.3 and m2 == nil then
		local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false then--判断是否是敌人和npc
				if npc.LingV <= Z*0.6 and m4 ~= nil then
					npc:AddModifier("WX_MNYJ2")
				else
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						if npc.LingV == Z*0.6 then
						npc:AddModifier("WX_MNYJ2")
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
						npc:AddLing(500);
						world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
						 function(p)
						  world:PlayEffect(74, d.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
						 end	
						
					else 
						if npc.LingV == Z*0.6 then
						npc:AddModifier("WX_MNYJ2")
						else
						d:AddLing(-2000)
						npc:AddLing(2000);
						world:FlyLineEffect(d.Pos, npc.Pos ,0.8,
						 function(p)
						  world:PlayEffect(74, d.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, 15);--弹道效果设置
						 end	
					end
				end	
			end	
		end
	end	
	



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("SSW_WZ")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
	local N1 = world.DaySecond
	local BBS = WorldLua:RandomInt(1, 101);
	local m1 = npc.PropertyMgr:FindModifier("SSW_WZ1");
	local m4 = npc.PropertyMgr:FindModifier("SSW_WZ1_x");
	local m5 = npc.PropertyMgr:FindModifier("SSW_WZ2_x");
	local m6 = npc.PropertyMgr:FindModifier("SSW_WZ3_x");
	local Z = npc.MaxZhenQi
	
	if npc.ZhenQi <= Z*0.75 and m4 == nil then
		GameMain:GetMod("WXXX"):SSW1();
		npc:AddModifier("SSW_WZ1_x");
	elseif npc.ZhenQi <= Z*0.5 and m5 == nil then
		GameMain:GetMod("WXXX"):SSW1();
		npc:AddModifier("SSW_WZ2_x");
	elseif npc.ZhenQi <= Z*0.25 and m6 == nil then
		GameMain:GetMod("WXXX"):SSW1();
		npc:AddModifier("SSW_WZ3_x");
	else
		npc:RemoveModifier("SSW_WZ1");
	end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("SSW_SX")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
	local N1 = world.DaySecond
	local BBS = WorldLua:RandomInt(1, 101);
	local m1 = npc.PropertyMgr:FindModifier("SSW_SX1");
	local m2 = npc.PropertyMgr:FindModifier("SSW_SX2");
	local m3 = npc.PropertyMgr:FindModifier("SSW_SX3");
	A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
	if m3 ~= nil then
	npc:RemoveModifier("SSW_SX1")
	npc:RemoveModifier("SSW_SX2")
	elseif m2 ~= nil then
	npc:RemoveModifier("SSW_SX1")
	end
	for k,v in pairs(A) do
	local d = v.Npc 
	
		if d ~= nil then
			if m3 ~= nil then
				if d.Camp == g_emFightCamp.Player and d.IsDeath == ture then--判断是否是敌人和npc
				world:FlyLineEffect(d.Pos, npc.Pos ,1,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Earth/EarthProjectileSmall", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Life/LifeImpactMega");--弹道效果设置
				end
					npc:ModifierProperty("BodyPratice_MaxZhenQi",50*A.Count);
					npc:ModifierProperty("BodyPratice_BodyStrong",0.8*A.Count);
					npc:ModifierProperty("BodyPractice_SuperPartAddp_AtkPower",0.5*A.Count);
					npc:ModifierProperty("BodyPractice_SuperPartAddp_DefPower",0.5*A.Count);
					npc:ModifierProperty("MoveSpeed",0.05*A.Count);
					npc:ModifierProperty("PainTolerance",0.5*A.Count);
			elseif m2 ~= nil then
				if d.Camp == g_emFightCamp.Player and d.IsDeath == ture then--判断是否是敌人和npc
				world:FlyLineEffect(d.Pos, npc.Pos ,1,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Earth/EarthProjectileSmall", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Life/LifeImpactMega");--弹道效果设置
				end
					npc:ModifierProperty("BodyPratice_MaxZhenQi",25*A.Count);
					npc:ModifierProperty("BodyPratice_BodyStrong",0.12*A.Count);
					npc:ModifierProperty("BodyPractice_SuperPartAddp_AtkPower",0.15*A.Count);
					npc:ModifierProperty("BodyPractice_SuperPartAddp_DefPower",0.15*A.Count);
					npc:ModifierProperty("MoveSpeed",0.02*A.Count);
					npc:ModifierProperty("PainTolerance",0.15*A.Count);
			else
				if d.Camp == g_emFightCamp.Player and d.IsDeath == ture then--判断是否是敌人和npc
				world:FlyLineEffect(d.Pos, npc.Pos ,1,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Earth/EarthProjectileSmall", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Life/LifeImpactMega");--弹道效果设置
				end
					npc:ModifierProperty("BodyPratice_MaxZhenQi",15*A.Count);
					npc:ModifierProperty("BodyPratice_BodyStrong",0.08*A.Count);
					npc:ModifierProperty("BodyPractice_SuperPartAddp_AtkPower",0.05*A.Count);
					npc:ModifierProperty("BodyPractice_SuperPartAddp_DefPower",0.05*A.Count);
					npc:ModifierProperty("MoveSpeed",0.01*A.Count);
					npc:ModifierProperty("PainTolerance",0.05*A.Count);
			end
		end
	
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("BM")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt) 
	local N1 = world.DaySecond
	local BBS = WorldLua:RandomInt(1, 101);
	local m1 = npc.PropertyMgr:FindModifier("SS_BM1");
	local m2 = npc.PropertyMgr:FindModifier("SS_BM2");
	local m3 = npc.PropertyMgr:FindModifier("SS_BM3");
	A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,npc.Pos,100) --获取NPC坐标指定范围内指定阵营敌人
	if m3 ~= nil then
	npc:RemoveModifier("SS_BM1")
	npc:RemoveModifier("SS_BM2")
	elseif m2 ~= nil then
	npc:RemoveModifier("SS_BM1")
	end
	for k,v in pairs(A) do
	local d = v.Npc
	if npc.IsDeath == true then
		if d ~= nil then
			if m3 ~= nil then
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
				world:FlyLineEffect(npc.Pos, d.Pos ,1,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Life/LifeProjectileNormal", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowImpactMega");--弹道效果设置
				end
					if d.IsDisciple == false then
					d:AddDamage("Body","SwordBallDamage",1,false);
					else
					if d.Ling == nil then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-300000)
					else 
						d:AddLing(-300000)
					end
					end
				npc:RemoveModifier("SS_BM3")	
			elseif m2 ~= nil then
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
				world:FlyLineEffect(npc.Pos, d.Pos ,1,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Life/LifeProjectileNormal", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowImpactMega");--弹道效果设置
				end
					if d.IsDisciple == false then
					d:AddDamage("Body","SwordBallDamage",1,false);
					else
					if d.Ling == nil then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-100000)
					else 
						d:AddLing(-100000)
					end
					end
				npc:RemoveModifier("SS_BM2")
			else
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
				world:FlyLineEffect(npc.Pos, d.Pos ,1,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Life/LifeProjectileNormal", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowImpactMega");--弹道效果设置
				end
					if d.IsDisciple == false then
					d:AddDamage("Body","SwordBallDamage",1,false);
					else
					if d.Ling == nil then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-50000)
					else 
						d:AddLing(-50000)
					end
					end
				npc:RemoveModifier("SS_BM")
			end
		end
	end
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXSD")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt)
	local N1 = world.DaySecond
	local BBS = WorldLua:RandomInt(1, 101);
	local m1 = npc.PropertyMgr:FindModifier("WX_SD_X1");
	local m5 = npc.PropertyMgr:FindModifier("WX_SD_T");
	local m2 = npc.PropertyMgr:FindModifier("WX_SD_X2");
	local m3 = npc.PropertyMgr:FindModifier("WX_SD_X3");
	local m4 = npc.PropertyMgr:FindModifier("WX_TBDXQ");
	if m4 ~= nil then
	return 0
	else
		if m1 ~= nil then
			if BBS <= 20 and m1.Stack == 20000 then
				if m5 ~= nil then
				return 0 
				else
				npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Enemy)
				npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
				npc.FightBody.AttackTime = 100;
				npc.FightBody.AutoNext = true;
				npc.FightBody.IsAttacker = true;
				npc.TargetMode = 2;
				npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
				npc:RemoveModifier("WX_SD_X1")
				npc.PropertyMgr:AddModifier("WX_SD_T",1,false,1,false,-1)
				end
			else
				local D = npc:GetProperty("AbilityLvAddV")
				if D < 20 then
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,6,false,-1)
				elseif D < 40 then
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,4,false,-1)
				else
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,2,false,-1)
				end
			end
		elseif m2 ~= nil then
			if BBS <= 10 and m2.Stack == 10000 then
				if m5 ~= nil then
				return 0 
				else
				npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Enemy)
				npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
				npc.FightBody.AttackTime = 100;
				npc.FightBody.AutoNext = true;
				npc.FightBody.IsAttacker = true;
				npc.TargetMode = 2;
				npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
				npc:RemoveModifier("WX_SD_X2")
				npc.PropertyMgr:AddModifier("WX_SD_T",1,false,1,false,-1)
				end
			else
				local D = npc:GetProperty("AbilityLvAddV")
				if D < 20 then
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,9,false,-1)
				elseif D < 40 then
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,7,false,-1)
				else
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,4,false,-1)
				end
			end
		elseif m3 ~= nil then
			if m3.Stack == 5000 then
				if m5 ~= nil then
				return 0 
				else
				npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Enemy)
				npc:AddNpcModPath("Mod/GW/SS/SS2.FBX")
				npc.FightBody.AttackTime = 100;
				npc.FightBody.AutoNext = true;
				npc.FightBody.IsAttacker = true;
				npc.TargetMode = 2;
				npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
				npc:RemoveModifier("WX_SD_X3")
				npc.PropertyMgr:AddModifier("WX_SD_T",1,false,1,false,-1)
				end
			else
				local D = npc:GetProperty("AbilityLvAddV")
				if D < 20 then
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,12,false,-1)
				elseif D < 40 then
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,8,false,-1)
				else
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,6,false,-1)
				end
			end
		end
	end
	end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XM")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt)
	local m1 = npc.PropertyMgr:FindModifier("WX_XM1");
	local m2 = npc.PropertyMgr:FindModifier("WX_XM2");
	local m3 = npc.PropertyMgr:FindModifier("WX_XM");
	local m4 = npc.PropertyMgr:FindModifier("WX_XMX");
	local m5 = npc.PropertyMgr:FindModifier("WX_TBDXQ");
	local m6 = npc.PropertyMgr:FindModifier("WX_XMBJ");
	if m2 ~= nil then
	npc:RemoveModifier("WX_XM")
	npc:RemoveModifier("WX_XM1")
	local MQ = npc.MaxZhenQi
		if npc.ZhenQi <= MQ*0.5 and m6 == nil then
			local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Player,nil)
			local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
					if m5 ~= nil then
					d.PropertyMgr:AddModifier("WX_XMX",1,false,3,false,-1)
					else
					d.PropertyMgr:AddModifier("WX_XMX",1,false,6,false,-1)
					end
				npc.PropertyMgr:AddModifier("WX_XMBJ",1,false,1,false,-1)
				world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Storm/StormImpactMega", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowProjectileNormal");--弹道效果设置
				 end
		else
			return 0
		end
	elseif m1 ~= nil then
	npc:RemoveModifier("WX_XM")
	local MQ = npc.MaxZhenQi
		if npc.ZhenQi <= MQ*0.5 and m6 == nil then
			local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Player,nil)
			local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
					if m5 ~= nil then
					d.PropertyMgr:AddModifier("WX_XMX",1,false,2,false,-1)
					else
					d.PropertyMgr:AddModifier("WX_XMX",1,false,4,false,-1)
					end
				npc.PropertyMgr:AddModifier("WX_XMBJ",1,false,1,false,-1)
				world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Storm/StormImpactMega", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowProjectileNormal");--弹道效果设置
				 end
		else
			return 0
		end
	else
	local MQ = npc.MaxZhenQi
		if npc.ZhenQi <= MQ*0.5 and m6 == nil then
			local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Player,nil)
			local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
					if m5 ~= nil then
					d.PropertyMgr:AddModifier("WX_XMX",1,false,1,false,-1)
					else
					d.PropertyMgr:AddModifier("WX_XMX",1,false,2,false,-1)
					end
				npc.PropertyMgr:AddModifier("WX_XMBJ",1,false,1,false,-1)
				world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Storm/StormImpactMega", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowProjectileNormal");--弹道效果设置
				 end
		else
			return 0
		end
	end
	end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("GT")

local time = 0;

--modifier step
function tbModifier:Step(modifier, npc, dt)
	local m1 = npc.PropertyMgr:FindModifier("WX_GT");
	local m5 = npc.PropertyMgr:FindModifier("WX_TBDXQ");
	local m6 = npc.PropertyMgr:FindModifier("WX_XMBJ");
	if m1 ~= nil then
		local MQ = npc.MaxZhenQi
		if npc.ZhenQi <= MQ*0.5 and m6 == nil then
			local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Player,nil)
			local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
				if d.Camp == g_emFightCamp.Player and d.IsDeath == false then--判断是否是敌人和npc
					if m5 ~= nil then
					d.PropertyMgr:AddModifier("SS_GT",1,false,5,false,-1)
					else
					d.PropertyMgr:AddModifier("SS_GT",1,false,10,false,-1)
					end
				npc.PropertyMgr:AddModifier("WX_XMBJ",1,false,1,false,-1)
				world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Storm/StormImpactMega", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowProjectileNormal");--弹道效果设置
				 end
		else
			return 0
		end	
	
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XMK")

local time = 0;

--modifier step
function tbModifier:Enter(modifier, npc)
			npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Enemy)
				npc.FightBody.AttackTime = 100;
				npc.FightBody.AutoNext = true;
				npc.FightBody.IsAttacker = true;
				npc.TargetMode = 2;
				npc.EnemyType = CS.XiaWorld.Fight.g_emEnemyType.Attacker;
		end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("XMK_J")

local time = 0;

--modifier step
function tbModifier:Enter(modifier, npc)
			npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Player)
				
		end


















