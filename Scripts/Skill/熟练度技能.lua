local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_F")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody ~= nil and fightbody.Npc ~= nil then
	local npc = fightbody.Npc
		if from.PropertyMgr:HasModifier("WX_SLDF2X") then
			npc:AddModifier("WX_SLDF2X1")
		elseif from.PropertyMgr:HasModifier("WX_SLDF3X") then
			npc:AddModifier("WX_SLDF3X1")
		end
		
	end
end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("FXLZ")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if from.PropertyMgr:HasModifier("WX_SLDDJ") == false and from.PropertyMgr:HasModifier("WX_SLDDJ2") == false and from.PropertyMgr:HasModifier("WX_SLDDJ3") == false then
	from.FightBody:RemoveSkill(FXLZ)
	else
	return 0
	end
end

--技能被释放
function tbSkill:GetValueAddv(skilldef, fightbody, from)

	if fightbody ~= nil and fightbody.Npc ~= nil then
	local npc = fightbody.Npc
	  local N1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
		if from.PropertyMgr:HasModifier("WX_SLDDJ2X") then
		return (N1*100)*3
		elseif from.PropertyMgr:HasModifier("WX_SLDDJ3X") then
		return (N1*100)*9
		else
		return (N1*100)*1.5
		end
	  
	end
	
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("CC")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local R = WorldLua:RandomInt(0,100)
	local CD = WorldLua:RandomFloat(0,1)
	local npc = fightbody.Npc
	if from.PropertyMgr:HasModifier("WX_SLDQ2X") then
		if R >= 60 then
		npc:AddDamage("Heart","CQSH",CD,false);
		end
	elseif from.PropertyMgr:HasModifier("WX_SLDQ3X") then
		if R >= 30 then
		npc:AddDamage("Heart","CQSH",CD,false);
		end
	else
		if R >= 80 then
		npc:AddDamage("Heart","CQSH",CD,false);
		end
	end--伤害类型，部位--
	end
	if from.PropertyMgr:HasModifier("WX_SLDQ") == false and from.PropertyMgr:HasModifier("WX_SLDQ2") == false and from.PropertyMgr:HasModifier("WX_SLDQ3") == false then
	from.FightBody:RemoveSkill(CC)
	else
	return 0
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("CC2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local R = WorldLua:RandomInt(0,100)
	local CD = WorldLua:RandomFloat(0,1)
	local npc = fightbody.Npc
	local fabao = from:GetFirstAtkFabao() --获取第一个装备的法宝。
		if from.PropertyMgr:HasModifier("WX_SLDQ3X2") then
			if fabao ~= nil then
			local AT = fabao.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower)
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
				npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-AT*1000)
				elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
				npc.AddLing(-AT*3000)	
				end
			end
		ThingMgr:RemoveThing(fabao, true, false) --移除这个法宝。
		else
		return 0
		end
	end
	if from.PropertyMgr:HasModifier("WX_SLDQ3") == false then
	from.FightBody:RemoveSkill(CC2)
	else
	return 0
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_J")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	if from.PropertyMgr:HasModifier("WX_SLDJ2X") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
		 npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-100000)
		 elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
		 npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-20000)
		 end
	elseif from.PropertyMgr:HasModifier("WX_SLDG3X") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
		 npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-400000)
		 elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
		 npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-50000)
		 end
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
		 npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-50000)
		 elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
		 npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-10000)
		 end
	 end
	 end
	 if from.PropertyMgr:HasModifier("WX_SLDJ") == false and from.PropertyMgr:HasModifier("WX_SLDJ2") == false and from.PropertyMgr:HasModifier("WX_SLDJ3") == false then
	from.FightBody:RemoveSkill(SLD_J)
	else
	return 0
	end
end
--技能在fightbody身上生效
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	local M1 = from:GetProperty("MindStateBaseValue");
	local M2 = npc:GetProperty("MindStateBaseValue");
		if from.PropertyMgr:HasModifier("WX_SLDJ2X") then
			return (M1*10000)
		elseif from.PropertyMgr:HasModifier("WX_SLDJ3X") then
			if M1 >= M2*8 then
			npc.PropertyMgr:AddModifier("WX_HM",1,false,5,false,-1)
			end
			return (M1*10000)
		end
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_G")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	if from.PropertyMgr:HasModifier("WX_SLDG2X") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
		 npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-100000)
		 elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
		 npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-20000)
		 end
	elseif from.PropertyMgr:HasModifier("WX_SLDG3X") then
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
		 npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-400000)
		 elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
		 npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-50000)
		 end
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Dao or npc.GongKind == CS.XiaWorld.g_emGongKind.God then
		 npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-50000)
		 elseif npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
		 npc.PropertyMgr:ModifierProperty("BodyPratice_MaxZhenQi",-10000)
		 end
	 end
	 end
	 if from.PropertyMgr:HasModifier("WX_SLDG") == false and from.PropertyMgr:HasModifier("WX_SLDG2") == false and from.PropertyMgr:HasModifier("WX_SLDG3") == false then
	from.FightBody:RemoveSkill(SLD_G)
	else
	return 0
	end
