local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("TMXT")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	npc.PropertyMgr:AddModifier("WX_SLDF",1,false,1,false,-1)
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("BSDJ")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
npc.PropertyMgr:AddModifier("WX_SLDJ",1,false,1,false,-1)
local A = npc:GetProperty("BodyPractice_SuperPartAddv_AtkPower");
  npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",0.2*A,0,0,0)--攻击力
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("YAHJ")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local A = npc:GetProperty("BodyPractice_SuperPartAddv_AtkPower");
	local B = npc:GetProperty("BodyPractice_SuperPartAddp_DefPower");
	npc.PropertyMgr:AddModifier("WX_SLDQ",1,false,1,false,-1)
  npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddv_AtkPower",0.2*A+3000,0,0,0)--攻击力
  npc.PropertyMgr:ModifierProperty("BodyPractice_SuperPartAddp_DefPower",0.2*B+3000,0,0,0)--攻击力
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_TBDXQ")

function tbModifier:Leave(modifier, npc)

		npc:RemoveModifier("WX_SD_X1")
		npc:RemoveModifier("WX_SD_X2")
		npc:RemoveModifier("WX_SD_X3")
end


	

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDF")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_F");
	npc.PropertyMgr:ModifierProperty("SLD_F",-500,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDF2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_F");
	npc.PropertyMgr:ModifierProperty("SLD_F",-2500,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDF2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDF2") or npc.PropertyMgr:HasModifier("WX_SLDF3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDF2X")
	npc:RemoveModifier("WX_SLDF2X2")
	npc:RemoveModifier("WX_SLDF2X3")
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDF3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_F");
	npc.PropertyMgr:ModifierProperty("SLD_F",-50000,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDF3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDF3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDF3X")
	npc:RemoveModifier("WX_SLDF3X2")
	npc:RemoveModifier("WX_SLDF3X3")
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDDJ")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_DJ");
	npc.PropertyMgr:ModifierProperty("SLD_DJ",-500,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDDJ2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
	
	npc:RemoveModifier("WX_SLDP2")
	npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_DJ");
	npc.PropertyMgr:ModifierProperty("SLD_DJ",-2500,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDDJ2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDDJ2") or npc.PropertyMgr:HasModifier("WX_SLDDJ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDDJ2X")
	npc:RemoveModifier("WX_SLDDJ2X2")
	npc:RemoveModifier("WX_SLDDJ2X3")
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDDJ3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
	
	npc:RemoveModifier("WX_SLDP3")
	npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_DJ");
	npc.PropertyMgr:ModifierProperty("SLD_DJ",-50000,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDDJ3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDDJ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDDJ3X")
	npc:RemoveModifier("WX_SLDDJ3X2")
	npc:RemoveModifier("WX_SLDDJ3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDDJ3X3") then
	 npc.FightBody:AddSkill("WX_SLDDJ3X3");
	 end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDFZ")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_FZ");
	npc.PropertyMgr:ModifierProperty("SLD_FZ",-500,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDFZ2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_FZ");
	npc.PropertyMgr:ModifierProperty("SLD_FZ",-2500,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDFZ2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDFZ2") or npc.PropertyMgr:HasModifier("WX_SLDFZ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDFZ2X")
	npc:RemoveModifier("WX_SLDFZ2X2")
	npc:RemoveModifier("WX_SLDFZ2X3")
	end
	
		if npc.PropertyMgr:HasModifier("WX_SLDG2X2") then
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then	
				local a = 90009 --或者string,这个是特效编号或路径
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c)
				local ZQSX = npc.MaxZhenQi
				local GWLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Manual)
					 a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,npc.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false then--判断是否是敌人和npc
								   if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-ZQSX*0.0005*GWLV)
										if d.ZhenQi <= 100 then
										d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
										d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
										end
									else 
									d:AddLing(-ZQSX*0.0005*GWLV)
										if d.LingV <= 100 then
										d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
										d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
										end	
									end
								   world:FlyLineEffect(npc.Pos, d.Pos ,0.5,
									function(p)
									 world:PlayEffect("Effect/A/Prefabs/Projectiles/Life/LifeProjectileNormal", d.Pos, 5)
									end
									, "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Muzzleflash/Normal/ShadowMuzzleNormal");--弹道效果设置
								
								end   
						end	
					 end 
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000) 
			else
				if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Jin then
					local a = 90001 --或者string,这个是特效编号或路径
					local b = npc.Key -- 坐标
					local c = 5 --持续时间
					WorldLua:PlayEffect(a,b, c)
				end
				if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
					local a = 90002 --或者string,这个是特效编号或路径
					local b = npc.Key -- 坐标
					local c = 5 --持续时间
					WorldLua:PlayEffect(a,b, c)
				end
				if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui then
					local a = 90003 --或者string,这个是特效编号或路径
					local b = npc.Key -- 坐标
					local c = 5 --持续时间
					WorldLua:PlayEffect(a,b, c)
				end
				if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo then
					local a = 90004 --或者string,这个是特效编号或路径
					local b = npc.Key -- 坐标
					local c = 5 --持续时间
					WorldLua:PlayEffect(a,b, c)
				end
				if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Tu then
					local a = 90005 --或者string,这个是特效编号或路径
					local b = npc.Key -- 坐标
					local c = 5 --持续时间
					WorldLua:PlayEffect(a,b, c)
				end
				if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.None then
					local a = 90006 --或者string,这个是特效编号或路径
					local b = npc.Key -- 坐标
					local c = 5 --持续时间
					WorldLua:PlayEffect(a,b, c)
				end
				local LQSX = npc.MaxLing
				local SFLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					 a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,npc.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false then--判断是否是敌人和npc
								   if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-LQSX*0.00005*SFLV)
										if d.ZhenQi <= 100 then
										d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
										d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
										end
									else 
									d:AddLing(-LQSX*0.00005*SFLV)
										if d.LingV <= 100 then
										d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
										d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
										end	
									end
								   world:FlyLineEffect(npc.Pos, d.Pos ,0.5,
									function(p)
									 world:PlayEffect("Effect/A/Prefabs/Projectiles/Life/LifeProjectileNormal", d.Pos, 5)
									end
									, "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Muzzleflash/Normal/ShadowMuzzleNormal");--弹道效果设置
								
								end   
						end	
					 end
					 npc:AddLing(-10000)
			end		
			
		end
		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDFZ3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_FZ");
	npc.PropertyMgr:ModifierProperty("SLD_FZ",-50000,0,0)
			
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDFZ3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDFZ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDFZ3X")
	npc:RemoveModifier("WX_SLDFZ3X2")
	npc:RemoveModifier("WX_SLDFZ3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDFZ3X3") then
	 npc.FightBody:AddSkill("SLD_FZ2");
	 end
end
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDFZ3X31")
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WX_SHJS")
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDG")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_G");
	npc.PropertyMgr:ModifierProperty("SLD_G",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDG2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_G");
	npc.PropertyMgr:ModifierProperty("SLD_G",-2500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDG2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDG2") or npc.PropertyMgr:HasModifier("WX_SLDG3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDG2X")
	npc:RemoveModifier("WX_SLDG2X2")
	npc:RemoveModifier("WX_SLDG2X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDG2X2") then
	 npc.FightBody:AddSkill("WX_SLDG2X2");
	 end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDG3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_G");
	npc.PropertyMgr:ModifierProperty("SLD_G",-50000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDG3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDG3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDG3X")
	npc:RemoveModifier("WX_SLDG3X2")
	npc:RemoveModifier("WX_SLDG3X3")
	end
		if npc.PropertyMgr:HasModifier("WX_SLDG3X2") then
		
		 a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,npc.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
			 for k,v in pairs(a) do
			 local d = v.Npc
			 
				 if d ~= nil then
					   if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and d.PropertyMgr:HasModifier("WX_SLDG3X21") then--判断是否是敌人和npc
						   for i = 1,6 do
						   if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
							d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
							if d.ZhenQi <= 100 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
							end	
							else 
							d:AddLing(-60000)
							if d.LingV <= 100 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
							end	
							end
						   world:FlyLineEffect(npc.Pos, d.Pos ,0.5,
							function(p)
							 world:PlayEffect("Effect/A/Prefabs/Projectiles/Lightning/LightningImpactNormal", d.Pos, 5)
							end
							, "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Lightning/LightningProjectileSmall");--弹道效果设置
						
						   end
					end
				end
			end
	 end
end



local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDD")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_D");
	npc.PropertyMgr:ModifierProperty("SLD_D",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDD2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_D");
	npc.PropertyMgr:ModifierProperty("SLD_D",-2500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDD2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDD2") or npc.PropertyMgr:HasModifier("WX_SLDD3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDD2X")
	npc:RemoveModifier("WX_SLDD2X2")
	npc:RemoveModifier("WX_SLDD2X3")
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDD3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_D");
	npc.PropertyMgr:ModifierProperty("SLD_D",-50000,0,0)		
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDD3X")
function tbModifier:Enter(modifier, npc)
	if npc.PropertyMgr:HasModifier("WX_SLDD3X2") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			local ZQSX = npc.MaxZhenQi					
			local JC = math.ceil(ZQSX/20000)
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-ZQSX)	
			npc.PropertyMgr:AddModifier("WX_SLDD3X2",1,false,JC,false,-1)
			local M = npc.PropertyMgr:FindModifier("WX_SLDD3X2");
			local M50 = math.ceil(M.Stack/50)
			npc.PropertyMgr:AddModifier("WX_SLDD3X21",1,false,M50,false,-1)
		else
			local LLSX = npc.MaxLing
			local JC = math.ceil(LLSX/2000000)
			npc:AddLing(-LLSX)
			npc.PropertyMgr:AddModifier("WX_SLDD3X2",1,false,JC,false,-1)
			local M = npc.PropertyMgr:FindModifier("WX_SLDD3X2");
			local M50 = math.ceil(M.Stack/50)
			npc.PropertyMgr:AddModifier("WX_SLDD3X21",1,false,M50,false,-1)
		end 
	
	end
end
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDD3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDD3X")
	npc:RemoveModifier("WX_SLDD3X2")
	npc:RemoveModifier("WX_SLDD3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDD3X3") then
		npc.FightBody:AddSkill("SLD_D");
	end
	if npc.PropertyMgr:HasModifier("WX_SLDD3X2") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			local ZQSX = npc.MaxZhenQi				
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-ZQSX)	
		else
			local LLSX = npc.MaxLing
			npc:AddLing(-LLSX)
		end 
	
	end
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJ")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_J");
	npc.PropertyMgr:ModifierProperty("SLD_J",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJ2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_J");
	npc.PropertyMgr:ModifierProperty("SLD_J",-2500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJ2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDJ2") or npc.PropertyMgr:HasModifier("WX_SLDJ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDJ2X")
	npc:RemoveModifier("WX_SLDJ2X2")
	npc:RemoveModifier("WX_SLDJ2X3")
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJ3X21")
function tbModifier:Enter(modifier, npc)
	npc.PropertyMgr:AddModifier("WX_WXKZZ",1,false,30,false,-1)
end
function tbModifier:Leave(modifier, npc)
	npc.PropertyMgr:AddModifier("WX_WXKZZ",1,false,-30,false,-1)
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJ3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_J");
	npc.PropertyMgr:ModifierProperty("SLD_J",-50000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJ3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDJ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDJ3X")
	npc:RemoveModifier("WX_SLDJ3X2")
	npc:RemoveModifier("WX_SLDJ3X3")
	end
end
function tbModifier:Leave(modifier, npc)
	if npc.PropertyMgr:HasModifier("WX_SLDJ3X2") then
	return 0
	else
	GameMain:GetMod("ZTWP"):SubItemCount("WXWQ_WJK6",1)
	GameMain:GetMod("ZTWP"):SubItemCount("WXWQ_WJK5",1)
	GameMain:GetMod("ZTWP"):SubItemCount("WXWQ_WJK4",1)
	GameMain:GetMod("ZTWP"):SubItemCount("WXWQ_WJK3",1)
	GameMain:GetMod("ZTWP"):SubItemCount("WXWQ_WJK2",1)
	GameMain:GetMod("ZTWP"):SubItemCount("WXWQ_WJK1",1)
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDC")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_C");
	npc.PropertyMgr:ModifierProperty("SLD_C",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDC2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_C");
	npc.PropertyMgr:ModifierProperty("SLD_C",-2500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDC2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDC2") or npc.PropertyMgr:HasModifier("WX_SLDC3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDJ2X")
	npc:RemoveModifier("WX_SLDJ2X2")
	npc:RemoveModifier("WX_SLDJ2X3")
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDC3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_C");
	npc.PropertyMgr:ModifierProperty("SLD_C",-50000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDC3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDC3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDC3X")
	npc:RemoveModifier("WX_SLDC3X2")
	npc:RemoveModifier("WX_SLDC3X3")
	end
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDQ")
function tbModifier:Enter(modifier, npc)

	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
		
		npc:RemoveModifier("WX_SLDP")
		npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Step(modifier, npc, dt)
	local S = modifier.Stack 
	
	local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao ~= nil and S == 50 then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT+S*20)
	else
		return 0
	end
end
function tbModifier:Leave(modifier, npc)
	local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao ~= nil then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,-1000)
	else
		return 0
	end
	local a = npc:GetProperty("SLD_CQ");
	npc.PropertyMgr:ModifierProperty("SLD_CQ",-500,0,0)
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDQ2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
		
		npc:RemoveModifier("WX_SLDP2")
		npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Step(modifier, npc, dt)
	local S = modifier.Stack 
	
	local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao ~= nil and S == 150 then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT+S*30)
	else
		return 0
	end
end
function tbModifier:Leave(modifier, npc)
	local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao ~= nil then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,-4500)
	else
		return 0
	end
	local a = npc:GetProperty("SLD_CQ");
	npc.PropertyMgr:ModifierProperty("SLD_CQ",-2500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDQ2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDQ2") or npc.PropertyMgr:HasModifier("WX_SLDQ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDCQ2X")
	npc:RemoveModifier("WX_SLDQ2X2")
	npc:RemoveModifier("WX_SLDQ2X3")
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDQ3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDQ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDCQ3X")
	npc:RemoveModifier("WX_SLDQ3X2")
	npc:RemoveModifier("WX_SLDQ3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDQ3X2") then
	 npc.FightBody:AddSkill("Q_CC2");
	 end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDQ3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
		
		npc:RemoveModifier("WX_SLDP3")
		npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Step(modifier, npc, dt)
	local S = modifier.Stack 
	
	local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao ~= nil and S == 300 then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT+S*50)
	else
		return 0
	end
end
function tbModifier:Leave(modifier, npc)
	local fabao = npc:GetFirstAtkFabao() --获取第一个装备的法宝。
    if fabao ~= nil then
		local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
			fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,-15000)
	else
		return 0
	end

	local a = npc:GetProperty("SLD_CQ");
	npc.PropertyMgr:ModifierProperty("SLD_CQ",-0,0,0)		

end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDBS")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDDQ")
	npc:RemoveModifier("WX_SLDJJ")
	
	npc:RemoveModifier("WX_SLDP")
	npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_BS");
	npc.PropertyMgr:ModifierProperty("SLD_BS",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDBS2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDDQ2")
	npc:RemoveModifier("WX_SLDJJ2")
	
	npc:RemoveModifier("WX_SLDP2")
	npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_BS");
	npc.PropertyMgr:ModifierProperty("SLD_BS",-2500,0,0)		
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDBS2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDBS2") or npc.PropertyMgr:HasModifier("WX_SLDBS3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDBS2X")
	npc:RemoveModifier("WX_SLDBS2X2")
	npc:RemoveModifier("WX_SLDBS2X3")
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDBS3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDDQ3")
	npc:RemoveModifier("WX_SLDJJ3")
	
	npc:RemoveModifier("WX_SLDP3")
	npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_BS");
	npc.PropertyMgr:ModifierProperty("SLD_BS",-50000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDBS3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDBS3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDBS3X")
	npc:RemoveModifier("WX_SLDBS3X2")
	npc:RemoveModifier("WX_SLDBS3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDBS3X3") then
	npc.PropertyMgr.Practice:AddMagic("WX_SLDBS3X3");
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDBS3X31")
function tbModifier:Enter(modifier, npc)
	npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Friend)
end
function tbModifier:Leave(modifier, npc)
	npc:SetCamp(CS.XiaWorld.Fight.g_emFightCamp.Enemy)	
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJJ")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDBS")
	
	npc:RemoveModifier("WX_SLDP")
	npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_JJ");
	npc.PropertyMgr:ModifierProperty("SLD_JJ",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJJ2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDJJ2") or npc.PropertyMgr:HasModifier("WX_SLDJJ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDJJ2X")
	npc:RemoveModifier("WX_SLDJJ2X2")
	npc:RemoveModifier("WX_SLDJJ2X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDJJ2X2") then
	 npc.FightBody:AddSkill("SLD_JJ");
	 end
	 if npc.PropertyMgr:HasModifier("WX_SLDJJ2X3") then
		npc.ScaleAddIM = 1.7
	 end
end
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJJ3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDJJ3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDJJ3X")
	npc:RemoveModifier("WX_SLDJJ3X2")
	npc:RemoveModifier("WX_SLDJJ3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDJJ3X2") then
	 npc.FightBody:AddSkill("SLD_JJ2");
	 end
	 if npc.PropertyMgr:HasModifier("WX_SLDJJ3X3") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr:AddModifier("WX_SLDJJ3X31",1,false,1,false,-1)
		else
			npc.PropertyMgr:AddModifier("WX_SLDJJ3X32",1,false,1,false,-1)
		end
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJJ2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDBS2")
	
	npc:RemoveModifier("WX_SLDP2")
	npc:RemoveModifier("WX_SLDL2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_JJ");
	npc.PropertyMgr:ModifierProperty("SLD_JJ",-2500,0,0)		
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDJJ3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDBS3")
	
	npc:RemoveModifier("WX_SLDP3")
	npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_JJ");
	npc.PropertyMgr:ModifierProperty("SLD_JJ",-5000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDZC")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
	npc:RemoveModifier("WX_SLDP")
	npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_ZC");
	npc.PropertyMgr:ModifierProperty("SLD_ZC",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDZC3")
function tbModifier:Enter(modifier, npc)
D1 = npc.Equip:GetEquipReal(CS.XiaWorld.g_emEquipType.AtkFabao)
D2 = npc.Equip:GetEquipReal(CS.XiaWorld.g_emEquipType.AtkFabao2)
D3 = npc.Equip:GetEquipReal(CS.XiaWorld.g_emEquipType.AtkFabao3)
D4 = npc.Equip:GetEquipReal(CS.XiaWorld.g_emEquipType.AtkFabao4)
D5 = npc.Equip:GetEquipReal(CS.XiaWorld.g_emEquipType.AtkFabao5)
D6 = npc.Equip:GetEquipReal(CS.XiaWorld.g_emEquipType.AtkFabao6)
S = npc.PropertyMgr:FindModifier("WX_SLDZC3")

local SJ = WorldLua:RandomInt(0,100)
if S.Stack == 50 then
if SJ >= 80 and D1 ~= nil then
ThingMgr:RemoveThing("D1");
elseif SJ >= 60 and D2 ~= nil then
ThingMgr:RemoveThing("D2");
elseif SJ >= 40 and D5 ~= nil then
ThingMgr:RemoveThing("D5");
elseif SJ >= 30 and D3 ~= nil then
ThingMgr:RemoveThing("D3");
elseif SJ >= 20 and D4 ~= nil then
ThingMgr:RemoveThing("D4");
else
ThingMgr:RemoveThing("D6");
end

end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDP2") or npc.PropertyMgr:HasModifier("WX_SLDP3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDP2X")
	npc:RemoveModifier("WX_SLDP2X2")
	npc:RemoveModifier("WX_SLDP2X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDP2X21") then
	npc.PropertyMgr:ModifierProperty("MaxAge",-1,0,0)
	 end
	 
end
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDP3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDP3X")
	npc:RemoveModifier("WX_SLDP3X2")
	npc:RemoveModifier("WX_SLDP3X3")
	end

	 
end
	
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP3X3")
function tbModifier:Enter(modifier, npc)
	if npc.PropertyMgr:HasModifier("WX_SLDP3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDP3X")
	npc:RemoveModifier("WX_SLDP3X2")
	npc:RemoveModifier("WX_SLDP3X3")
	end
	if npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			local a = from:GetProperty("GodPractice_GodPowerAddV");
			npc.PropertyMgr:ModifierProperty("NpcFight_ShieldConversionRate",a,0,0)
	end
end	

function tbModifier:Leave(modifier, npc)
	if npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			local a = from:GetProperty("GodPractice_GodPowerAddV");
			npc.PropertyMgr:ModifierProperty("NpcFight_ShieldConversionRate",-a,0,0)
	end
end

	
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP3X2")
function tbModifier:Enter(modifier, npc)
	if npc.PropertyMgr:HasModifier("WX_SLDP3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDP3X")
	npc:RemoveModifier("WX_SLDP3X2")
	npc:RemoveModifier("WX_SLDP3X3")
	end
	
	
	 if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
		if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Jin then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT*1.25)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,AT*1.25)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,AT*1.25)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,AT*0.75)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Tu then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,AT*1.25)
			count = count + 1
			end
			
		end
		end
	else
	return 0	
	end
