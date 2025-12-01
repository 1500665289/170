


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_CM")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	npc:AddModifier("WX_CM")
	
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_CH")



--技能在fightbody身上生效
function tbSkill:GetValueAddv(skilldef, fightbody, from)

	local BJ = WorldLua:RandomInt(0,100)
	if BJ >= 90 then
	if fightbody ~= nil and fightbody.Npc ~= nil then
      local power1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
	  
      return 300*power1
	  
	end
	else
		return
	end

end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_MGB")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	npc:AddModifier("WX_MGB_1")
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-25000)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					else 
						d:AddLing(-50000)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					end
				
			world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(43, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, 9);--弹道效果设置
			 end
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_MGB_1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	npc:AddModifier("WX_MGB_2")
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-25000*0.9)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					else 
						d:AddLing(-50000*0.9)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					end
				
			world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(43, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, 9);--弹道效果设置
			 end
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_MGB_2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	npc:AddModifier("WX_MGB_3")
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-25000*0.8)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					else 
						d:AddLing(-50000*0.8)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					end
				
			world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(43, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, 9);--弹道效果设置
			 end
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_MGB_3")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	npc:AddModifier("WX_MGB_4")
	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-25000*0.7)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					else 
						d:AddLing(-50000*0.7)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					end
				
			world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(43, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, 9);--弹道效果设置
			 end
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_MGB_4")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then

	local NPCEM = Map.Things:GetActiveNpcs(g_emNpcRaceType.Wisdom,g_emFightCamp.Enemy,nil)
	local d = NPCEM[WorldLua:RandomInt(0,NPCEM.Count)]
			if d.Camp == g_emFightCamp.Enemy and d.IsDisciple == true and d.IsDeath == false then--判断是否是敌人和npc
				
					if d.GongKind == CS.XiaWorld.g_emGongKind.Body then
						d.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-25000*0.6)
							if d.ZhenQi <= 5000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					else 
						d:AddLing(-50000*0.6)
							if d.LingV <= 1000000 then
							d:AddDamage("TheWholeBody","BodyPractice_Tu_Petrifaction2",0.4,false);
							d:AddDamage("TheWholeBody","BodyPractice_Mu_Failure",0.5,false);
							end	

					end
				
			world:FlyLineEffect(npc.Pos, d.Pos ,0.8,
			 function(p)
			  world:PlayEffect(43, d.Pos, 5)
			 end
			 , "#0D0D0DFF", nil, nil, 9);--弹道效果设置
			 end
	end
end











