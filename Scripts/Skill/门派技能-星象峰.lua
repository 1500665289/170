
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XXFKJ3_4")


function tbSkill:GetValueAddv(skilldef, fightbody, from)
	local JF = GameMain:GetMod("ZTWP"):GetItemCount("Item_PTJB")
	  return (JF*0.05)

	end





local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XXFKJ4_4")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XXFKJ4_4_X")
	
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XXFKJ6_2")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XXFKJ6_2_X")
	
	end
end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XXFKJ7_2")

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XXFKJ7_2_X")
	
	end
end










