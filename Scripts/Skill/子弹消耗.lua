
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TYJJQ")


function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
					local DHLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = (FSLV + FTLV)-DHLV
					local GL1 = WorldLua:RandomInt(0,100)
					local m = from.PropertyMgr:FindModifier("WX_GJJC")
		if GL1 <= GL then
				npc:AddDamage("Barin","BT",1,false);
		else
			return 0
		end
	end
end

function tbSkill:GetValueAddv(skilldef, fightbody, from)
	
end

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TYZJQ")


function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
					local DHLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = (FSLV + FTLV)-DHLV +30
					local GL1 = WorldLua:RandomInt(0,100)
					local m = from.PropertyMgr:FindModifier("WX_GJJC")
		if GL1 <= GL then
				npc:AddDamage("Barin","BT",1,false);
		else
			return 0
		end
	end
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
	
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TYCFQ")
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
					local DHLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = (FSLV + FTLV)-DHLV
					local GL1 = WorldLua:RandomInt(0,100)
					local m = from.PropertyMgr:FindModifier("WX_GJJC")
		if GL1 <= GL then
				npc:AddDamage("Barin","BT",1,false);
		else
			return 0
		end
	end
	if World:GetFlag(100000395) == 1 then
				if npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
						npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(-100)
					else 
						npc:AddLing(-200)		
					end
				else
				return 0
	end
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
	
end

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TYSQ")


function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc 
					local DHLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = (FSLV + FTLV)-DHLV
					local GL1 = WorldLua:RandomInt(0,100)
					local m = from.PropertyMgr:FindModifier("WX_GJJC")
		if m ~= nil then
			if m.Stack == 30 or GL1 <= GL then
				npc:AddDamage("Barin","BT",1,false);
				npc:RemoveModifier("WX_GJJC")
			else
				return 0
			end
			
		end
	end
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
				if World:GetFlag(100000394) == 1 then
				return 200
				else
				return 0
				end
	end
end

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("TYBQ")


function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
					local DHLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FSLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
					local HDLV = npc.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Barrier)
					local FTLV = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.Fight)
					local GL = (FSLV + FTLV)-DHLV
					local GL1 = WorldLua:RandomInt(0,100)
					local m = from.PropertyMgr:FindModifier("WX_GJJC")
		if GL1 <= GL then
				npc:AddDamage("Barin","BT",1,false);
		else
			return 0
		end
	end
end


function tbSkill:GetValueAddv(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
		local m1 = from.PropertyMgr:FindModifier("WXQX_AG25")
		if m1 ~= nil then
				return 400
			else
			return 0
		end
	end
end
