--蛟龙技能天妖化血
local tbTable = GameMain:GetMod("_SkillAction");
local tbSkill = tbTable:GetSkill("MS_QLZXY");

local BASE_VALUE = 9999
local BODY_SHUILING = 4;--每个尸体补充水灵
local BODY_LING = 100000;--每个尸体补充灵气

function tbSkill:Init()
	self.data = {};
end

function tbSkill:GetAnimation()
	return "tianyao";
end

function tbSkill:GetSingTime()
	return 6;
end

function tbSkill:GetName()
	return XT("千里诛仙");
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/tianyao");	
end

function tbSkill:Cast()
	local npc = self.bind;		
	WorldLua:PlayEffect("Effect/gsq/Prefab/long/fx_long002_tianyao_02", npc.Pos, 5);
	local targets = Map.Things:GetNpcsLua(function(n)
		return n.IsCorpse and n.IsBoss == false;
	end);
	WorldLua:CameraShake(3, 0.1);
	local bip = npc:GetBip("biped_bone146");
	for i = 0, targets.Count-1, 1 do
		local target = targets[i];
		target.CorpseTime = 0.01;
		WorldLua:PlayEffect("Effect/gsq/Prefab/long/fx_long002_tianyao_01", target.ViewPos, 5);
		WorldLua:FlyLineEffect(target.Pos, npc.Pos, WorldLua:RandomFloat(2,5), nil, "#551B92", nil, bip, "Effect/System/FlyLineBig");	
	end
	npc:AddModifier("MS_JiSiGongYang", 1, false, targets.Count * BODY_SHUILING);
	npc:AddLing(targets.Count * BODY_LING);
end

--数值加值
function tbSkill:GetValueAddv(skilldef, fightbody, from)
 
  local layers = 1
  
    local mod = fightbody.Npc.PropertyMgr:FindModifier("QLZXY")
    if mod then
      layers = layers + mod.Stack
    local zhen = ZhenMgr:GetZhen(fightbody.Npc)
    if zhen then
     layers = zhen.npcInZhen.Count * 2^layers
    end
    local power = BASE_VALUE * layers
	else
    return power
	end
end

function tbSkill:Step(dt,duration)		
	if duration >= 5 then
		return 1;
	else
		return 0;
	end;
end

function tbSkill:Leave(did)

end

