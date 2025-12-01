
local WXTX = GameMain:NewMod("WXTX")
WXTX.Events = WXTX.Events or {}
local Events = WXTX.Events
local tbEvent = GameMain:GetMod("_Event");

function WXTX:OnEnter()
tbEvent:RegisterEvent(g_emEvent.WillFightBodyBeHit, WXTX.WillOnFightBodyBeHit, "攻击特效，有保护事件")

tbEvent:RegisterEvent(g_emEvent.FightBodyBeHit, WXTX.OnFightBodyBeHit, "攻击特效，无保护事件")

--注册两种被攻击事件，第二个是仙修无灵气或体修防御秘体全坏了，挨打的情况
end

function WXTX.OnFightBodyBeHit(t,npc,obj)--无保护
	if obj[2] ~= nil then
	local from = obj[2];
	--from是攻击者
	--npc是被击者
		
		if from.PropertyMgr:HasModifier("WXQX_NJD") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。

			if World:GetFlag(100000393) == 1 then
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-8,false,-1)
			elseif World:GetFlag(100000393) == 2 then
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-7,false,-1)
			elseif World:GetFlag(100000393) == 3 then
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-5,false,-1)
			else
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-10,false,-1)
			end
			
			
		end
		
		--机甲
		if npc.PropertyMgr:HasModifier("WX_YJJJ") then  --能量消耗段
					local FBLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local FBLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
					local FSLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = WorldLua:RandomInt(0,100)
					local SLD = npc:GetProperty("SLD_JJ");
					local WX = npc.PropertyMgr.Charisma
					local GG = npc.PropertyMgr.Physique
					local XY = npc.PropertyMgr.Luck
					local SBXS = math.ceil(XY/WX+GG)
					local WX1 = from.PropertyMgr.Charisma
					local GG1 = from.PropertyMgr.Physique
					local XY1 = from.PropertyMgr.Luck
					local SBXS1 = math.ceil(XY1/WX1+GG1)
					local HXSH = math.ceil(((FBLV - FBLV1)/HDLV1)*100)
						local FBG = math.ceil(FBLV-FBLV1)
						local SZSH = math.ceil(((FTLV - FTLV1)/HDLV1)*100)
						local FTG = math.ceil(FTLV-FTLV1)
						local NLZSH = math.ceil(((FSLV - FSLV1)/HDLV1)*100)
						local FSG = math.ceil(FSLV-FSLV1)
					if FBLV1 < FBLV then
							if GL <= HXSH then
								npc.PropertyMgr:AddModifier("WX_JJS_H",1,false,FBG,false,-1)
								npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-FBG,false,-1)
								npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-2*FBG,false,-1)
							end
					elseif FTLV1 < FTLV then
							if GL <= SZSH then
								npc.PropertyMgr:AddModifier("WX_JJS_SJ",1,false,FBG,false,-1)
								npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-FTG,false,-1)
								npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-2*FTG,false,-1)
							end
					elseif FSLV1 < FSLV then		
							if GL <= NLZSH then
								npc.PropertyMgr:AddModifier("WX_JJS_NLD",1,false,FBG,false,-1)
								npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-FSG,false,-1)
								npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-2*FSG,false,-1)
							end
					end

						if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
							local FT = math.ceil(FTLV/10)
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5*FT,false,-1)
							
						elseif from.GongKind == CS.XiaWorld.g_emGongKind.Dao then 
							local FS = math.ceil(FSLV/10)
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5*FS,false,-1)
						elseif from.GongKind == CS.XiaWorld.g_emGongKind.God then
							local FB = math.ceil(FBLV/10)
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5*FB,false,-1)
						else
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5,false,-1)
						end
						npc.PropertyMgr:ModifierProperty("SLD_JJ",0.05*FBLV1*0.3,0,0)
				end
		if from.PropertyMgr:HasModifier("WX_YJJJ") then  --判定攻击者拥有buff则
					local FBLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local FBLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
					local FSLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = WorldLua:RandomInt(0,100)
					local SLD = npc:GetProperty("SLD_JJ");
					local WX = npc.PropertyMgr.Charisma
					local GG = npc.PropertyMgr.Physique
					local XY = npc.PropertyMgr.Luck
					local SBXS = math.ceil(XY/WX+GG)
					local WX1 = from.PropertyMgr.Charisma
					local GG1 = from.PropertyMgr.Physique
					local XY1 = from.PropertyMgr.Luck
					local SBXS1 = math.ceil(XY1/WX1+GG1)
					local HXSH = math.ceil(((FBLV - FBLV1)/HDLV1)*100)
						local FBG = math.ceil(FBLV-FBLV1)
						local SZSH = math.ceil(((FTLV - FTLV1)/HDLV1)*100)
						local FTG = math.ceil(FTLV-FTLV1)
						local NLZSH = math.ceil(((FSLV - FSLV1)/HDLV1)*100)
						local FSG = math.ceil(FSLV-FSLV1)
						local FT = math.ceil((FTLV+FBLV+FSLV)/SLD)
						from.PropertyMgr:AddModifier("WX_JJNY",1,false,-5,false,-1)	
						if FT < 1 then
						FTX = math.ceil(FT*100)
						 from.PropertyMgr:AddModifier("WX_JJNY",1,false,-(15+FTX),false,-1)
						elseif FT >= 1 then
							from.PropertyMgr:AddModifier("WX_JJNY",1,false,-(5+FT),false,-1)
						end
					if npc.IsDisciple == false then
						npc:AddDamage("TheWholeBody","JJSH",1,false);
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
						if SBXS > SBXS1 then
								return 0
						else
						if FTLV > FTLV1 then
							local SHXS = math.ceil(((FTLV - FTLV1)/HDLV1)*10)
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-SHXS*100)
						else
							local SHXS = math.ceil(((FTLV1 - FTLV)/HDLV1)*10)
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-SHXS*50)
						end
							if npc.ZhenQi < 5000 then
									npc:AddDamage("TheWholeBody","JJSH",WorldLua:RandomInt(0,SHXS),false);
							end
						end
					else
						if SBXS > SBXS1 then
								return 0
						else
						if FBLV > FBLV1 then
							local SHXS = math.ceil(((FBLV - FBLV1)/HDLV1)*10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*200);
						elseif FBLV1 > FBLV then
							local SHXS = math.ceil(((FBLV1 - FBLV)/HDLV1)*10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*100);
						elseif FSLV > FSLV1 then
							local SHXS = math.ceil(((FBLV - FBLV1)/HDLV1)*10)
							local BJXS = math.ceil((FSLV - FSLV1)/10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*200*BJXS);
						elseif FSLV1 > FSLV then
							local SHXS = math.ceil(((FBLV - FBLV1)/HDLV1)*10)
							local BJXS = math.ceil((FSLV - FSLV1)/10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*200/BJXS);
						end
							if npc.ZhenQi < 100000 then
									npc:AddDamage("TheWholeBody","JJSH",WorldLua:RandomInt(0,SHXS),false);
							end
						end
						end
					end
			
			
		--星峰
		if from.PropertyMgr:HasModifier("WX_XMPXD_X") then 
			npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",-1,0,0)
			local N1 = npc:GetProperty("BodyPratice_BodyStrong")
			if N1 < 5 then
				npc:AddDamage("Body","HXB",0.5,false);
			end
		end
		
		if from.PropertyMgr:HasModifier("XXFKJ2_5") then 
			
			local N1 = WorldLua:RandomInt(0,100)
			if N1 <= 20 then
				npc:AddDamage("Body","HXB",0.5,false);
			end
		end
	
		
		--木乃伊
			if from.PropertyMgr:HasModifier("WX_MNY1") then  --判定攻击者拥有buff则
				 if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-100)
				 else
				 npc.LuaHelper:AddPracticeResource("Ling",-200);
				 end
			end
			if from.PropertyMgr:HasModifier("WX_MNY2") then  --判定攻击者拥有buff则
				 if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-400)
				 else
				 npc.LuaHelper:AddPracticeResource("Ling",-800);
				 end
			end
			if from.PropertyMgr:HasModifier("WX_MNY2") then  --判定攻击者拥有buff则
				 if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
				 else
				 npc.LuaHelper:AddPracticeResource("Ling",-3000);
				 end
			end
		
		
		
		--丧尸
		if from.PropertyMgr:HasModifier("WX_SD_1") or from.PropertyMgr:HasModifier("WX_SD_2") or from.PropertyMgr:HasModifier("WX_SD_3") then  --判定攻击者拥有buff则
		local m1 = from.PropertyMgr:FindModifier("WX_SD_1");
		local m2 = from.PropertyMgr:FindModifier("WX_SD_2");
		local m3 = from.PropertyMgr:FindModifier("WX_SD_3");
		local m4 = npc.PropertyMgr:FindModifier("WX_TBDXQ");
		local m5 = npc.PropertyMgr:FindModifier("WX_JJNY");
		if m4 ~= nil or m5 ~= nil  then  --机甲或者注射过T病毒血清将不会被丧尸感染
				local x = 48 --或者string,这个是特效编号或路径
				local y = npc.Key -- 坐标
				local z = 5 --持续时间
				WorldLua:PlayEffect(x,y, z) --播放特效
		
		else
			local a = 58 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local D = npc:GetProperty("AbilityLvAddV")
			if npc.IsDisciple == false and D >= 66 then  --角色未死亡并且角色道行加值高于66则免疫丧尸感染
				local x = 48 --或者string,这个是特效编号或路径
				local y = npc.Key -- 坐标
				local z = 5 --持续时间
				WorldLua:PlayEffect(x,y, z) --播放特效
			elseif npc.IsDisciple == false and D < 10 then  -- 以下为不同道行导致的丧尸感染速率
				if m1 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,5,false,-1)
				elseif m2 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,8,false,-1)
				elseif m3 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,12,false,-1)
				end
			elseif npc.IsDisciple == false and D < 30 then
				if m1 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,4,false,-1)
				elseif m2 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,6,false,-1)
				elseif m3 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,9,false,-1)
				end
			elseif npc.IsDisciple == true then
				if m1 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,8,false,-1)
				elseif m2 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,16,false,-1)
				elseif m3 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,22,false,-1)
				end
			else
				if m1 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,2,false,-1)
				elseif m2 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,4,false,-1)
				elseif m3 ~= nil then
				npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,6,false,-1)
				end
			end
		end
		end
		
		if from.PropertyMgr:HasModifier("SSW_DX") then  --判定攻击者拥有buff则
			local a = 60 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local D = npc:GetProperty("AbilityLvAddV")
			if m4 ~= nil then
					local x = 48 --或者string,这个是特效编号或路径
					local y = npc.Key -- 坐标
					local z = 5 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,5,false,-1)
			else
			
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,10,false,-1)
				
			end
		end
	
	
	--熟练度
	
		if from.PropertyMgr:HasModifier("WX_SLDDJ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDDJ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_DJ",2,0,0)
				local a = from:GetProperty("SLD_DJ");
				if a == 1000 then
				from.FightBody:AddSkill("FXLZ");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDDJ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDDJ2",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_DJ",4,0,0)
				local a = from:GetProperty("SLD_DJ");
				if a == 1000 then
				from.FightBody:AddSkill("FXLZ");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDDJ")
				end
				
		end
		if from.PropertyMgr:HasModifier("WX_SLDDJ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDDJ3",1,false,3,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_DJ",8,0,0)
				local a = from:GetProperty("SLD_DJ");
				if a == 1000 then
				from.FightBody:AddSkill("FXLZ");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDDJ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDDJ2")
				end
				
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDQ") then  --判定攻击者拥有buff则
			local a = 44 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDQ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_CQ",2,0,0)
			local a = from:GetProperty("SLD_CQ");
				if a == 1000 then
				from.FightBody:AddSkill("CC");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDQ2") then  --判定攻击者拥有buff则
			local a = 44 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDQ2",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_CQ",4,0,0)
			local a = from:GetProperty("SLD_CQ");
				if a == 1000 then
				from.FightBody:AddSkill("CC");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDQ3") then  --判定攻击者拥有buff则
			local a = 44 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDQ3",1,false,3,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_CQ",8,0,0)
			local a = from:GetProperty("SLD_CQ");
				if a == 1000 then
				from.FightBody:AddSkill("CC");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ2")
				end
		end
	
		
		if from.PropertyMgr:HasModifier("WX_SLDJ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 64 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_J",2,0,0)
				local a = from:GetProperty("SLD_J");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_J");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDJ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 64 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJ2",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_J",4,0,0)
				local a = from:GetProperty("SLD_J");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_J");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDJ")
				end

		end
		if from.PropertyMgr:HasModifier("WX_SLDJ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 64 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJ3",1,false,4,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_J",8,0,0)
				local a = from:GetProperty("SLD_J");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_J");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDJ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDJ2")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDJ3X3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			from.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.25,0,0)
				local a = from:GetProperty("NpcFight_BaseDodgeChance");
				if a == 1000 then
				from.PropertyMgr:AddModifier("WX_WD",1,false,60,false,-1)
				end
				if from.PropertyMgr:HasModifier("WX_WD") == false and a == 1000 then
					from.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",-100,0,0)
				end
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDF") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 36 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDF",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_F",2,0,0)
				local a = from:GetProperty("SLD_F");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_F");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDF2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 36 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDF2",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_F",4,0,0)
				local a = from:GetProperty("SLD_F");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_F");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDF3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 36 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDF3",1,false,4,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_F",8,0,0)
				local a = from:GetProperty("SLD_F");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_F");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDF")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDF2")
				end
		end
		
		if npc.PropertyMgr:HasModifier("WX_SLDF2X1") then 
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
				else
				 npc.LuaHelper:AddPracticeResource("Ling",-20000);
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDF3X2") then 
				if npc.IsDeath == true then
					from.PropertyMgr:AddModifier("WX_SLDF3X2",1,false,1,false,-1)
					from.PropertyMgr:ModifierProperty("MindStateBaseValue",50,0,0)
				else
				 from.PropertyMgr:ModifierProperty("MindStateBaseValue",-2,0,0)
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDG") then  --判定攻击者拥有buff则
			local a = 39 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDG",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_G",2,0,0)
			local a = from:GetProperty("SLD_G");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_G");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDG2") then  --判定攻击者拥有buff则
			local a = 39 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDG2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_G",4,0,0)
			local a = from:GetProperty("SLD_G");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_G");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDG")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDG2X3") then  --判定攻击者拥有buff则
			local a = 41 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特
			npc.PropertyMgr:ModifierProperty("NpcFight_ShieldConversionRate",-2,0,0)
			npc.PropertyMgr:ModifierProperty("NpcFight_ShieldConversionRateAddP",-1,0,0)			
		end
		if from.PropertyMgr:HasModifier("WX_SLDG3") then  --判定攻击者拥有buff则
			local a = 39 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDG3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_G",8,0,0)
			local a = from:GetProperty("SLD_G");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_G");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDG")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDG2")
				end
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDFZ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 56 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDFZ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_FZ",2,0,0)
				local a = from:GetProperty("SLD_FZ");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_FZ");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDFZ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 56 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDFZ2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_FZ",4,0,0)
				local a = from:GetProperty("SLD_FZ");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_FZ");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDFZ")
				end
				
		end
		if from.PropertyMgr:HasModifier("WX_SLDFZ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 56 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDFZ3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_FZ",8,0,0)
				local a = from:GetProperty("SLD_FZ");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_FZ");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDFZ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDFZ2")
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDC") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 400005 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDC",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_C",2,0,0)
				local a = from:GetProperty("SLD_C");
				if a == 1000 then
				World.map:StrikePoint(b , 10000, 0.3)
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDC2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 400005 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDC2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_C",4,0,0)
				local a = from:GetProperty("SLD_C");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDC2X")then
					World.map:StrikePoint(b , 100000, 0.3)
					elseif from.PropertyMgr:HasModifier("WX_SLDC3X")then
					World.map:StrikePoint(b , 1000000, 0.3)
					else
					World.map:StrikePoint(b , 10000, 0.3)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDC")
				end
				
				
		end
		if from.PropertyMgr:HasModifier("WX_SLDC2X2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local FT = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
			local GL = FT/500
			local R = WorldLua:RandomInt(0,100)
			if R <=GL then
			npc.PropertyMgr:AddModifier("WX_HM",1,false,1,false,-1)
			end
		end
		if from.PropertyMgr:HasModifier("WX_SLDC3X2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			
			npc.PropertyMgr:AddModifier("WX_SLDC3X2",1,false,1,false,-1)

		end
		if from.PropertyMgr:HasModifier("WX_SLDC3X3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local FT = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
			local SMS = from:GetProperty("GodCity_MaxResident");
									if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
									npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-SMS*FT*0.5)
									else 
									npc:AddLing(-SMS*FT)
									end
		end
		if from.PropertyMgr:HasModifier("WX_SLDC3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 400005 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDC3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_C",8,0,0)
				local a = from:GetProperty("SLD_C");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDC2X")then
					World.map:StrikePoint(b , 100000, 0.3)
					elseif from.PropertyMgr:HasModifier("WX_SLDC3X")then
					World.map:StrikePoint(b , 1000000, 0.3)
					else
					World.map:StrikePoint(b , 10000, 0.3)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDC")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDC2")
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDBS") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_yeli01  Bip001 R ForeTwist2  Bip001 L ForeTwist2" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDBS",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_BS",2,0,0)
				local a = from:GetProperty("SLD_BS");
				if a == 1000 then
				local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","AllHead","Skull","Brain","LeftEye","RightEye","LeftEar","RightEar","Nose","Mouth",
							"Throat","HeadFlesh","Face","Head","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","Stomach","Pelvis","Hips","Chest","Dorsum","Belly","Loin","LeftScapula","LeftShoulder","LeftHumerus","LeftPostbrachium",
							"LeftRadiusAndUlna","LeftForearm","LeftMetacarpal","LeftHand","LeftThumb","LeftForeFinger","LeftMiddleFinger","LeftRingFinger","LeftLittleFinger",
							"RightScapula","RightShoulder","RightHumerus","RightPostbrachium","RightRadiusAndUlna","RightForearm","RightMetacarpal","RightHand","RightThumb",
							"RightForeFinger","RightMiddleFinger","RightRingFinger","RightLittleFinger","LeftThigh","LeftTibia","LeftCrus","LeftMetatarsus","LeftFoot",
							"RightThigh","RightTibia","RightCrus","RightMetatarsus","RightFoot","TheWholeBody","Meridian","UpperElixirField","MiddleElixirField",
							"LowerElixirField","RenChannel","DuChannel","ChongChannel","BeltChannel","YinWeiChannel","YinHeelChannel","YangWeiChannel","YangHeelChannel"}
				local BWR = WorldLua:RandomInt(0,#BW+1)
				local CD = WorldLua:RandomFloat(0,0.5)
				npc:AddDamage(""..BW[BWR].."","BSD",CD,false);
				local a = "Effect/gsq/Prefab/long/fx_long002_longxishu  biped Head"
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDBS2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_yeli01  Bip001 R ForeTwist2  Bip001 L ForeTwist2" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDBS2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_BS",4,0,0)
				local a = from:GetProperty("SLD_BS");
				if a == 1000 then
				if from.PropertyMgr:HasModifier("WX_SLDBS3X") then
				local BW = {"Body","AllHead","Skull","Brain","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","TheWholeBody"}
				else
				local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","AllHead","Skull","Brain","LeftEye","RightEye","LeftEar","RightEar","Nose","Mouth",
							"Throat","HeadFlesh","Face","Head","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","Stomach","Pelvis","Hips","Chest","Dorsum","Belly","Loin","LeftScapula","LeftShoulder","LeftHumerus","LeftPostbrachium",
							"LeftRadiusAndUlna","LeftForearm","LeftMetacarpal","LeftHand","LeftThumb","LeftForeFinger","LeftMiddleFinger","LeftRingFinger","LeftLittleFinger",
							"RightScapula","RightShoulder","RightHumerus","RightPostbrachium","RightRadiusAndUlna","RightForearm","RightMetacarpal","RightHand","RightThumb",
							"RightForeFinger","RightMiddleFinger","RightRingFinger","RightLittleFinger","LeftThigh","LeftTibia","LeftCrus","LeftMetatarsus","LeftFoot",
							"RightThigh","RightTibia","RightCrus","RightMetatarsus","RightFoot","TheWholeBody","Meridian","UpperElixirField","MiddleElixirField",
							"LowerElixirField","RenChannel","DuChannel","ChongChannel","BeltChannel","YinWeiChannel","YinHeelChannel","YangWeiChannel","YangHeelChannel"}
				end
				local BWR = WorldLua:RandomInt(0,#BW+1)
				if from.PropertyMgr:HasModifier("WX_SLDBS2X") then
				local CD = WorldLua:RandomFloat(0.5,1)
				else
				local CD = WorldLua:RandomFloat(0,0.5)
				end
				npc:AddDamage(""..BW[BWR].."","BSD",CD,false);
				local a = "Effect/gsq/Prefab/long/fx_long002_longxishu  biped Head"
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDBS")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDBS3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_yeli01  Bip001 R ForeTwist2  Bip001 L ForeTwist2" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDBS3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_BS",8,0,0)
				local a = from:GetProperty("SLD_BS");
				if a == 1000 then
				if from.PropertyMgr:HasModifier("WX_SLDBS3X") then
				local BW = {"Body","AllHead","Skull","Brain","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","TheWholeBody"}
				else
				local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","AllHead","Skull","Brain","LeftEye","RightEye","LeftEar","RightEar","Nose","Mouth",
							"Throat","HeadFlesh","Face","Head","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","Stomach","Pelvis","Hips","Chest","Dorsum","Belly","Loin","LeftScapula","LeftShoulder","LeftHumerus","LeftPostbrachium",
							"LeftRadiusAndUlna","LeftForearm","LeftMetacarpal","LeftHand","LeftThumb","LeftForeFinger","LeftMiddleFinger","LeftRingFinger","LeftLittleFinger",
							"RightScapula","RightShoulder","RightHumerus","RightPostbrachium","RightRadiusAndUlna","RightForearm","RightMetacarpal","RightHand","RightThumb",
							"RightForeFinger","RightMiddleFinger","RightRingFinger","RightLittleFinger","LeftThigh","LeftTibia","LeftCrus","LeftMetatarsus","LeftFoot",
							"RightThigh","RightTibia","RightCrus","RightMetatarsus","RightFoot","TheWholeBody","Meridian","UpperElixirField","MiddleElixirField",
							"LowerElixirField","RenChannel","DuChannel","ChongChannel","BeltChannel","YinWeiChannel","YinHeelChannel","YangWeiChannel","YangHeelChannel"}
				end
				local BWR = WorldLua:RandomInt(0,#BW+1)
				if from.PropertyMgr:HasModifier("WX_SLDBS2X") then
				local CD = WorldLua:RandomFloat(0.5,1)
				else
				local CD = WorldLua:RandomFloat(0,0.5)
				end
				npc:AddDamage(""..BW[BWR].."","BSD",CD,false);
				local a = "Effect/gsq/Prefab/long/fx_long002_longxishu  biped Head"
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDBS")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDBS2")
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDBS2X2") then 
			
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			local ZQSX = npc.MaxZhenQi					
			local ZQ = npc.ZhenQi
			local JC = (ZQSX-ZQ)*0.1
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-JC)	

			else
			local LLSX = npc.MaxLing
			local LL = npc.LingV
			local JC = (LLSX-LL)*0.1
			npc:AddLing(-JC)
			
			end 
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDJJ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/long/fx_long002_potu01 -" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJJ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_JJ",2,0,0)
				local a = from:GetProperty("SLD_JJ");
				if a == 1000 then
					local A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(A) do
					local d = v.Npc
					end
						if d.Camp == g_emFightCamp.Player and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc	
						world:FlyLineEffect(d.Pos, from.Pos ,0.5,
						 function(p)
						  world:PlayEffect(3, from.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Pillar Blast/EarthPillarBlast");--弹道效果设置
						end
				from.PropertyMgr:AddModifier("WX_SLDJJ_X",1,false,1,false,-1)
				
				end
		end		
		if from.PropertyMgr:HasModifier("WX_SLDJJ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/long/fx_long002_potu01 -" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJJ2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_JJ",4,0,0)
				local a = from:GetProperty("SLD_JJ");
				if a == 1000 then
					local A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(A) do
					local d = v.Npc
					end
						if d.Camp == g_emFightCamp.Player and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc	
						world:FlyLineEffect(d.Pos, from.Pos ,0.5,
						 function(p)
						  world:PlayEffect(3, from.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Pillar Blast/EarthPillarBlast");--弹道效果设置
						end
						if from.PropertyMgr:HasModifier("WX_SLDJJ2X") then
						from.PropertyMgr:AddModifier("WX_SLDJJ_X2",1,false,1,false,-1)
						else
						from.PropertyMgr:AddModifier("WX_SLDJJ_X",1,false,1,false,-1)
						end
				
				end
				if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDJJ")
				end
		end		
		if from.PropertyMgr:HasModifier("WX_SLDJJ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/long/fx_long002_potu01 -" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJJ3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_JJ",8,0,0)
				local a = from:GetProperty("SLD_JJ");
				if a == 1000 then
					local A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(A) do
					local d = v.Npc
					end
						if d.Camp == g_emFightCamp.Player and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc	
						world:FlyLineEffect(d.Pos, from.Pos ,0.5,
						 function(p)
						  world:PlayEffect(3, from.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Pillar Blast/EarthPillarBlast");--弹道效果设置
						end
						if from.PropertyMgr:HasModifier("WX_SLDJJ2X") then
						from.PropertyMgr:AddModifier("WX_SLDJJ_X2",1,false,1,false,-1)
						else
						from.PropertyMgr:AddModifier("WX_SLDJJ_X",1,false,1,false,-1)
						end
				
				end
				if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDJJ")
				end
				if a == 10000 then
					from.LuaHelper:TriggerStory("WX_SLDJJ2")
				end
				if from.PropertyMgr:HasModifier("WX_SLDJJ3X") then
						npc.PropertyMgr:AddModifier("WX_SLDJJ_X3",1,false,1,false,-1)
				end
		end		

			if from.PropertyMgr:HasModifier("WX_SLDP") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			npc.PropertyMgr:AddModifier("WX_SLDP",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_P",2,0,0)
				local a = from:GetProperty("SLD_P");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX1",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX2",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX3",1,false,1,false,-1)
					end
				
				end
		end	
			if from.PropertyMgr:HasModifier("WX_SLDP2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			npc.PropertyMgr:AddModifier("WX_SLDP2",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_P",4,0,0)
				local a = from:GetProperty("SLD_P");
				if a == 1000 then	
					if from.PropertyMgr:HasModifier("WX_SLDP2X") then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX11",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX22",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX33",1,false,1,false,-1)
					end
					else
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX1",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX2",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX3",1,false,1,false,-1)
					end
					end
				end
					if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDP")
					end	
				
			end					
			if from.PropertyMgr:HasModifier("WX_SLDP3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			npc.PropertyMgr:AddModifier("WX_SLDP3",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_P",8,0,0)
				local a = from:GetProperty("SLD_P");
				if a == 1000 then	
					if from.PropertyMgr:HasModifier("WX_SLDP2X") then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					from.PropertyMgr:AddModifier("WX_SLDPX11",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					from.PropertyMgr:AddModifier("WX_SLDPX22",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					from.PropertyMgr:AddModifier("WX_SLDPX33",1,false,1,false,-1)
					end
					else
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX1",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX2",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX3",1,false,1,false,-1)
					end
					end
				end
					if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDP")
					end	
					if a == 10000 then
					from.LuaHelper:TriggerStory("WX_SLDP2")
					end	
					if from.PropertyMgr:HasModifier("WX_SLDP3X") then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX11",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX22",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX33",1,false,1,false,-1)
					end
					end
			end
			if npc.PropertyMgr:HasModifier("WX_SLDP2X") then 
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					local b = npc.ZhenQi
					if b <= 0 then
					npc.PropertyMgr:AddModifier("WX_WD",1,false,180,false,-1)
					end
					else
					local a = npc.LingV
					if a <= 0 then
					npc.PropertyMgr:AddModifier("WX_WD",1,false,180,false,-1)
					end
					end
			end		
		
		if from.PropertyMgr:HasModifier("WX_SLDL") then 
				local a = "Effect/A/Prefabs/Beams/Impact/FrostBeamImpact"
				local b = npc.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from.PropertyMgr:AddModifier("WX_SLDL",1,false,1,false,-1)
				from.PropertyMgr:ModifierProperty("SLD_L",2,0,0)
			local a = from:GetProperty("SLD_L");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
					else
					npc:AddLing(-5000)
					end
				end
		end	
		if from.PropertyMgr:HasModifier("WX_SLDL2") then 
				local a = "Effect/A/Prefabs/Beams/Impact/FrostBeamImpact"
				local b = npc.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from.PropertyMgr:AddModifier("WX_SLDL2",1,false,1,false,-1)
				from.PropertyMgr:ModifierProperty("SLD_L",4,0,0)
			local a = from:GetProperty("SLD_L");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
					else
					npc:AddLing(-5000)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDL")	
				end
					if from.PropertyMgr:HasModifier("WX_SLDL2X") then
						local ART = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Art)
						local num = WXXX:ShuXingJianCe(from.PropertyMgr.Practice.Gong.ElementKind,npc.PropertyMgr.Practice.Gong.ElementKind)
						local WXXX = GameMain:GetMod("WXXX");
						function WXXX:ShuXingJianCe(nElement,iElement)
						local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
						local num = 0
						if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
							num = 1	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
							num = 0.8	--倍数	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
							num = 2	--倍数
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
							num = 0.1
							
						end
						return num		--传回参数
						end	
						
						if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500*ART)
						else
						npc:AddLing(-5000*num*ART)
						end
					end
		end	
		if from.PropertyMgr:HasModifier("WX_SLDL3") then 
				local a = "Effect/A/Prefabs/Beams/Impact/FrostBeamImpact"
				local b = npc.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from.PropertyMgr:AddModifier("WX_SLDL3",1,false,1,false,-1)
				from.PropertyMgr:ModifierProperty("SLD_L",8,0,0)
			local a = from:GetProperty("SLD_L");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
					else
					npc:AddLing(-5000)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDL")	
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDL2")
				end
					if from.PropertyMgr:HasModifier("WX_SLDL2X") and from.PropertyMgr:HasModifier("WX_SLDL3X") then	
						local ART = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Art)
						local num = WXXX:ShuXingJianCe(from.PropertyMgr.Practice.Gong.ElementKind,npc.PropertyMgr.Practice.Gong.ElementKind)
						local WXXX = GameMain:GetMod("WXXX");
						function WXXX:ShuXingJianCe(nElement,iElement)
						local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
						local num = 0
						if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
							num = 1	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
							num = 0.8	--倍数	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
							num = 2	--倍数
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
							num = 0.1
							
						end
						return num		--传回参数
						end	
						
						if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-15000*ART)
						else
						npc:AddLing(-50000*num*ART)
						end
					elseif from.PropertyMgr:HasModifier("WX_SLDL2X") then
						local ART = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Art)
						local num = WXXX:ShuXingJianCe(from.PropertyMgr.Practice.Gong.ElementKind,npc.PropertyMgr.Practice.Gong.ElementKind)
						local WXXX = GameMain:GetMod("WXXX");
						function WXXX:ShuXingJianCe(nElement,iElement)
						local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
						local num = 0
						if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
							num = 1	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
							num = 0.8	--倍数	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
							num = 2	--倍数
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
							num = 0.1
							
						end
						return num		--传回参数
						end	
						
						if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500*ART)
						else
						npc:AddLing(-5000*num*ART)
						end
					end
		end	
		
		if from.PropertyMgr:HasModifier("WX_SLDL2X2") then 
				local a = 400007
				local b = from.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,from.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.IsDeath == false then--判断是否是敌人和npc
								  d.PropertyMgr:AddModifier("WX_SLDL2X21",1,false,1,false,-1)
								end	
						end	
					 end 
		end	
		if from.PropertyMgr:HasModifier("WX_SLDL2X3") then 
			if from.GongKind == CS.XiaWorld.g_emGongKind.God then
				local SM = from.LuaHelper:GetGodPopulation()
				local CS = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.SocialContact)
				local a = 400006
				local b = from.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,from.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.IsDeath == false then--判断是否是敌人和npc
									if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
										d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(SM*CS)
									else
										d:AddLing(SM*CS*5)
									end
								end	
						end	
					 end 
			else
			return 0
			end
		end	
		
				
		if from.PropertyMgr:HasModifier("WX_SLDD") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				from.PropertyMgr:AddModifier("WX_SLDD",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_D",2,0,0)
				local a = 85
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) 
				local a = from:GetProperty("SLD_D");
				if a == 1000 then
				npc.PropertyMgr:AddModifier("SLD_D_X",1,false,1,false,-1)
				end
				local m = npc.PropertyMgr:FindModifier("SLD_D_X");
				if m ~= nil and m.Stack >= 9999 then
					CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				end
			
		end		
		if from.PropertyMgr:HasModifier("WX_SLDD2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				from.PropertyMgr:AddModifier("WX_SLDD2",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_D",4,0,0)
				local a = 85
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) 
				local a = from:GetProperty("SLD_D");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDD2X") then
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,3,false,-1)
					else
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,1,false,-1)
					end
				local m = npc.PropertyMgr:FindModifier("SLD_D_X");
				end
				if m ~= nil and m.Stack >= 9999 then
					CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				end
				if a == 5000 then
				npc.LuaHelper:TriggerStory("WX_SLDD")
				end
			
		end		
		if from.PropertyMgr:HasModifier("WX_SLDD3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				from.PropertyMgr:AddModifier("WX_SLDD3",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_D",8,0,0)
				local a = 85
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) 
				local a = from:GetProperty("SLD_D");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDD3X") then
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,6,false,-1)
					else
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,1,false,-1)
					end
				local m = npc.PropertyMgr:FindModifier("SLD_D_X");
				end
				if m ~= nil and m.Stack >= 9999 then
					CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				end
				if a == 5000 then
				npc.LuaHelper:TriggerStory("WX_SLDD")
				end
				if a == 10000 then
				npc.LuaHelper:TriggerStory("WX_SLDD2")
				end
			
		end		
		if from.PropertyMgr:HasModifier("WX_SLDD2X2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				npc.PropertyMgr:AddModifier("WX_SLDD2X21",1,false,1,false,-1)
			
		end		
		
	
	--血统
		
		if from.PropertyMgr:HasModifier("XTWQ_TMXT") then 
			local a = 46 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local GL = WorldLua:RandomFloat(0,100)
			local XS = from:GetProperty("BodyPratice_BodyStrong");
			if GL <= 30 then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-100*XS)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-XS*500)
				end
				local a = 69 --或者string,这个是特效编号或路径
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
			else
			 return 0
			end
			if npc.IsDeath == true then
				npc.PropertyMgr:AddModifier("XT_TMXTX",1,false,1,false,-1)
			end
		end
		
		if from.PropertyMgr:HasModifier("XT_YGXT") then 
			local a = 78 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local m = from.PropertyMgr:FindModifier("XT_YGXTX");
			local JS = from.PropertyMgr:FindModifier("WX_GJJC");
			if JS == nil then 
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				
			else
					if JS.Stack == 300 then
					npc.PropertyMgr:AddModifier("XT_YGXTX",1,false,1,false,-1)
					from:RemoveModifier("WX_GJJC");
					else
					npc.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
					end
			end
		end
		if from.PropertyMgr:HasModifier("XT_YGXT1") then 
			local a = 78 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local m = from.PropertyMgr:FindModifier("XT_YGXT1X");
			local JS = from.PropertyMgr:FindModifier("WX_GJJC");
			if JS == nil then 
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				
			else
					if JS.Stack == 150 then
					npc.PropertyMgr:AddModifier("XT_YGXTX1",1,false,1,false,-1)
					from:RemoveModifier("WX_GJJC");
					else
					npc.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
					end
			end
		end
		if from.PropertyMgr:HasModifier("XT_YGXT2") then 
			local a = 78 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local m = from.PropertyMgr:FindModifier("XT_YGXT2X");
			local JS = from.PropertyMgr:FindModifier("WX_GJJC");
			if JS == nil then 
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				
			else
					if JS.Stack == 60 then
					npc.PropertyMgr:AddModifier("XT_YGXT2X",1,false,1,false,-1)
					from:RemoveModifier("WX_GJJC");
					else
					npc.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
					end
			end
		end
		
		if from.PropertyMgr:HasModifier("XT_RMXT") then 
			local a = 71 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
			local m = from.PropertyMgr:FindModifier("XT_RMXTX");
			if m ~= nil then
			npc.PropertyMgr:AddModifier("XT_RMXTX",1,false,FSLV,false,-1)
			else
			return 0
			end
		end
		if from.PropertyMgr:HasModifier("XT_RMXT1") then 
			local a = 71 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
			local m = from.PropertyMgr:FindModifier("XT_RMXT1X");
			if m ~= nil then
			npc.PropertyMgr:AddModifier("XT_RMXT1X",1,false,FSLV,false,-1)
			else
			return 0
			end
		end
		if from.PropertyMgr:HasModifier("XT_RMXT2") then 
			local a = 71 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
			local m = from.PropertyMgr:FindModifier("XT_RMXT2X");
			if m ~= nil then
			npc.PropertyMgr:AddModifier("XT_RMXT2X",1,false,FSLV,false,-1)
			else
			return 0
			end
		end
		
		if from.PropertyMgr:HasModifier("WX_PSXT") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 15 then
				from.PropertyMgr:AddModifier("WX_PSXT_X",1,false,3,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
			else
			 return 0
			end
		end
		if from.PropertyMgr:HasModifier("WX_PSXT_X") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			L = from.map.GetLing(from.Key)
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-L*0.05)
			elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			npc.AddLing(-L*0.1)	
			else
			 npc:AddDamage("Body","Tu_Petrifaction1",1,false);
			end
			from.PropertyMgr:AddModifier("WX_PSXT_X",1,false,-1,false,-1)
			if m.Stack == 3 then
				from:RemoveModifier("WX_PSXT_X");
			end
		end
		if npc.PropertyMgr:HasModifier("WX_PSXT") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui or from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-200)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-500)	
				end
			else
			 return 0
			end
		end
		
		if from.PropertyMgr:HasModifier("WX_PSXT1") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 15 then
				from.PropertyMgr:AddModifier("WX_PSXT1_X",1,false,3,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
			else
			 return 0
			end
		end
		if from.PropertyMgr:HasModifier("WX_PSXT1_X") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			L = from.map.GetLing(from.Key)
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-L*0.2)
			elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			npc.AddLing(-L*0.3)	
			else
			 npc:AddDamage("Body","Tu_Petrifaction1",1,false);
			end
			from.PropertyMgr:AddModifier("WX_PSXT1_X",1,false,-1,false,-1)
			if m.Stack == 3 then
				from:RemoveModifier("WX_PSXT1_X");
			end
		end
		if npc.PropertyMgr:HasModifier("WX_PSXT1") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui or from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-5000)	
				end
			else
			 return 0
			end
		end	

		if from.PropertyMgr:HasModifier("WX_PSXT2") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 15 then
				from.PropertyMgr:AddModifier("WX_PSXT2_X",1,false,3,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
			else
			 return 0
			end
		end
		if from.PropertyMgr:HasModifier("WX_PSXT2_X") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			L = from.map.GetLing(from.Key)
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-L*0.5)
			elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			npc.AddLing(-L*0.6)	
			else
			 npc:AddDamage("Body","Tu_Petrifaction1",1,false);
			end
			from.PropertyMgr:AddModifier("WX_PSXT2_X",1,false,-1,false,-1)
			if m.Stack == 3 then
				from:RemoveModifier("WX_PSXT2_X");
			end
		end
		if npc.PropertyMgr:HasModifier("WX_PSXT2") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui or from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-10000)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-50000)	
				end
			else
			 return 0
			end
		end
		
		if from.PropertyMgr:HasModifier("WX_YLXT1") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 20 then
				from.PropertyMgr:AddModifier("WX_CM",1,false,2,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
		end
		if from.PropertyMgr:HasModifier("WX_YLXT2") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 20 then
				from.PropertyMgr:AddModifier("WX_JX",1,false,2,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
		end
	
		if from.PropertyMgr:HasModifier("XT_XXGXT2_X") then 
			local a = 60 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				local N1 = from:GetProperty("BodyPratice_MaxZhenQi");
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N1*0.05)
				else
					npc.AddLing(-N1*0.5)
				end
			elseif from.GongKind == CS.XiaWorld.g_emGongKind.Dao then
				local N1 = from:GetProperty("NpcLingMaxValue");
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N1*0.005)
				else
					npc.AddLing(-N1*0.05)
				end
			else
			 return 0
			end
		end
		
		if from.PropertyMgr:HasModifier("XT_YTXT") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 86 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效

				World.map:StrikePoint(b , 5000, 1)

		end
		if from.PropertyMgr:HasModifier("XT_YTXT1") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 86 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效

				World.map:StrikePoint(b , 30000, 1)

		end
		if from.PropertyMgr:HasModifier("XT_YTXT2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 86 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效

				World.map:StrikePoint(b , 100000, 1)

		end
		
		if npc.PropertyMgr:HasModifier("XT_XTXT") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 90004 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			npc.PropertyMgr:AddModifier("XT_XTXT",1,false,1,false,-1)
			local N = npc:GetModifierStack("XT_XTXT");
			if N == 100 then
			npc.PropertyMgr:AddModifier("XT_XTXT_X",1,false,1,false,-1)
			npc.PropertyMgr:AddModifier("XT_XTXT",1,false,-100,false,-1)
			end
			
		end
		if from.PropertyMgr:HasModifier("XT_XTXT_X") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_fennu01 Bone035" --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			
		end
		
	
		if from.PropertyMgr:HasModifier("XT_LYJLXT1") and from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo and from.GongKind == CS.XiaWorld.g_emGongKind.Dao then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/feng/fx_fenghuang_jianglin01 Bone018 1" --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.AddModifier("XT_LYJLXT1_X")
			
		end
		if npc.PropertyMgr:HasModifier("XT_LYJLXT1") and npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo and npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 71 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			npc.AddModifier("XT_LYJLXT1_X")
		end
		
	
		if from.PropertyMgr:HasModifier("XT_STSXT1") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 54 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.LuaHelper:AddPracticeResource("Ling",10000);
			
		end
		if from.PropertyMgr:HasModifier("XT_JLXT_X") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 48 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local A = from.LingV
			local B = npc.LingV
			local C = from.ZhenQi
			local D = npc.ZhenQi
			if B ~= nil and B < A then
			npc.LuaHelper:AddPracticeResource("Ling",-1000);
			elseif D ~= nil and D < C then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
			end
			
		end
		
	--血统
	end
end

function WXTX.WillOnFightBodyBeHit(t,npc,obj)--有保护
	if obj[2] ~= nil then
	local from = obj[2];
	--from是攻击者
	--npc是被击者
		
		--耐久度
		if from.PropertyMgr:HasModifier("WXQX_NJD") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。

			if World:GetFlag(100000393) == 1 then
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-8,false,-1)
			print(1)
			elseif World:GetFlag(100000393) == 2 then
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-7,false,-1)
			print(2)
			elseif World:GetFlag(100000393) == 3 then
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-5,false,-1)
			print(3)
			else
			from.PropertyMgr:AddModifier("WXQX_NJD",1,false,-10,false,-1)
			print(4)
			end
			
			
		end
	
		
		if npc.PropertyMgr:HasModifier("WX_YJJJ") then  --能量消耗段
		local FBLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
		local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
		local HDLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
		local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
		local FBLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
		local FSLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
		local HDLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
		local FTLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
		local GL = WorldLua:RandomInt(0,100)
		local SLD = npc:GetProperty("SLD_JJ");
		local WX = npc.PropertyMgr.Charisma
		local GG = npc.PropertyMgr.Physique
		local XY = npc.PropertyMgr.Luck
		local SBXS = math.ceil(XY/WX+GG)
		local WX1 = from.PropertyMgr.Charisma
		local GG1 = from.PropertyMgr.Physique
		local XY1 = from.PropertyMgr.Luck
		local SBXS1 = math.ceil(XY1/WX1+GG1)
		local HXSH = math.ceil(((FBLV - FBLV1)/HDLV1)*100)
						local FBG = math.ceil(FBLV-FBLV1)
						local SZSH = math.ceil(((FTLV - FTLV1)/HDLV1)*100)
						local FTG = math.ceil(FTLV-FTLV1)
						local NLZSH = math.ceil(((FSLV - FSLV1)/HDLV1)*100)
						local FSG = math.ceil(FSLV-FSLV1)
					
					if FBLV1 < FBLV then
							if GL <= HXSH then
								npc.PropertyMgr:AddModifier("WX_JJS_H",1,false,FBG,false,-1)
								npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-FBG,false,-1)
								npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-2*FBG,false,-1)
							end
					elseif FTLV1 < FTLV then
							if GL <= SZSH then
								npc.PropertyMgr:AddModifier("WX_JJS_SJ",1,false,FTG,false,-1)
								npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-FTG,false,-1)
								npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-2*FTG,false,-1)
							end
					elseif FSLV1 < FSLV then		
							if GL <= NLZSH then
								npc.PropertyMgr:AddModifier("WX_JJS_NLD",1,false,FSG,false,-1)
								npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-FSG,false,-1)
								npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-2*FSG,false,-1)
							end
					end

						if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
							local FT = math.ceil(FTLV/10)
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5*FT,false,-1)
							
						elseif from.GongKind == CS.XiaWorld.g_emGongKind.Dao then 
							local FS = math.ceil(FSLV/10)
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5*FS,false,-1)
						elseif from.GongKind == CS.XiaWorld.g_emGongKind.God then
							local FB = math.ceil(FBLV/10)
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5*FB,false,-1)
						else
							npc.PropertyMgr:AddModifier("WX_JJNY",1,false,-5,false,-1)
						end
						npc.PropertyMgr:ModifierProperty("SLD_JJ",0.05*FBLV1*0.3,0,0)
				end
		if from.PropertyMgr:HasModifier("WX_YJJJ") then  --判定攻击者拥有buff则
		local FBLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
		local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
		local HDLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
		local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
		local FBLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fabao)
		local FSLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
		local HDLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
		local FTLV1 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
		local GL = WorldLua:RandomInt(0,100)
		local SLD = npc:GetProperty("SLD_JJ");
		local WX = npc.PropertyMgr.Charisma
		local GG = npc.PropertyMgr.Physique
		local XY = npc.PropertyMgr.Luck
		local SBXS = math.ceil(XY/WX+GG)
		local WX1 = from.PropertyMgr.Charisma
		local GG1 = from.PropertyMgr.Physique
		local XY1 = from.PropertyMgr.Luck
		local SBXS1 = math.ceil(XY1/WX1+GG1)
		local HXSH = math.ceil(((FBLV - FBLV1)/HDLV1)*100)
						local FBG = math.ceil(FBLV-FBLV1)
						local SZSH = math.ceil(((FTLV - FTLV1)/HDLV1)*100)
						local FTG = math.ceil(FTLV-FTLV1)
						local NLZSH = math.ceil(((FSLV - FSLV1)/HDLV1)*100)
						local FSG = math.ceil(FSLV-FSLV1)		
						local FT = math.ceil((FTLV+FBLV+FSLV)/SLD)
						from.PropertyMgr:AddModifier("WX_JJNY",1,false,-5,false,-1)	
						if FT < 1 then
						FTX = math.ceil(FT*100)
						 from.PropertyMgr:AddModifier("WX_JJNY",1,false,-(15+FTX),false,-1)
						elseif FT >= 1 then
							from.PropertyMgr:AddModifier("WX_JJNY",1,false,-(5+FT),false,-1)
						end
					if npc.IsDisciple == false then
						npc:AddDamage("TheWholeBody","JJSH",1,false);
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
						if SBXS > SBXS1 then
								return 0
						else
						if FTLV > FTLV1 then
							local SHXS = math.ceil(((FTLV - FTLV1)/HDLV1)*10)
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-SHXS*100)
						else
							local SHXS = math.ceil(((FTLV1 - FTLV)/HDLV1)*10)
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-SHXS*50)
						end
							if npc.ZhenQi < 5000 then
									npc:AddDamage("TheWholeBody","JJSH",WorldLua:RandomInt(0,SHXS),false);
							end
						end
					else
						if SBXS > SBXS1 then
								return 0
						else
						if FBLV > FBLV1 then
							local SHXS = math.ceil(((FBLV - FBLV1)/HDLV1)*10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*200);
						elseif FBLV1 > FBLV then
							local SHXS = math.ceil(((FBLV1 - FBLV)/HDLV1)*10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*100);
						elseif FSLV > FSLV1 then
							local SHXS = math.ceil(((FBLV - FBLV1)/HDLV1)*10)
							local BJXS = math.ceil((FSLV - FSLV1)/10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*200*BJXS);
						elseif FSLV1 > FSLV then
							local SHXS = math.ceil(((FBLV - FBLV1)/HDLV1)*10)
							local BJXS = math.ceil((FSLV - FSLV1)/10)
							npc.LuaHelper:AddPracticeResource("Ling",-SHXS*200/BJXS);
						end
							if npc.ZhenQi < 100000 then
									npc:AddDamage("TheWholeBody","JJSH",WorldLua:RandomInt(0,SHXS),false);
							end
						end
						end
					end
			
	
		--星峰
		if from.PropertyMgr:HasModifier("WX_XMPXD_X") then 
			npc.PropertyMgr:ModifierProperty("BodyPratice_BodyStrong",-0.5,0,0)
			local N1 = npc:GetProperty("BodyPratice_BodyStrong")
			if N1 < 5 then
				npc:AddDamage("Body","HXB",0.2,false);
			end
		end
		if from.PropertyMgr:HasModifier("XXFKJ2_5") then 
			
			local N1 = WorldLua:RandomInt(0,100)
			if N1 <= 15 then
				npc:AddDamage("Body","HXB",0.2,false);
			end
		end
	
		--熟练度
		local N = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
		local N2 = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
			if from.PropertyMgr:HasModifier("WX_SLDDJ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDDJ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_DJ",1,0,0)
				local a = from:GetProperty("SLD_DJ");
				if a == 1000 then
				from.FightBody:AddSkill("FXLZ");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDDJ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDDJ2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_DJ",1,0,0)
				local a = from:GetProperty("SLD_DJ");
				if a == 1000 then
				from.FightBody:AddSkill("FXLZ");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDDJ")
				end
				
		end
		if from.PropertyMgr:HasModifier("WX_SLDDJ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDDJ3",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_DJ",2,0,0)
				local a = from:GetProperty("SLD_DJ");
				if a == 1000 then
				from.FightBody:AddSkill("FXLZ");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDDJ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDDJ2")
				end
				
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDQ") then  --判定攻击者拥有buff则
			local a = 44 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDQ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_CQ",1,0,0)
			local a = from:GetProperty("SLD_CQ");
				if a == 1000 then
				from.FightBody:AddSkill("CC");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDQ2") then  --判定攻击者拥有buff则
			local a = 44 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDQ2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_CQ",2,0,0)
			local a = from:GetProperty("SLD_CQ");
				if a == 1000 then
				from.FightBody:AddSkill("CC");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDQ3") then  --判定攻击者拥有buff则
			local a = 44 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDQ3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_CQ",4,0,0)
			local a = from:GetProperty("SLD_CQ");
				if a == 1000 then
				from.FightBody:AddSkill("CC");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ2")
				end
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDJ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 64 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_J",1,0,0)
				local a = from:GetProperty("SLD_J");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_J");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDJ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 64 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJ2",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_J",2,0,0)
				local a = from:GetProperty("SLD_J");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_J");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDJ")
				end

		end
		if from.PropertyMgr:HasModifier("WX_SLDJ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 64 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJ3",1,false,4,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_J",4,0,0)
				local a = from:GetProperty("SLD_J");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_J");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDJ")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDJ2")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDJ3X3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			from.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",0.25,0,0)
				local a = from:GetProperty("NpcFight_BaseDodgeChance");
				if a == 1000 then
				from.PropertyMgr:AddModifier("WX_WD",1,false,60,false,-1)
				end
				if from.PropertyMgr:HasModifier("WX_WD") == false and a == 1000 then
					from.PropertyMgr:ModifierProperty("NpcFight_BaseDodgeChance",-100,0,0)
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDF") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 36 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDF",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_F",1,0,0)
				local a = from:GetProperty("SLD_F");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_F");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDF2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 36 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDF2",1,false,2,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_F",2,0,0)
				local a = from:GetProperty("SLD_F");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_F");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDCQ")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDF3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 36 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDF3",1,false,4,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_F",4,0,0)
				local a = from:GetProperty("SLD_F");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_F");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDF")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDF2")
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDG") then  --判定攻击者拥有buff则
			local a = 39 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDG",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_G",1,0,0)
			local a = from:GetProperty("SLD_G");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_G");
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDG2") then  --判定攻击者拥有buff则
			local a = 39 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDG2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_G",2,0,0)
			local a = from:GetProperty("SLD_G");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_G");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDG")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDG2X3") then  --判定攻击者拥有buff则
			local a = 41 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特
			npc.PropertyMgr:ModifierProperty("NpcFight_ShieldConversionRate",-3,0,0)
			npc.PropertyMgr:ModifierProperty("NpcFight_ShieldConversionRateAddP",-2,0,0)			
		end
		if from.PropertyMgr:HasModifier("WX_SLDG3") then  --判定攻击者拥有buff则
			local a = 39 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDG3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_G",4,0,0)
			local a = from:GetProperty("SLD_G");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_G");
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDG")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDG2")
				end
		end
			
		if from.PropertyMgr:HasModifier("WX_SLDFZ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 56 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDFZ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_FZ",1,0,0)
				local a = from:GetProperty("SLD_FZ");
				if a == 1000 then
				from.FightBody:AddSkill("SLD_FZ");
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDC") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 400005 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDC",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_C",1,0,0)
				local a = from:GetProperty("SLD_C");
				if a == 1000 then
				World.map:StrikePoint(b , 10000, 0.3)
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDC2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 400005 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDC2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_C",1,0,0)
				local a = from:GetProperty("SLD_C");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDC2X")then
					World.map:StrikePoint(b , 100000, 0.3)
					elseif from.PropertyMgr:HasModifier("WX_SLDC3X")then
					World.map:StrikePoint(b , 1000000, 0.3)
					else
					World.map:StrikePoint(b , 10000, 0.3)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDC")
				end
				
				
		end
		if from.PropertyMgr:HasModifier("WX_SLDC2X2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local FT = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
			local GL = FT/500
			local R = WorldLua:RandomInt(0,100)
			if R <=GL then
			npc.PropertyMgr:AddModifier("WX_HM",1,false,1,false,-1)
			end
		end
		if from.PropertyMgr:HasModifier("WX_SLDC3X2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			
			npc.PropertyMgr:AddModifier("WX_SLDC3X2",1,false,1,false,-1)

		end
		if from.PropertyMgr:HasModifier("WX_SLDC3X3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local FT = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
			local SMS = from:GetProperty("GodCity_MaxResident");
									if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
									npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-SMS*FT*0.5)
									else 
									npc:AddLing(-SMS*FT)
									end
		end
		if from.PropertyMgr:HasModifier("WX_SLDC3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 400005 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDC3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_C",1,0,0)
				local a = from:GetProperty("SLD_C");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDC2X")then
					World.map:StrikePoint(b , 100000, 0.3)
					elseif from.PropertyMgr:HasModifier("WX_SLDC3X")then
					World.map:StrikePoint(b , 1000000, 0.3)
					else
					World.map:StrikePoint(b , 10000, 0.3)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDC")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDC2")
				end
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDBS") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_yeli01  Bip001 R ForeTwist2  Bip001 L ForeTwist2" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDBS",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_BS",1,0,0)
				local a = from:GetProperty("SLD_BS");
				if a == 1000 then
				local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","AllHead","Skull","Brain","LeftEye","RightEye","LeftEar","RightEar","Nose","Mouth",
							"Throat","HeadFlesh","Face","Head","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","Stomach","Pelvis","Hips","Chest","Dorsum","Belly","Loin","LeftScapula","LeftShoulder","LeftHumerus","LeftPostbrachium",
							"LeftRadiusAndUlna","LeftForearm","LeftMetacarpal","LeftHand","LeftThumb","LeftForeFinger","LeftMiddleFinger","LeftRingFinger","LeftLittleFinger",
							"RightScapula","RightShoulder","RightHumerus","RightPostbrachium","RightRadiusAndUlna","RightForearm","RightMetacarpal","RightHand","RightThumb",
							"RightForeFinger","RightMiddleFinger","RightRingFinger","RightLittleFinger","LeftThigh","LeftTibia","LeftCrus","LeftMetatarsus","LeftFoot",
							"RightThigh","RightTibia","RightCrus","RightMetatarsus","RightFoot","TheWholeBody","Meridian","UpperElixirField","MiddleElixirField",
							"LowerElixirField","RenChannel","DuChannel","ChongChannel","BeltChannel","YinWeiChannel","YinHeelChannel","YangWeiChannel","YangHeelChannel"}
				local BWR = WorldLua:RandomInt(0,#BW+1)
				local CD = WorldLua:RandomFloat(0,0.5)
				npc:AddDamage(""..BW[BWR].."","BSD",CD,false);
				local a = "Effect/gsq/Prefab/long/fx_long002_longxishu  biped Head"
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDBS2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_yeli01  Bip001 R ForeTwist2  Bip001 L ForeTwist2" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDBS2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_BS",1,0,0)
				local a = from:GetProperty("SLD_BS");
				if a == 1000 then
				if from.PropertyMgr:HasModifier("WX_SLDBS3X") then
				local BW = {"Body","AllHead","Skull","Brain","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","TheWholeBody"}
				else
				local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","AllHead","Skull","Brain","LeftEye","RightEye","LeftEar","RightEar","Nose","Mouth",
							"Throat","HeadFlesh","Face","Head","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","Stomach","Pelvis","Hips","Chest","Dorsum","Belly","Loin","LeftScapula","LeftShoulder","LeftHumerus","LeftPostbrachium",
							"LeftRadiusAndUlna","LeftForearm","LeftMetacarpal","LeftHand","LeftThumb","LeftForeFinger","LeftMiddleFinger","LeftRingFinger","LeftLittleFinger",
							"RightScapula","RightShoulder","RightHumerus","RightPostbrachium","RightRadiusAndUlna","RightForearm","RightMetacarpal","RightHand","RightThumb",
							"RightForeFinger","RightMiddleFinger","RightRingFinger","RightLittleFinger","LeftThigh","LeftTibia","LeftCrus","LeftMetatarsus","LeftFoot",
							"RightThigh","RightTibia","RightCrus","RightMetatarsus","RightFoot","TheWholeBody","Meridian","UpperElixirField","MiddleElixirField",
							"LowerElixirField","RenChannel","DuChannel","ChongChannel","BeltChannel","YinWeiChannel","YinHeelChannel","YangWeiChannel","YangHeelChannel"}
				end
				local BWR = WorldLua:RandomInt(0,#BW+1)
				if from.PropertyMgr:HasModifier("WX_SLDBS2X") then
				local CD = WorldLua:RandomFloat(0.5,1)
				else
				local CD = WorldLua:RandomFloat(0,0.5)
				end
				npc:AddDamage(""..BW[BWR].."","BSD",CD,false);
				local a = "Effect/gsq/Prefab/long/fx_long002_longxishu  biped Head"
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDBS")
				end
		end
		if from.PropertyMgr:HasModifier("WX_SLDBS3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_yeli01  Bip001 R ForeTwist2  Bip001 L ForeTwist2" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDBS3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_BS",1,0,0)
				local a = from:GetProperty("SLD_BS");
				if a == 1000 then
				if from.PropertyMgr:HasModifier("WX_SLDBS3X") then
				local BW = {"Body","AllHead","Skull","Brain","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","TheWholeBody"}
				else
				local BW = {"LeftLeg","RightLeg","RightArm","Body","LeftArm","AllHead","Skull","Brain","LeftEye","RightEye","LeftEar","RightEar","Nose","Mouth",
							"Throat","HeadFlesh","Face","Head","AllBody","LeftRibs1","RightRibs1","Spine","Heart","Liver","Spleen","Lung","Kidney","Intestines",
							"Genitals","Stomach","Pelvis","Hips","Chest","Dorsum","Belly","Loin","LeftScapula","LeftShoulder","LeftHumerus","LeftPostbrachium",
							"LeftRadiusAndUlna","LeftForearm","LeftMetacarpal","LeftHand","LeftThumb","LeftForeFinger","LeftMiddleFinger","LeftRingFinger","LeftLittleFinger",
							"RightScapula","RightShoulder","RightHumerus","RightPostbrachium","RightRadiusAndUlna","RightForearm","RightMetacarpal","RightHand","RightThumb",
							"RightForeFinger","RightMiddleFinger","RightRingFinger","RightLittleFinger","LeftThigh","LeftTibia","LeftCrus","LeftMetatarsus","LeftFoot",
							"RightThigh","RightTibia","RightCrus","RightMetatarsus","RightFoot","TheWholeBody","Meridian","UpperElixirField","MiddleElixirField",
							"LowerElixirField","RenChannel","DuChannel","ChongChannel","BeltChannel","YinWeiChannel","YinHeelChannel","YangWeiChannel","YangHeelChannel"}
				end
				local BWR = WorldLua:RandomInt(0,#BW+1)
				if from.PropertyMgr:HasModifier("WX_SLDBS2X") then
				local CD = WorldLua:RandomFloat(0.5,1)
				else
				local CD = WorldLua:RandomFloat(0,0.5)
				end
				npc:AddDamage(""..BW[BWR].."","BSD",CD,false);
				local a = "Effect/gsq/Prefab/long/fx_long002_longxishu  biped Head"
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDBS")
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDBS2")
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_SLDBS2X2") then 
			
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			local ZQSX = npc.MaxZhenQi					
			local ZQ = npc.ZhenQi
			local JC = (ZQSX-ZQ)*0.1
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-JC)	

			else
			local LLSX = npc.MaxLing
			local LL = npc.LingV
			local JC = (LLSX-LL)*0.1
			npc:AddLing(-JC)
			
			end 
		end
		
		
		if from.PropertyMgr:HasModifier("WX_SLDJJ") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/long/fx_long002_potu01 -" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJJ",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_JJ",1,0,0)
				local a = from:GetProperty("SLD_JJ");
				if a == 1000 then
					local A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(A) do
					local d = v.Npc
					end
						if d.Camp == g_emFightCamp.Player and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc	
						world:FlyLineEffect(d.Pos, from.Pos ,0.5,
						 function(p)
						  world:PlayEffect(3, from.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Pillar Blast/EarthPillarBlast");--弹道效果设置
						end
						from.PropertyMgr:AddModifier("WX_SLDJJ_X",1,false,1,false,-1)
				
				end
		end		
		if from.PropertyMgr:HasModifier("WX_SLDJJ2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/long/fx_long002_potu01 -" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJJ2",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_JJ",1,0,0)
				local a = from:GetProperty("SLD_JJ");
				if a == 1000 then
					local A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(A) do
					local d = v.Npc
					end
						if d.Camp == g_emFightCamp.Player and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc	
						world:FlyLineEffect(d.Pos, from.Pos ,0.5,
						 function(p)
						  world:PlayEffect(3, from.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Pillar Blast/EarthPillarBlast");--弹道效果设置
						end
						if from.PropertyMgr:HasModifier("WX_SLDJJ2X") then
						from.PropertyMgr:AddModifier("WX_SLDJJ_X2",1,false,1,false,-1)
						else
						from.PropertyMgr:AddModifier("WX_SLDJJ_X",1,false,1,false,-1)
						end
					end
				if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDJJ")
				end
		end		
		if from.PropertyMgr:HasModifier("WX_SLDJJ3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/long/fx_long002_potu01 -" --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 1 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.PropertyMgr:AddModifier("WX_SLDJJ3",1,false,1,false,-1)
			from.PropertyMgr:ModifierProperty("SLD_JJ",1,0,0)
				local a = from:GetProperty("SLD_JJ");
				if a == 1000 then
					local A = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.it.Pos,1000) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(A) do
					local d = v.Npc
					end
						if d.Camp == g_emFightCamp.Player and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc	
						world:FlyLineEffect(d.Pos, from.Pos ,0.5,
						 function(p)
						  world:PlayEffect(3, from.Pos, 5)
						 end
						 , "#0D0D0DFF", nil, nil, "Effect/A/Prefabs/Pillar Blast/EarthPillarBlast");--弹道效果设置
						end
						if from.PropertyMgr:HasModifier("WX_SLDJJ2X") then
						from.PropertyMgr:AddModifier("WX_SLDJJ_X2",1,false,1,false,-1)
						else
						from.PropertyMgr:AddModifier("WX_SLDJJ_X",1,false,1,false,-1)
						end
					end
				if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDJJ")
				end
				if a == 10000 then
					from.LuaHelper:TriggerStory("WX_SLDJJ2")
				end
				if from.PropertyMgr:HasModifier("WX_SLDJJ3X") then
						npc.PropertyMgr:AddModifier("WX_SLDJJ_X3",1,false,1,false,-1)
				end
		end		
		
		if from.PropertyMgr:HasModifier("WX_SLDP") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			npc.PropertyMgr:AddModifier("WX_SLDP",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_P",1,0,0)
				local a = from:GetProperty("SLD_P");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX1",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX2",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX3",1,false,1,false,-1)
					end
				
				end
		end	
			if from.PropertyMgr:HasModifier("WX_SLDP2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			npc.PropertyMgr:AddModifier("WX_SLDP2",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_P",1,0,0)
				local a = from:GetProperty("SLD_P");
				if a == 1000 then	
					if from.PropertyMgr:HasModifier("WX_SLDP2X") then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX11",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX22",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX33",1,false,1,false,-1)
					end
					else
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX1",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX2",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX3",1,false,1,false,-1)
					end
					end
				end
					if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDP")
					end	
				
			end					
			if from.PropertyMgr:HasModifier("WX_SLDP3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			npc.PropertyMgr:AddModifier("WX_SLDP3",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_P",1,0,0)
				local a = from:GetProperty("SLD_P");
				if a == 1000 then	
					if from.PropertyMgr:HasModifier("WX_SLDP2X") then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					from.PropertyMgr:AddModifier("WX_SLDPX11",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					from.PropertyMgr:AddModifier("WX_SLDPX22",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					from.PropertyMgr:AddModifier("WX_SLDPX33",1,false,1,false,-1)
					end
					else
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX1",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX2",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX3",1,false,1,false,-1)
					end
					end
				end
					if a == 5000 then
					from.LuaHelper:TriggerStory("WX_SLDP")
					end	
					if a == 10000 then
					from.LuaHelper:TriggerStory("WX_SLDP2")
					end	
					if from.PropertyMgr:HasModifier("WX_SLDP3X") then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr:AddModifier("WX_SLDPX11",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.God then
					npc.PropertyMgr:AddModifier("WX_SLDPX22",1,false,1,false,-1)
					elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then
					npc.PropertyMgr:AddModifier("WX_SLDPX33",1,false,1,false,-1)
					end
					end
			end
			if npc.PropertyMgr:HasModifier("WX_SLDP2X") then 
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					local b = npc.ZhenQi
					if b <= 0 then
					npc.PropertyMgr:AddModifier("WX_WD",1,false,180,false,-1)
					end
					else
					local a = npc.LingV
					if a <= 0 then
					npc.PropertyMgr:AddModifier("WX_WD",1,false,180,false,-1)
					end
					end
			end		
		
		
	
		if from.PropertyMgr:HasModifier("WX_SLDL") then 
				local a = "Effect/A/Prefabs/Beams/Impact/FrostBeamImpact"
				local b = npc.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from.PropertyMgr:AddModifier("WX_SLDL",1,false,1,false,-1)
				from.PropertyMgr:ModifierProperty("SLD_L",1,0,0)
			local a = from:GetProperty("SLD_L");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
					else
					npc:AddLing(-5000)
					end
				end
		end	
		if from.PropertyMgr:HasModifier("WX_SLDL2") then 
				local a = "Effect/A/Prefabs/Beams/Impact/FrostBeamImpact"
				local b = npc.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from.PropertyMgr:AddModifier("WX_SLDL2",1,false,1,false,-1)
				from.PropertyMgr:ModifierProperty("SLD_L",1,0,0)
			local a = from:GetProperty("SLD_L");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
					else
					npc:AddLing(-5000)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDL")	
				end
					if from.PropertyMgr:HasModifier("WX_SLDL2X") then
						local ART = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Art)
						local num = WXXX:ShuXingJianCe(from.PropertyMgr.Practice.Gong.ElementKind,npc.PropertyMgr.Practice.Gong.ElementKind)
						local WXXX = GameMain:GetMod("WXXX");
						function WXXX:ShuXingJianCe(nElement,iElement)
						local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
						local num = 0
						if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
							num = 1	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
							num = 0.8	--倍数	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
							num = 2	--倍数
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
							num = 0.1
							
						end
						return num		--传回参数
						end	
						
						if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500*ART)
						else
						npc:AddLing(-5000*num*ART)
						end
					end
		end	
		if from.PropertyMgr:HasModifier("WX_SLDL3") then 
				local a = "Effect/A/Prefabs/Beams/Impact/FrostBeamImpact"
				local b = npc.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from.PropertyMgr:AddModifier("WX_SLDL3",1,false,1,false,-1)
				from.PropertyMgr:ModifierProperty("SLD_L",1,0,0)
			local a = from:GetProperty("SLD_L");
				if a == 1000 then
					if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500)
					else
					npc:AddLing(-5000)
					end
				end
				if a == 5000 then
				from.LuaHelper:TriggerStory("WX_SLDL")	
				end
				if a == 10000 then
				from.LuaHelper:TriggerStory("WX_SLDL2")
				end
					if from.PropertyMgr:HasModifier("WX_SLDL2X") and from.PropertyMgr:HasModifier("WX_SLDL3X") then	
						local ART = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Art)
						local num = WXXX:ShuXingJianCe(from.PropertyMgr.Practice.Gong.ElementKind,npc.PropertyMgr.Practice.Gong.ElementKind)
						local WXXX = GameMain:GetMod("WXXX");
						function WXXX:ShuXingJianCe(nElement,iElement)
						local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
						local num = 0
						if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
							num = 1	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
							num = 0.8	--倍数	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
							num = 2	--倍数
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
							num = 0.1
							
						end
						return num		--传回参数
						end	
						
						if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-15000*ART)
						else
						npc:AddLing(-50000*num*ART)
						end
					elseif from.PropertyMgr:HasModifier("WX_SLDL2X") then
						local ART = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Art)
						local num = WXXX:ShuXingJianCe(from.PropertyMgr.Practice.Gong.ElementKind,npc.PropertyMgr.Practice.Gong.ElementKind)
						local WXXX = GameMain:GetMod("WXXX");
						function WXXX:ShuXingJianCe(nElement,iElement)
						local XX = CS.XiaWorld.GameDefine.CheckElementRelation(nElement, iElement)
						local num = 0
						if XX == CS.XiaWorld.g_emElementRelation.Same then			--五行相同
							num = 1	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.None then		--五行无关
							num = 0.8	--倍数	
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Born then		--五行相生
							num = 2	--倍数
							
						elseif XX == CS.XiaWorld.g_emElementRelation.Contrary then	--五行相克
							num = 0.1
							
						end
						return num		--传回参数
						end	
						
						if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
							npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1500*ART)
						else
						npc:AddLing(-5000*num*ART)
						end
					end
		end	
		
		if from.PropertyMgr:HasModifier("WX_SLDL2X2") then 
				local a = 400007
				local b = from.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,from.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.IsDeath == false then--判断是否是敌人和npc
								  d.PropertyMgr:AddModifier("WX_SLDL2X21",1,false,1,false,-1)
								end	
						end	
					 end 
		end	
		if from.PropertyMgr:HasModifier("WX_SLDL2X3") then 
			if from.GongKind == CS.XiaWorld.g_emGongKind.God then
				local SM = from.LuaHelper:GetGodPopulation()
				local CS = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.SocialContact)
				local a = 400006
				local b = from.Key -- 坐标
				local c = 1 --持续时间
				WorldLua:PlayEffect(a,b, c)
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,from.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.IsDeath == false then--判断是否是敌人和npc
									if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
										d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(SM*CS)
									else
										d:AddLing(SM*CS*5)
									end
								end	
						end	
					 end 
			else
			return 0
			end
		end	
		
		
		if from.PropertyMgr:HasModifier("WX_SLDD") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				from.PropertyMgr:AddModifier("WX_SLDD",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_D",1,0,0)
				local a = 85
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) 
				local a = from:GetProperty("SLD_D");
				if a == 1000 then
				npc.PropertyMgr:AddModifier("SLD_D_X",1,false,1,false,-1)
				end
				local m = npc.PropertyMgr:FindModifier("SLD_D_X");
				if m ~= nil and m.Stack >= 9999 then
					CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				end
			
		end		
		if from.PropertyMgr:HasModifier("WX_SLDD2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				from.PropertyMgr:AddModifier("WX_SLDD2",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_D",1,0,0)
				local a = 85
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) 
				local a = from:GetProperty("SLD_D");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDD2X") then
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,3,false,-1)
					else
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,1,false,-1)
					end
				local m = npc.PropertyMgr:FindModifier("SLD_D_X");
				end
				if m ~= nil and m.Stack >= 9999 then
					CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				end
				if a == 5000 then
				npc.LuaHelper:TriggerStory("WX_SLDD")
				end
			
		end		
		if from.PropertyMgr:HasModifier("WX_SLDD3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				from.PropertyMgr:AddModifier("WX_SLDD3",1,false,1,false,-1)
				npc.PropertyMgr:ModifierProperty("SLD_D",1,0,0)
				local a = 85
				local b = npc.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) 
				local a = from:GetProperty("SLD_D");
				if a == 1000 then
					if from.PropertyMgr:HasModifier("WX_SLDD3X") then
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,6,false,-1)
					else
					npc.PropertyMgr:AddModifier("SLD_D_X",1,false,1,false,-1)
					end
				local m = npc.PropertyMgr:FindModifier("SLD_D_X");
				end
				if m ~= nil and m.Stack >= 9999 then
					CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				end
				if a == 5000 then
				npc.LuaHelper:TriggerStory("WX_SLDD")
				end
				if a == 10000 then
				npc.LuaHelper:TriggerStory("WX_SLDD2")
				end
			
		end		
		if from.PropertyMgr:HasModifier("WX_SLDD2X2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
				npc.PropertyMgr:AddModifier("WX_SLDD2X21",1,false,1,false,-1)
			
		end		
		
		
		if npc.PropertyMgr:HasModifier("XT_XTXT") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 90004 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			npc.PropertyMgr:AddModifier("XT_XTXT",1,false,1,false,-1)
			local N = npc:GetModifierStack("XT_XTXT");
			if N == 100 then
			npc.PropertyMgr:AddModifier("XT_XTXT_X",1,false,1,false,-1)
			npc.PropertyMgr:AddModifier("XT_XTXT",1,false,-100,false,-1)
			end
			
		end
		if from.PropertyMgr:HasModifier("XT_XTXT_X") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/zhulong/fx_zhulong_fennu01 Bone035" --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			
		end
	
		if npc.PropertyMgr:HasModifier("XT_LYJLXT1") and npc.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo and npc.GongKind == CS.XiaWorld.g_emGongKind.Dao then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 71 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			npc.AddModifier("XT_LYJLXT1_X")
		end
		if from.PropertyMgr:HasModifier("XT_LYJLXT1") and from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Huo and from.GongKind == CS.XiaWorld.g_emGongKind.Dao then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = "Effect/gsq/Prefab/feng/fx_fenghuang_jianglin01 Bone018 1" --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.AddModifier("XT_LYJLXT1_X")
			
		end
		
		if from.PropertyMgr:HasModifier("XT_STSXT1") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 54 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			from.LuaHelper:AddPracticeResource("Ling",10000);
			
		end
		if from.PropertyMgr:HasModifier("XT_JLXT_X") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 48 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local A = from.LingV
			local B = npc.LingV
			local C = from.ZhenQi
			local D = npc.ZhenQi
			if B ~= nil and B < A then
			npc.LuaHelper:AddPracticeResource("Ling",-1000);
			elseif D ~= nil and D < C then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-1000)
			end
			
		end

		
		if from.PropertyMgr:HasModifier("XT_XXGXT2_X") then 
			local a = 60 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				local N1 = from:GetProperty("BodyPratice_MaxZhenQi");
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N1*0.05)
				else
					npc.AddLing(-N1*0.5)
				end
			else
				local N1 = from:GetProperty("NpcLingMaxValue");
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
					npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N1*0.005)
				else
					npc.AddLing(-N1*0.05)
				end
			end
		end
		
		--丧尸
		if from.PropertyMgr:HasModifier("WX_SD_1") or from.PropertyMgr:HasModifier("WX_SD_2") or from.PropertyMgr:HasModifier("WX_SD_3") then  --判定攻击者拥有buff则
			local m1 = from.PropertyMgr:FindModifier("WX_SD_1");
			local m2 = from.PropertyMgr:FindModifier("WX_SD_2");
			local m3 = from.PropertyMgr:FindModifier("WX_SD_3");
			local m4 = npc.PropertyMgr:FindModifier("WX_TBDXQ");
			local m5 = npc.PropertyMgr:FindModifier("WX_JJNY");
			local a = 58 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local D = npc:GetProperty("AbilityLvAddV")
			if m4 ~= nil or m5 ~= nil then
				local x = 48 --或者string,这个是特效编号或路径
				local y = npc.Key -- 坐标
				local z = 5 --持续时间
				WorldLua:PlayEffect(x,y, z) --播放特效
			else
				if npc.IsDisciple == false and D >= 66 then
					local x = 48 --或者string,这个是特效编号或路径
					local y = npc.Key -- 坐标
					local z = 5 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
				elseif npc.IsDisciple == false and D < 10 then
					if m1 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,3,false,-1)
					elseif m2 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,6,false,-1)
					elseif m3 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,9,false,-1)
					end
				elseif npc.IsDisciple == false and D < 30 then
					if m1 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,2,false,-1)
					elseif m2 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,4,false,-1)
					elseif m3 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,6,false,-1)
					end
				
				elseif npc.IsDisciple == true then
					if m1 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,6,false,-1)
					elseif m2 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,12,false,-1)
					elseif m3 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,18,false,-1)
					end
				
				else
					if m1 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X1",1,false,1,false,-1)
					elseif m2 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X2",1,false,2,false,-1)
					elseif m3 ~= nil then
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,3,false,-1)
					end
				end
			end
		end
		
		if from.PropertyMgr:HasModifier("SSW_DX") then  --判定攻击者拥有buff则
			local a = 60 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			local D = npc:GetProperty("AbilityLvAddV")
			if m4 ~= nil or m5 ~= nil  then
					local x = 48 --或者string,这个是特效编号或路径
					local y = npc.Key -- 坐标
					local z = 5 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,3,false,-1)
			else
			
					npc.PropertyMgr:AddModifier("WX_SD_X3",1,false,8,false,-1)
				
			end
		end
	
		--血统
		if from.PropertyMgr:HasModifier("XT_DTSXT") then  --判定攻击者拥有buff则
			local a = 83 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间
			local N2 = from:GetProperty("BodyPratice_MaxZhenQi");
			WorldLua:PlayEffect(a,b, c) --播放特效
			if N2 ~= nil then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N2*0.08)
				else
				npc.LuaHelper:AddPracticeResource("Ling",-N2*0.08);
				end
			else
			return 0
			end
		end
		if from.PropertyMgr:HasModifier("XT_DTSXT2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 83 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间

			local N2 = from:GetProperty("BodyPratice_MaxZhenQi");
			WorldLua:PlayEffect(a,b, c) --播放特效
			if N2 ~= nil then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N2*0.13)
				else
				npc.LuaHelper:AddPracticeResource("Ling",-N2*0.13);
				end
			else
			return 0
			end
		end
		if from.PropertyMgr:HasModifier("XT_DTSXT3") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 83 --或者string,这个是特效编号或路径
			local b = from.Key -- 坐标
			local c = 5 --持续时间

			local N2 = from:GetProperty("BodyPratice_MaxZhenQi");
			WorldLua:PlayEffect(a,b, c) --播放特效
			if N2 ~= nil then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-N2*0.18)
				else
				npc.LuaHelper:AddPracticeResource("Ling",-N2*0.18);
				end
			else
			return 0
			end
		end
		
		
		if from.PropertyMgr:HasModifier("WX_XLXT") then 
			local GL = WorldLua:RandomFloat(0,100)
			if GL <= 10 then
				CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				local a = "Effect/gsq/Prefab/long/fx_long002_tianyao_01" --或者string,这个是特效编号或路径
				local b = from.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				local m = npc.PropertyMgr:FindModifier("WX_BOSS");
				if m ~= nil and GL <= 1 then
				CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
				else
				return 0 
				end
			else
				return 0 
			end
		end

		if from.PropertyMgr:HasModifier("WX_XLXT2") then 
			local GL = WorldLua:RandomFloat(0,100)
			local m = npc.PropertyMgr:FindModifier("WX_BOSS");
			if m ~= nil and GL <= 3 then
			CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
			else
				if GL <= 10 then
					local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
					a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,30) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(a) do
					local d = v.Npc
					
						if d ~= nil then
								if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and m == nil then--判断是否是敌人和npc
								CS.XiaWorld.ThingMgr.Instance:RemoveThing(d,false,true)
								local a = "Effect/gsq/Prefab/long/fx_long002_tianyao_01" --或者string,这个是特效编号或路径
								local b = from.Key -- 坐标
								local c = 5 --持续时间
								WorldLua:PlayEffect(a,b, c) --播放特效
								else
								return 0
								end
						else
						return 0
						
						end
					end
				else
				return 0 
				end
			end
		end
		
		if from.PropertyMgr:HasModifier("WX_XLXT2") then 
			local GL = WorldLua:RandomFloat(0,100)
			local m = npc.PropertyMgr:FindModifier("WX_BOSS");
			if m ~= nil and GL <= 5 then
			CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
			else
				if GL <= 10 then
					local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
					a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,self.it.Pos,30) --获取NPC坐标指定范围内指定阵营敌人
					for k,v in pairs(a) do
					local d = v.Npc
					
						if d ~= nil then
								if d.Camp == g_emFightCamp.Enemy and d.IsDeath == false and m == nil then--判断是否是敌人和npc
								CS.XiaWorld.ThingMgr.Instance:RemoveThing(d,false,true)
								local a = "Effect/gsq/Prefab/long/fx_long002_tianyao_01" --或者string,这个是特效编号或路径
								local b = from.Key -- 坐标
								local c = 5 --持续时间
								WorldLua:PlayEffect(a,b, c) --播放特效
								else
								return 0
								end
						else
						return 0
						
						end
					end
				else
				return 0 
				end
			end
		end
	
		if from.PropertyMgr:HasModifier("WX_YLXT1") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");		
		from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 25 then
				from.PropertyMgr:AddModifier("WX_CM",1,false,2,false,-1)
				local a = "EEffect/gsq/Prefab/long/fx_long002_tianyao_02" --或者string,这个是特效编号或路径
				local b = from.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c) --播放特效
				from:RemoveModifier("WX_GJJC");
				end
		end
		if from.PropertyMgr:HasModifier("WX_YLXT2") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");	
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 25 then
				from.PropertyMgr:AddModifier("WX_JX",1,false,2,false,-1)
				local a = "EEffect/gsq/Prefab/long/fx_long002_tianyao_02" --或者string,这个是特效编号或路径
				local b = from.Key -- 坐标
				local c = 5 --持续时间
				WorldLua:PlayEffect(a,b, c)
				from:RemoveModifier("WX_GJJC");
				end
		end
		
		if from.PropertyMgr:HasModifier("WX_PSXT") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 15 then
				from.PropertyMgr:AddModifier("WX_PSXT_X",1,false,3,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
			else
			 return 0
			end
		end
		if from.PropertyMgr:HasModifier("WX_PSXT_X") then 
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			L = from.map.GetLing(from.Key)
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-L*0.04)
			elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			npc.AddLing(-L*0.08)	
			else
			 npc:AddDamage("Body","Tu_Petrifaction1",1,false);
			end
			from.PropertyMgr:AddModifier("WX_PSXT_X",1,false,-1,false,-1)
			if m.Stack == 3 then
				from:RemoveModifier("WX_PSXT_X");
			end
		end
		if npc.PropertyMgr:HasModifier("WX_PSXT") then 
			if from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui or from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-160)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-400)	
				end
			else
			 return 0
			end
		end	
		
		if from.PropertyMgr:HasModifier("WX_PSXT1") then
		local m = from.PropertyMgr:FindModifier("WX_GJJC");		
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 15 then
				from.PropertyMgr:AddModifier("WX_PSXT1_X",1,false,3,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
			else
			 return 0
			end
		end
		if from.PropertyMgr:HasModifier("WX_PSXT1_X") then 
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			L = from.map.GetLing(from.Key)
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-L*0.15)
			elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			npc.AddLing(-L*0.2)	
			else
			 npc:AddDamage("Body","Tu_Petrifaction1",1,false);
			end
			from.PropertyMgr:AddModifier("WX_PSXT1_X",1,false,-1,false,-1)
			if m.Stack == 3 then
				from:RemoveModifier("WX_PSXT1_X");
			end
		end
		if npc.PropertyMgr:HasModifier("WX_PSXT1") then 
			if from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui or from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-800)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-4000)	
				end
			else
			 return 0
			end
		end	

		if from.PropertyMgr:HasModifier("WX_PSXT2") then 
		local m = from.PropertyMgr:FindModifier("WX_GJJC");
			if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
				from.PropertyMgr:AddModifier("WX_GJJC",1,false,1,false,-1)
				if m.Stack == 15 then
				from.PropertyMgr:AddModifier("WX_PSXT2_X",1,false,3,false,-1)
				from:RemoveModifier("WX_GJJC");
				end
			else
			 return 0
			end
		end
		if from.PropertyMgr:HasModifier("WX_PSXT2_X") then 
			local a = 80 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 3 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效
			L = from.map.GetLing(from.Key)
			if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-L*0.4)
			elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
			npc.AddLing(-L*0.5)	
			else
			 npc:AddDamage("Body","Tu_Petrifaction1",1,false);
			end
			from.PropertyMgr:AddModifier("WX_PSXT2_X",1,false,-1,false,-1)
			if m.Stack == 3 then
				from:RemoveModifier("WX_PSXT2_X");
			end
		end
		if npc.PropertyMgr:HasModifier("WX_PSXT2") then 
			if from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Shui or from.PropertyMgr.Practice.Gong.ElementKind == CS.XiaWorld.g_emElementKind.Mu then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-8000)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-40000)	
				end
			else
			 return 0
			end
		end	
	
		if from.PropertyMgr:HasModifier("XT_YTXT") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 86 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效

				World.map:StrikePoint(b , 5000, 1)

		end
		if from.PropertyMgr:HasModifier("XT_YTXT1") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 86 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效

				World.map:StrikePoint(b , 30000, 1)

		end
		if from.PropertyMgr:HasModifier("XT_YTXT2") then  --判定攻击者拥有buff则,建议不要是仙修，因为法宝也会触发。。。。。
			local a = 86 --或者string,这个是特效编号或路径
			local b = npc.Key -- 坐标
			local c = 5 --持续时间
			WorldLua:PlayEffect(a,b, c) --播放特效

				World.map:StrikePoint(b , 100000, 1)

		end
		
		
	end	
end


	
		
		
		
		
		
		
		
		
		
		
		
		