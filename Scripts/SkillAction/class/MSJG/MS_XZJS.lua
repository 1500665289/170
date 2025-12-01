
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_XZJS")

local FANSHI_TIME = 3;--多少秒后反噬

function tbSkill:Init()
	self.data = {};
end

function tbSkill:GetAnimation()
	return "fansi";
end

function tbSkill:GetSingTime()
	return 0.75;
end

function tbSkill:GetName()
	return XT("反噬");
end


function tbSkill:Enter()
	local npc = self.bind;
	local target = FightMgr:GetRandomFightBody(self.bind, CS.XiaWorld.Fight.g_emFightCamp.Player, CS.XiaWorld.Fight.g_emFightBodyType.Npc, nil, 
	function(t)
		if t.FightBody.IsFighting and t:HasAtkFabao() then
			return true;
		end
		return false;
	end);
	if target ~= nil then
		self.data.targetid = target.ID;
		npc:Face2Pos(target.Key, false);
	end
end

function tbSkill:Cast()
	local npc = self.bind;
	  if self.data.targetid ~= nil then
		local target = ThingMgr:FindThingByID(self.data.targetid);
		if target ~= nil then
			WorldLua:FlyLineEffect(npc.Pos, target.Pos, 0.6, nil, "#551B92", npc:GetBip("biped R Hand"), target:GetBip("Root"), "Effect/System/FlyLineBig");	
			target:AddModifier("MS_XZJS", self.bind:GetProperty("NpcFight_SpellPowerAddP"), false, 1, FANSHI_TIME);
		end
	  end
end

function tbSkill:Step(dt,duration)	
	if duration > 1.7 then
		return 1;
	end
	return 0;
end

function tbSkill:Leave(did)

end

function tbSkill:OnGetSaveData()
	return self.data;
end

function tbSkill:OnLoadData(tbData)
	self.data = tbData;
end