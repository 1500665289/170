
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("DJG_NEXT")

function tbSkill:Init()
	self.data = {};
end

function tbSkill:GetAnimation()
	return "Free";
end

function tbSkill:GetSingTime()
	return 18;
end

function tbSkill:GetName()
	return XT("咆哮");
end

function tbSkill:Enter()

	local npc = self.bind;
	self.effect = npc:BindEffect("Effect/gsq/Prefab/long/fx_long002_nuhou biped Head","Bip01 Head", 5);
	self.data.targetp = World.map:GetRandomInLifeArea();
	npc:Face2Pos(self.data.targetp);
	WorldLua:CameraShake(4, 0.2);
	npc:AddModifier("DJG_JD2", 1, false, Count);
end

function tbSkill:Cast()
	if self.effect ~= nil then
		ResourceLoader:Recycle(self.effect);
		self.effect = nil;
	end
	local npc = self.bind;
	
	npc:DoCastSkill("DJG_PX", self.data.targetp, 0, nil, npc:GetBipPosition("biped_bone149"));
	me:PlayAnimation("yidong02",false);
	WorldLua:CameraShake(0.5, 0.2);
	
end

--技能产生的子弹在pos点爆炸
function tbSkill:MissileBomb(skilldef, pos, from)	

end

--数值加值
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	return 0
end

--飞行检测
function tbSkill:FlyCheck(skilldef, keys, from)
	return 0
end