local tbTable = GameMain:GetMod("_SkillAction");
local tbSkill = tbTable:GetSkill("MSZ");


function tbSkill:Init()
	
end

function tbSkill:GetAnimation()
	return "MSZ";
end

function tbSkill:GetSingTime()
	return 1.4;
end

function tbSkill:GetName()
	return "魔神锥";
end

function tbSkill:Enter()
	WorldLua:PlayBossAudio("Sound/Fight/Boss/Long/fabao");
end

function tbSkill:Cast()	
	
	local fabao = ItemRandomMachine.RandomFabao(g_emItemLable.FightFabao, 12, 12, 100, "Item_Boss_Jiaowangci", nil, 0, true);
	fabao:SetName("魔神锥");
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,15000)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,8000)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,2)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,10)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,120)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,50)
	fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,4000)
	self.bind:EquipItem(fabao);
	--self.bind.Bag:AddItem(fabao);
	local data1 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc ="十二天都魔神：5%几率对敌方法宝造成1000倍伤害",fParam1="0.05" ,fParam2="999" ,nParam1="2"};
	local data2 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddMirror,Desc ="三十六都煞：每攻击36次分出36道分影，持续15s",nParam1="36",nParam2="36",fParam1="15"};
	fabao.Fabao:AddAbilityData(data1);
	fabao.Fabao:AddAbilityData(data2);
	fabao:AddLing(fabao.MaxLing);
	self.bind.FightBody:CastFabao(self.bind:GetBipPosition("biped R Hand"), g_emFaBaoMode.Boss);
	
end

function tbSkill:Step(dt,duration)	
	return 1;
end

function tbSkill:Leave(did)

end

