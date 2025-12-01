--蛟龙技能暴雨术
local tbTable = GameMain:GetMod("_SkillAction");
local tbSkill = tbTable:GetSkill("MS_PJ");


function tbSkill:Init()
	self.data = {};
end

function tbSkill:GetAnimation()
	return "Free";
end

function tbSkill:GetSingTime()
	return 0.5;
end

function tbSkill:GetName()
	return XT("魔神气息");
end


function tbSkill:Enter()
	WorldLua:BeginWeather("MS_XZZX", true, self.bind.ID, false, self.bind);
end

function tbSkill:Cast()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/hou1");
end

function tbSkill:Step(dt,duration)	
	return 1;
end

function tbSkill:Leave(did)

end