end	

function tbModifier:Leave(modifier, npc)
	if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
		if npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Jin then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,AT/1.25)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,AT/1.25)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,AT/1.25)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,AT/0.75)
			count = count + 1
			end
			
		end
		elseif npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Tu then
		local list = npc.Equip:FindFabao();
		local count = 0;
		while(count < list.Count) do
			for i=1,list.Count,1 do
				local AT = list[count].Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing)
				list[count].Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,AT/1.25)
			count = count + 1
			end
			
		end
		end
	else
	return 0	
	end	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
	
	npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_P");
	npc.PropertyMgr:ModifierProperty("SLD_P",-500,0,0)		
end
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
	
	npc:RemoveModifier("WX_SLDL")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_P");
	npc.PropertyMgr:ModifierProperty("SLD_P",-2500,0,0)		
end
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDP3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
	
	npc:RemoveModifier("WX_SLDL3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_P");
	npc.PropertyMgr:ModifierProperty("SLD_P",-5000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDL")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF")
	npc:RemoveModifier("WX_SLDD")
	npc:RemoveModifier("WX_SLDJ")
	npc:RemoveModifier("WX_SLDFZ")
	npc:RemoveModifier("WX_SLDG")
	npc:RemoveModifier("WX_SLDDJ")
	npc:RemoveModifier("WX_SLDC")
	npc:RemoveModifier("WX_SLDQ")
	npc:RemoveModifier("WX_SLDBS")
	npc:RemoveModifier("WX_SLDJJ")
	
	npc:RemoveModifier("WX_SLDP")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_L");
	npc.PropertyMgr:ModifierProperty("SLD_L",-500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDL2")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF2")
	npc:RemoveModifier("WX_SLDD2")
	npc:RemoveModifier("WX_SLDJ2")
	npc:RemoveModifier("WX_SLDFZ2")
	npc:RemoveModifier("WX_SLDG2")
	npc:RemoveModifier("WX_SLDDJ2")
	npc:RemoveModifier("WX_SLDC2")
	npc:RemoveModifier("WX_SLDQ2")
	npc:RemoveModifier("WX_SLDBS2")
	npc:RemoveModifier("WX_SLDJJ2")
	
	npc:RemoveModifier("WX_SLDP2")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_L");
	npc.PropertyMgr:ModifierProperty("SLD_L",-2500,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDL2X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDBS3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDL2X")
	npc:RemoveModifier("WX_SLDL2X2")
	npc:RemoveModifier("WX_SLDL2X3")
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDL3X")
function tbModifier:Step(modifier, npc, dt)
	if npc.PropertyMgr:HasModifier("WX_SLDL3") then
	return 0
	else
	npc:RemoveModifier("WX_SLDL3X")
	npc:RemoveModifier("WX_SLDL3X2")
	npc:RemoveModifier("WX_SLDL3X3")
	end
	if npc.PropertyMgr:HasModifier("WX_SLDL3X3") then
	npc.PropertyMgr.Practice:AddMagic("WX_SLDL3X3");
	end
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_SLDL3")
function tbModifier:Enter(modifier, npc)
	npc:RemoveModifier("WX_SLDF3")
	npc:RemoveModifier("WX_SLDD3")
	npc:RemoveModifier("WX_SLDJ3")
	npc:RemoveModifier("WX_SLDFZ3")
	npc:RemoveModifier("WX_SLDG3")
	npc:RemoveModifier("WX_SLDDJ3")
	npc:RemoveModifier("WX_SLDC3")
	npc:RemoveModifier("WX_SLDQ3")
	npc:RemoveModifier("WX_SLDBS3")
	npc:RemoveModifier("WX_SLDJJ3")
	
	npc:RemoveModifier("WX_SLDP3")
end
function tbModifier:Leave(modifier, npc)
	local a = npc:GetProperty("SLD_L");
	npc.PropertyMgr:ModifierProperty("SLD_L",-50000,0,0)		
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WX_XMPXD")

function tbModifier:Step(modifier, npc, dt)
	if World:Getflag(10000054) == 1 then
	npc:AddModifier("WX_SLDD2")
	npc:AddModifier("WX_XMPXD_X")
	else
	npc:AddModifier("WX_SLDD")
	end
end


