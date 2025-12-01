
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("DJG_MOVE")


function tbSkill:Init()
	
end

function tbSkill:GetAnimation()
	return "Run";
end

function tbSkill:GetSingTime()
	return 5;
end

function tbSkill:GetName()
	return XT("移动");
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/move");
end


function tbSkill:Cast()
	local me = self.bind;
	local p = Map:GetRandomInLifeAreaSafe(28);
	if p == 0 then
		p = Map:GetRandomInLifeArea();
	end
	me:SetPostion(p);
	me:PlayAnimation("Run",false);
	WorldLua:CameraShake(0.25, 0.5);
end

function tbSkill:Step(dt,duration)
	if duration >= 7 then
		return 1;
	end
	return 0;
end

function tbSkill:Leave(did)
	
end