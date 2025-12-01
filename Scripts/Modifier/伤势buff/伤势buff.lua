
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("DMG_2")

--注意：自定义modidifer要注意离开的时候将自定义效果移除
--进入modifier
function tbModifier:Enter(modifier, npc)
	local SH = {"Damage_Boss_LingBoom","Jin_BoneNail","Huo_VisceralBurn","BodyPractice_Bhit2","BodyPractice_Bhit3"}
	local SHR = WorldLua:RandomInt(0,#SH+1)
	local BW = {"UpperElixirField","LowerElixirField","Heart","Body","Liver","Spleen","Lung","Kidney"}
	local BWR = WorldLua:RandomInt(0,#BW+1)
	local CD = WorldLua:RandomInt(0,1)
	npc:AddDamage("..SH[SHR]..","..BW[BWR]..",CD,XT("伤害"));--伤害类型，部位--
end



