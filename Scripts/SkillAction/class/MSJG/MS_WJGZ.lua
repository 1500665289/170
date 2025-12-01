--蛟龙技能泽国
local tbTable = GameMain:GetMod("_SkillAction");
local tbSkill = tbTable:GetSkill("MS_WJGZ");

function tbSkill:Init()
	self.data = {};
end

function tbSkill:GetAnimation()
	return "zeguo";
end

function tbSkill:GetSingTime()
	return 4;
end

function tbSkill:GetName()
	return XT("万剑归一");
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/zeguo");
	WorldLua:PlayEffect("Effect/gsq/Prefab/long/fx_long002_zeguo_xuli", self.bind.Pos, 50);
end

function tbSkill:Cast()
	
end

function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
      npc:AddModifier("MS_WJGZ")
	end
end

function tbSkill:Leave(did)

end

function tbSkill:OnGetSaveData()
	return self.data;
end

function tbSkill:OnLoadData(tbData)
	self.data = tbData;
end