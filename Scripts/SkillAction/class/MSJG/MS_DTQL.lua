
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_DTQL")


--技能被释放
function tbSkill:Cast(skilldef, from)
  local npc = self.bind;
  npc:AddLing(npc.MaxLing);
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
      npc:AddModifier("DTQL")
	end
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
--威压与威慑共用
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_DT_1")

function tbSkill:Enter()	
	local target = ThingMgr:FindThingByID(self.data.targetid);
		if target ~= nil then
	WorldLua:PlayEffect("Effect/gsq/Prefab/long/fx_long002_potu01 -", self.bind.Pos, 5);
	end
end


--技能被释放
function tbSkill:Cast(skilldef, from)
  local npc = self.bind;
  npc:AddLing(npc.MaxLing);
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
      npc:AddModifier("MS_DT_1")
	end
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
--震颤
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_DC_1")


--技能被释放
function tbSkill:Cast(skilldef, from)
  local npc = self.bind;
  npc:AddLing(npc.MaxLing);
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/shuilei");
	local npc = self.bind;
	self.effect = npc:BindEffect("Effect/gsq/Prefab/long/fx_long002_shuilei_02","biped_bone149", 0);
	self.data.targetp = World.map:GetRandomInLifeArea();
	npc:Face2Pos(self.data.targetp);
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
      npc:AddModifier("MS_DC_1")
	end
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

--百仙印（添加千里诛仙印标记）
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_BXY")


--技能被释放
function tbSkill:Cast(skilldef, from)
  local npc = self.bind;
  npc:AddLing(npc.MaxLing);
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/shuilei");
	local npc = self.bind;
	self.effect = npc:BindEffect("Effect/gsq/Prefab/long/fx_long002_zhenshui01","biped_bone149", 0);
	self.data.targetp = World.map:GetRandomInLifeArea();
	npc:Face2Pos(self.data.targetp);
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
      npc:AddModifier("QLZXY")
	end
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

--荒天穷地
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_HTQD")


--技能被释放
function tbSkill:Cast(skilldef, from)
  local npc = self.bind;
  npc:AddLing(npc.MaxLing * 0.1);
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
      npc:AddModifier("MS_HTQD")
	end
end

--技能产生的子弹在pos点爆炸
function tbSkill:MissileBomb(skilldef, pos, from)	

end
function tbSkill:Cast()
	local npc = self.bind;
	  if self.data.targetid ~= nil then
		local target = ThingMgr:FindThingByID(self.data.targetid);
		if target ~= nil then
			WorldLua:FlyLineEffect(npc.Pos, target.Pos, 0.6, nil, "#551B92", npc:GetBip("biped R Hand"), target:GetBip("Root"), "Effect/System/FlyLineBig");	
			target:AddModifier("MS_HTQD");
		end
	  end
end
--数值加值
function tbSkill:GetValueAddv(skilldef, fightbody, from)
	return 0
end

--飞行检测
function tbSkill:FlyCheck(skilldef, keys, from)
	return 0
end

--九天星辰落
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("MS_JTXCR")

function tbSkill:GetAnimation()
	return "panxuan";
end

function tbSkill:GetSingTime()
	return 8.5;
end

function tbSkill:GetName()
	return XT("九天星辰落");
end

--技能被释放
function tbSkill:Cast(skilldef, from)
local me = self.bind;
	local p = Map:GetRandomInLifeAreaSafe(15);
	if p == 0 then
		p = Map:GetRandomInLifeArea();
	end
	me:SetPostion(p);
	WorldLua:CameraShake(0.5, 0.2);
end

--技能在key点生效
function tbSkill:Apply(skilldef, key, from)
	--print(1)
	
end

--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if target ~= nil then
	local npc = fightbody.Npc;
    ZhenMgr:BrokenNpcNode(npc);
	end
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/panxuan");
	--local npc = self.bind;	
	self.bind:AddModifier("Modifier_Sys_GodMode");
end
function tbSkill:Leave(did)
	self.bind:RemoveModifier("Modifier_Sys_GodMode");
end

function tbSkill:Step(dt,duration)	 
	if duration >= 21 then
		return 1;
	end
	return 0;
end


