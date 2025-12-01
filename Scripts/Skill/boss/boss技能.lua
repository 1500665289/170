
local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("DJG_PX")


--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("DJG_PX")
	
	end
	end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_KXSR1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XT_KXSR1_X")
	
	end
end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("KXZX1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then

	local SH = {"Damage_Boss_LingBoom","Jin_BoneNail","Huo_VisceralBurn","BodyPractice_Bhit2","BodyPractice_Bhit3"}
	local SHR = WorldLua:RandomInt(0,#SH+1)
	local BW = {"UpperElixirField","LowerElixirField","LeftShoulder","LeftScapula","RightScapula","RightShoulder","Heart","Body","Liver","Spleen","Lung","Kidney","Genitals"}
	local BWR = WorldLua:RandomInt(0,#BW+1)
	local CD = WorldLua:RandomInt(0,1)
	local npc = fightbody.Npc
	npc:AddDamage(""..BW[BWR].."",""..SH[SHR].."",CD,false);--伤害类型，部位--
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_XXGXT2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local N1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
	
	end
end

--技能被释放
function tbSkill:Cast(skilldef, from)
	self.power = 0
	local BJ = WorldLua:RandomInt(0,100)
	if BJ >= 50 then
	if from then
      local power1 = from.PropertyMgr.SkillData:GetSkillLevel(CS.XiaWorld.g_emNpcSkillType.FightSkill)
	  
      self.power = power1*0.5
	  
	end
	else
		return
	end
end


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_BSJRXT1")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	npc:AddModifier("XT_BSJRXT1_X")
	
	end
end




local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_DTSXT2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	  local power1 = npc:GetProperty("NpcLingMaxValue");
	  npc.PropertyMgr:ModifierProperty("NpcLingMaxValue",-0.15*power1,0,0,0)
	
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("WX_HF_STS2")



--技能在fightbody身上生效
function tbSkill:FightBodyApply(skilldef, fightbody, from)
	self.power = 0
	if fightbody and fightbody.Npc then
	local npc = fightbody.Npc
	  local power1 = npc:GetProperty("GodCity_MaxResident");
	   self.power = power1*0.00005
	end
end



local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_XTXT1")


--技能被释放
function tbSkill:Cast(skilldef, from)
	local npc = fightbody.Npc
	self.power = 0
	local N = npc:GetModifierStack("XT_XTXT");
	npc.PropertyMgr:AddModifier("XT_XTXT",1,false,-100,false,-1)		
	  
      self.power = N.Stack*5
	  
	end
	


local tbTable = GameMain:GetMod("_SkillScript")
local tbSkill = tbTable:GetSkill("XT_XTXT1")

function tbSkill:FightBodyApply(skilldef, fightbody, from)
	L = self.power
	if fightbody and fightbody.Npc and npc.GongKind == CS.XiaWorld.g_emGongKind.Body then
	local npc = fightbody.Npc
	npc.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(L)
	end
end
--技能被释放
function tbSkill:Cast(skilldef, from)
	local N1 = world.DaySecond

		if N1 >= 125 and N1 <= 450 then
      self.power = self.power*0.5
		end
	end






























