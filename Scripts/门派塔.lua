local tbThing = GameMain:GetMod("ThingHelper"):GetThing("XXFT2");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	if NPCEM ~= nil then
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				if World:GetFlag(10000061) == 1 then
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","HXB",0.5,false);
							end	
						d.PropertyMgr:AddModifier("XXFT1_1",1,false,1,false,-1)
					else 
						d:AddLing(-2000)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","HXB",0.5,false);
							end	
						d.PropertyMgr:AddModifier("XXFT1_2",1,false,1,false,-1)
					end
				else
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","HXB",0.5,false);
							end	
					else 
						d:AddLing(-2000)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","HXB",0.5,false);
							end	
					end
				end
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect("Effect/gsq/Prefab/feng/fx_fenghuang_lyzy02-2  Bip001 Pelvis", d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Legacy/LightningProjectileSmallOld");--弹道效果设置
			 end
			else
			return 0
			end	
		end
		



local tbThing = GameMain:GetMod("ThingHelper"):GetThing("XXFT1");
local time = 0;

 
function tbThing:OnStep(dt)
	
	if World:GetFlag(10000056) == 1 then
		local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
		a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,20) --获取NPC坐标指定范围内指定阵营敌人
		for k,v in pairs(a) do
		local d = v.Npc
				if d ~= nil then
				if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
							d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
								if d.ZhenQi <= 5000 then
								d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
								d:AddDamage("TheWholeBody","HXB",0.5,false);
								end	
						else 
							d:AddLing(-2000)
								if d.LingV <= 1000000 then
								d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
								d:AddDamage("TheWholeBody","HXB",0.5,false);
								end	
						end
				world:FlyLineEffect(self.it.Pos, d.Pos ,0.8,
				 function(p)
				  world:PlayEffect(69, d.Pos, 5)
				 end
				 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Legacy/LightningProjectileSmallOld");--弹道效果设置
				 end
	else
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	if NPCEM ~= nil then
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
		
	
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-3000)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","HXB",0.5,false);
							end	
					else 
						d:AddLing(-5000)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","HXB",0.5,false);
							end	
					end

			world:FlyLineEffect(self.it.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(69, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Legacy/LightningProjectileSmallOld");--弹道效果设置
			 end
			else
			return 0
			end
		end
	end
	end
	end

local tbThing = GameMain:GetMod("ThingHelper"):GetThing("XXFT3");
local time = 0;

 
function tbThing:OnStep(dt)
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	if NPCEM ~= nil then
		local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				if World:GetFlag(10000065) == 1 then
					
						d:AddModifier("XXFT3_1")
						d.PropertyMgr:AddModifier("XXFT3_2",1,false,1,false,-1)
					local ST = d.PropertyMgr:FindModifier("XXFT3_2");
					if ST.Stack == 20 then
						d.PropertyMgr:AddModifier("XXFT3_3",1,false,1,false,-1)
					end
				else
					d:AddModifier("XXFT3_1")	
				end
			world:FlyLineEffect(self.it.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(83, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Projectiles/Legacy/LightningProjectileSmallOld");--弹道效果设置
			 end
			else
		return 0
		end	
		end
		