end

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_D")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
		if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
			local ZQSX = npc.MaxZhenQi				
			npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-ZQSX)	
		else
			local LLSX = npc.MaxLing
			npc:AddLing(-LLSX)
		end 
	end
end

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_G2")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	if from.PropertyMgr:HasModifier("WX_SLDG2X2") then
		npc:AddModifier("WX_SLDG2X21")
	 end
	 end
	if from.PropertyMgr:HasModifier("WX_SLDG2") == false then
		from.FightBody:RemoveSkill(SLD_G2)
		else
		return 0
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_G3")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	if from.PropertyMgr:HasModifier("WX_SLDG3X2") then
		npc:AddModifier("WX_SLDG3X21")
	 end
	 end
	if from.PropertyMgr:HasModifier("WX_SLDG3") == false then
		from.FightBody:RemoveSkill(SLD_G3)
		else
		return 0
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_FZ")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	 npc.PropertyMgr:AddModifier("WX_CM",1,false,3,false,-1)
	 end
	 
	if from.PropertyMgr:HasModifier("WX_SLDFZ2X") then
		npc.PropertyMgr:AddModifier("WX_JXT",1,false,30,false,-1)
	elseif from.PropertyMgr:HasModifier("WX_SLDFZ3X") then
		npc.PropertyMgr:AddModifier("WX_JX",1,false,30,false,-1)
		npc.PropertyMgr:AddModifier("WX_JXT",1,false,30,false,-1)
		local SF1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
		local SF2 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
		if SF1 >= SF2*20 then
			npc.PropertyMgr:AddModifier("WX_HM",1,false,10,false,-1)
		end
	end
	if from.PropertyMgr:HasModifier("WX_SLDFZ") == false and from.PropertyMgr:HasModifier("WX_SLDFZ2") == false and from.PropertyMgr:HasModifier("WX_SLDFZ3") == false then
	from.FightBody:RemoveSkill(SLD_FZ)
	else
	return 0
	end
end

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_FZ2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	 npc.PropertyMgr:AddModifier("WX_SHJS",1,false,20,false,-1)
	 npc.PropertyMgr:AddModifier("WX_SLDFZ3X31",1,false,1,false,-1)
	 npc.PropertyMgr:AddModifier("WX_JX",1,false,15,false,-1)
		npc.PropertyMgr:AddModifier("WX_JXT",1,false,15,false,-1)
	 end
	if from.PropertyMgr:HasModifier("WX_SLDFZ3") == false then
	from.FightBody:RemoveSkill(SLD_FZ2)
	else
	return 0
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_JJ")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	local SJBF = {"WX_SHJS","WX_HM","WX_JXT","WX_CM","WX_JX","WX_WXKXJ","WX_SJN_1","WX_SJN_2","WX_SJN_3","WX_SJN_4","WX_SJN_5","WX_SJN_6",
					"WX_SJN_7","WX_SJN_8","WX_SX1","WX_SX2","WX_SX3","WX_SX4","WX_STX1","WX_STX2","WX_STX3","WX_STX4","WX_STX5","WX_STX6"
					,"WX_STX7","WX_STX8","WX_STX9","WX_STX10","WX_STX11","WX_STX12","WX_STX13","WX_STX14","WX_STX15","WX_SM"}
	local SJBFR = WorldLua:RandomInt(0,#SJBF+1)
	 npc.PropertyMgr:AddModifier(""..SJBF[SJBFR].."",1,false,1,false,-1)
	 end
	if from.PropertyMgr:HasModifier("WX_SLDJJ2") == false then
	from.FightBody:RemoveSkill(SLD_JJ)
	else
	return 0
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SLD_JJ")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	CS.XiaWorld.ThingMgr.Instance:RemoveThing(from,false,true)
	WorldLua:PlayEffect(200003, from.Pos, 5);
	CS.XiaWorld.ThingMgr.Instance:RemoveThing(npc,false,true)
	WorldLua:PlayEffect(200004, npc.Pos, 5);
	WorldLua:CameraShake(2, 0.5);
	 end
	
end





