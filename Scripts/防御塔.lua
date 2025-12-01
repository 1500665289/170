local tbThing = GameMain:GetMod("ThingHelper"):GetThing("T1");
local time = 0;

 
function tbThing:OnStep(dt)
	local A = self.it.ID
	local B = A+10000000000
	local C = World:GetFlag(B)
	local R = WorldLua:RandomInt(0,1000)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local JF = GameMain:GetMod("ZTWP"):GetItemCount("Item_PTJB")
	local FYT = self.it.GetName(self.it)
	
	if FYT == "武圣" then
		a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
		local XS4 = 0
		for k,v in pairs(a) do
		local d = v.Npc
		
			if d ~= nil then
				if d.IsDisciple == true and d.GongKind == CS.XiaWorld.g_emGongKind.God and d.IsDeath == false then
				XS4 = XS4 + 1;
				end
			end
		return XS4 
		end
	else
	local XS4 = 1
	end
	if FYT == "壮缪候" then
		local ST = WXXX:GEY(B)
		a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
		local XS4 = 0
			for k,v in pairs(a) do
			local d = v.Npc
				if d ~= nil then
					if d.IsDeath == true then
					XS4 = XS4 + 1;
					end
				end
				return XS4 
							
			end
			for k,v in pairs(a) do
				local d = v.Npc
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(ST*XS4))
					else 
						d:AddLing(-(ST*XS4))			
					end	
				end

						
	else
	local XS4 = 1
	end
	if FYT == "美髯公" then
		a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
		for k,v in pairs(a) do
		local d = v.Npc
			if d ~= nil then
				if d.IsDisciple == true and d.IsDeath == false then
					if C == 3113 then
					d.PropertyMgr:AddModifier("WX_SHD",1,false,3,false,-1)
					elseif C == 2113 then
					d.PropertyMgr:AddModifier("WX_SHD",1,false,2,false,-1)
					elseif C == 1113 then
					d.PropertyMgr:AddModifier("WX_SHD",1,false,1,false,-1)
					end
				end
			end 
		end
	else
	return 0
	end
	
	if NPCEM.Count > 0 then
		if JF >= 10 then
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
		local XS1 = WXXX:GEY(B)
		local XS2 = WXXX:GEY(B)
		local XS3 = WXXX:GEY(B)
		local TG = WXXX:GEY(B)
		local XS = WXXX:GEY(B)
		local SZ = WXXX:GEY(B)
		local WS = (XS4*SZ)
			if C == 313 then
				World:AddFlag(B+333,15)
			elseif C == 312 then
				World:AddFlag(B+333,10)
			elseif C == 311 then
				World:AddFlag(B+333,5)
			end
			if World:GetFlag(B+333) == 3000 then
				if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
				local ZQ = d.ZhenQi
				d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-ZQ*XS3)
				
				else
				local LQ = d.LingV
				d:AddLing(-LQ*XS3)
				end
				world:PlayEffect("Effect/gsq/Prefab/tixiu/fx_yezhuya01", d.Pos, 5)
				World:AddFlag(B+333,-3000)
			end
				if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and d ~= nil then--判断是否是敌人和npc
				local HD = d:GetProperty("NpcFight_ShieldConversionRate");
					if NPCEM.Count == 1 and C >=21 and C <= 23 then
						if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
							
								if C >= 21 and C <= 23 then
									world:PlayEffect("Effect/gsq/Prefab/long/fx_long002_potu01 -", self.it.Pos, 5)
									World:AddFlag(B+11,-2);World:AddFlag(B+12,-2);World:AddFlag(B+13,-2)
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS1*TG)
								else
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD))
								end
								if d.ZhenQi <= 100 then
								d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
								d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
								end	
						else 
								if C >= 21 or C <= 23 then
									world:PlayEffect("Effect/gsq/Prefab/long/fx_long002_potu01 -", self.it.Pos, 5)
									d:AddLing(-(2000-2*HD)*XS1*TG)
								else
									d:AddLing(-(2000-2*HD))
								end
								if d.LingV <= 100 then
								d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
								d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
								end	
						end
					
					else
						if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
							local ZQ = d.MaxZhenQi
							
								if World:GetFlag(B+11) >= 0 or World:GetFlag(B+13) >= 0 or World:GetFlag(B+13) >= 0 then
									world:PlayEffect("Effect/gsq/Prefab/long/fx_long002_potu01 -", self.it.Pos, 5)
									World:AddFlag(B+11,-2);World:AddFlag(B+12,-2);World:AddFlag(B+13,-2)
								end
									if C == 11 then
										if R >= 500 then
											d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS*XS1+WS)
										else
											d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS1+WS)
										end
									elseif C == 12 then
										if R >= 600 then
											d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS*XS1+WS)
										else
											d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS1+WS)
										end
									elseif C == 13 then
										if R >= 700 then
											d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS*XS1+WS)
										else
											d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS1+WS)
										end
									elseif C == 31 then 
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-((500-2*HD)*XS+ZQ*0.001)*XS1+WS)
									elseif C == 32 then
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-((500-2*HD)*XS+ZQ*0.002)*XS1+WS)
									elseif C == 33 then
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-((500-2*HD)*XS+ZQ*0.003)*XS1+WS)
									else
									d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-(500-2*HD)*XS*XS1+WS)
									end
								if d.ZhenQi <= 100 then
								d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
								d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
								end	
						else 
							local LQ = d.MaxLing
							if d.PropertyMgr.Practice.Gong.ElementKind == Huo then
								if World:GetFlag(B+11) >= 0 or World:GetFlag(B+13) >= 0 or World:GetFlag(B+13) >= 0 then
									world:PlayEffect("Effect/gsq/Prefab/long/fx_long002_potu01 -", self.it.Pos, 5)
									World:AddFlag(B+11,-2);World:AddFlag(B+12,-2);World:AddFlag(B+13,-2)
									d:AddLing(-(2000*XS2-2*HD)*XS)
								else
									if C == 11 then
										if R >= 500 then
										d:AddLing(-((2000*XS2-2*HD)*XS)*XS1+WS)
										else
										d:AddLing(-(2000*XS2-2*HD)*XS1+WS)
										end
									elseif C == 12 then
										if R >= 600 then
										d:AddLing(-((2000*XS2-2*HD)*XS)*XS1+WS)
										else
										d:AddLing(-(2000*XS2-2*HD)*XS1+WS)
										end
									elseif C == 13 then
										if R >= 700 then
										d:AddLing(-((2000*XS2-2*HD)*XS)*XS1+WS)
										else
										d:AddLing(-(2000-2*HD)*XS1+WS)
										end
									elseif C == 31 then 
									d:AddLing(-((2000*XS2-2*HD)*XS+LQ*0.001)*XS1+WS)
									elseif C == 32 then
									d:AddLing(-((2000*XS2-2*HD)*XS+LQ*0.002)*XS1+WS)
									elseif C == 33 then
									d:AddLing(-((2000*XS2-2*HD)*XS+LQ*0.003)*XS1+WS)
									else
									d:AddLing(-(2000*XS2-2*HD)*XS*XS1+WS)
									end
									
								end
							else
								if World:GetFlag(B+11) >= 0 or World:GetFlag(B+13) >= 0 or World:GetFlag(B+13) >= 0 then
									world:PlayEffect("Effect/gsq/Prefab/long/fx_long002_potu01 -", self.it.Pos, 5)
									World:AddFlag(B+11,-2);World:AddFlag(B+12,-2);World:AddFlag(B+13,-2)
									d:AddLing(-(2000-2*HD)*XS)
								else
									if C == 11 then
										if R >= 500 then
										d:AddLing(-((2000-2*HD)*XS)*XS1+WS)
										else
										d:AddLing(-(2000-2*HD)*XS1+WS)
										end
									elseif C == 12 then
										if R >= 600 then
										d:AddLing(-((2000-2*HD)*XS)*XS1+WS)
										else
										d:AddLing(-(2000-2*HD)*XS1+WS)
										end
									elseif C == 13 then
										if R >= 700 then
										d:AddLing(-((2000-2*HD)*XS)*XS1+WS)
										else
										d:AddLing(-(2000-2*HD)*XS1+WS)
										end
									elseif C == 31 then 
									d:AddLing(-((2000-2*HD)*XS+LQ*0.001)*XS1+WS)
									elseif C == 32 then
									d:AddLing(-((2000-2*HD)*XS+LQ*0.002)*XS1+WS)
									elseif C == 33 then
									d:AddLing(-((2000-2*HD)*XS+LQ*0.003)*XS1+WS)
									else
									d:AddLing(-(2000-2*HD)*XS*XS1+WS)
									end
									
								end
							end
								if d.LingV <= 100 then
								d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
								d:AddDamage("TheWholeBody","SwordBallDamage",0.5,false);
								end	
						end
					end
				world:FlyLineEffect(self.it.Pos, d.Pos ,0.8,
				 function(p)
				  world:PlayEffect("Effect/A/Prefabs/Projectiles/Storm/StormImpactMega", d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowProjectileNormal");--弹道效果设置
				 end
				 if C == 21 then
				  GameMain:GetMod("ZTWP"):SubItemCount("Item_PTJB",8)
				 elseif C == 22 then
				  GameMain:GetMod("ZTWP"):SubItemCount("Item_PTJB",7)
				 elseif C == 23 then
				  GameMain:GetMod("ZTWP"):SubItemCount("Item_PTJB",6)
				 else
				 GameMain:GetMod("ZTWP"):SubItemCount("Item_PTJB",10)
				 end
				 
		else
			world:PlayEffect(55, self.it.Pos, 5)
		end
	else
		world:PlayEffect("Effect/gsq/Prefab/tixiu/fx_FYchibang01", self.it.Pos, 5)
	end		
end

local WXXX = GameMain:GetMod("WXXX");
function WXXX:GEY(B)
	if World:GetFlag(B) == 3111 then		
		ST = 10000
	elseif World:GetFlag(B) == 3112 then	
		ST = 20000
	elseif World:GetFlag(B) == 3113 then	
		ST = 30000
	else
		ST = 1
	end	
	if World:GetFlag(B) == 2111 then		
		BJ = 10000
	elseif World:GetFlag(B) == 2112 then	
		BJ = 20000
	elseif World:GetFlag(B) == 2113 then	
		BJ = 30000
	else
		BJ = 0
	end	
	if World:GetFlag(B) == 1111 then		
		SZ = 10000
	elseif World:GetFlag(B) == 1112 then	
		SZ = 20000
	elseif World:GetFlag(B) == 1113 then	
		SZ = 30000
	else
		SZ = 1
	end		
	if World:GetFlag(B) == 311 then		
		XS3 = 0.4
	elseif World:GetFlag(B) == 312 then	
		XS3 = 0.6
	elseif World:GetFlag(B) == 313 then	
		XS3 = 0.8
	else
		XS3 = 1
	end					
	if World:GetFlag(B) == 11 or  World:GetFlag(B) == 12 or World:GetFlag(B) == 13 then		
		XS = 2	
	else
		XS = 1
	end
	if World:GetFlag(B) == 211 then		
		XS2 = 3
	elseif World:GetFlag(B) == 212 then	
		XS2 = 6
	elseif World:GetFlag(B) == 213 then	
		XS2 = 9
	else
		XS1 = 1
	end
	if World:GetFlag(B) == 111 then		
		XS1 = 2
	elseif World:GetFlag(B) == 112 then	
		XS1 = 3
	elseif World:GetFlag(B) == 113 then	
		XS1 = 4
	else
		XS1 = 1
	end
	if World:GetFlag(B) == 21 then		
		TG = 1.5
	elseif World:GetFlag(B) == 22 then	
		TG = 1.7
	elseif World:GetFlag(B) == 23 then	
		TG = 2
	else
		TG = 1
	end
	return TG and XS and XS1 and XS2 and XS3 and SZ and BJ
	end
			--传回参数



local tbThing = GameMain:GetMod("ThingHelper"):GetThing("T2");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,10) --获取NPC坐标指定范围内指定阵营敌人
	for k,v in pairs(a) do
	local d = v.Npc
	
	if d ~= nil then
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false then--判断是否是敌人和npc
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.5,
			 function(p)
			  world:PlayEffect("Effect/A/Prefabs/Projectiles/Lightning/LightningImpactNormal", d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Lightning/LightningProjectileSmall");--弹道效果设置
			World.map:StrikePoint(d.Key , 10000, 6)	
			end
	end
	end
	end


local tbThing = GameMain:GetMod("ThingHelper"):GetThing("T3");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,8) --获取NPC坐标指定范围内指定阵营敌人
	for k,v in pairs(a) do
	local d = v.Npc
	
		
			if d.Camp == g_emFightCamp.Player and d.IsDeath == false and d ~= nil then--判断是否是敌人和npc
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.5,
			 function(p)
			  world:PlayEffect(400005, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Light/LightProjectileNormal");--弹道效果设置
			d.PropertyMgr:AddModifier("WX_GH_1",1,false,1,false,-1)
			end
	end
	end
	
local tbThing = GameMain:GetMod("ThingHelper"):GetThing("T4");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and d ~= nil  then--判断是否是敌人和npc
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-100)
					else 
						d:AddLing(-400)
					end	
			
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.9,
			 function(p)
			  world:PlayEffect(82, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Storm/StormProjectileSmall");--弹道效果设置
			 end
			local SH = {"Damage_Boss_LingBoom","Jin_BoneNail","Huo_VisceralBurn","BodyPractice_Bhit2","BodyPractice_Bhit3"}
			local SHR = WorldLua:RandomInt(0,#SH+1)
			local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","TheWholeBody"}
			local BWR = WorldLua:RandomInt(0,#BW+1)
			d:AddDamage(""..BW[BWR].."","SwordBallDamage",1,false);
		end


local tbThing = GameMain:GetMod("ThingHelper"):GetThing("T5");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,15) --获取NPC坐标指定范围内指定阵营敌人
	for k,v in pairs(a) do
	local d = v.Npc
	
		
			if d.Camp == g_emFightCamp.Player and d.IsDeath == false and d ~= nil  then--判断是否是敌人和npc
				
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.5,
			 function(p)
			  world:PlayEffect(200003, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Muzzleflash/Normal/WaterMuzzleNormal");--弹道效果设置
			
			end
			if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						return 0
					else 
						d:AddLing(100)
					end
	end
	end


local tbThing = GameMain:GetMod("ThingHelper"):GetThing("T6");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,10) --获取NPC坐标指定范围内指定阵营敌人
	for k,v in pairs(a) do
	local d = v.Npc
	
		
			if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and d ~= nil  then--判断是否是敌人和npc
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.5,
			 function(p)
			  world:PlayEffect(200005, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Shadow/ShadowProjectileSmall");--弹道效果设置
			local N = d:GetModifierStack("WX_GH_2");
			if N == 1 then
			return 0
			else
			d.PropertyMgr:AddModifier("WX_GH_2",1,false,1,false,-1)
			end
			end
	end
	end
	















