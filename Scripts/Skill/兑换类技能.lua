

local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_JN_1_1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	npc:AddModifier("WX_CM")
	
	end
end















