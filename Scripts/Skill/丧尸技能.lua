
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("SS_XM")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	local npc = fightbody.Npc
	local m2 = from.PropertyMgr:FindModifier("WX_XM1");
	local m3 = from.PropertyMgr:FindModifier("WX_XM2");
	local m1 = from.PropertyMgr:FindModifier("WX_XM");
	local m4 = npc.PropertyMgr:FindModifier("WX_TBDXQ");
	
	if fightbody and fightbody.Npc then
	if m4 ~= nil then
			if m3 ~= nil then
				npc:AddModifier("SS_XMT2_1")
			elseif m2 ~= nil then
				npc:AddModifier("SS_XMT1_1")
			else
				npc:AddModifier("SS_XMT_1")
			end
	else
			if m3 ~= nil then
				npc:AddModifier("SS_XM2_1")
			elseif m2 ~= nil then
				npc:AddModifier("SS_XM1_1")
			else
				npc:AddModifier("SS_XM_1")
			end
	end
	
	
	end
	end
	


























