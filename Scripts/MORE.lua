local UI = GameMain:GetMod("WXXX");
local time = 0;
local flag = 0;

function UI:OnStep(dt)
local N1 = world.DayCount
local N2 = world.DaySecond
local N = world.DayCount/20
if flag == 0 then
time = time + dt;
if time >= 1 then
flag = 1;
CS.XiaWorld.PropertyMgr.Instance:GetDef("NpcLingMaxValue").MaxValue = 999999999;
CS.XiaWorld.PropertyMgr.Instance:GetDef("BodyPratice_MaxZhenQi").MaxValue = 99999999;
CS.XiaWorld.PropertyMgr.Instance:GetDef("MaxAge").MaxValue = 99999;
CS.XiaWorld.PropertyMgr.Instance:GetDef("DeepPracticeSpeedSpecialCoefficient").BaseValue = 0;
CS.XiaWorld.PropertyMgr.Instance:GetDef("NutritionConsumeConstant").BaseValue = 2;
CS.XiaWorld.PropertyMgr.Instance:GetDef("WaterConsumeConstant").BaseValue = 2;
CS.XiaWorld.PropertyMgr.Instance:GetDef("FatigueConsumeConstant").BaseValue = 2;
CS.XiaWorld.PropertyMgr.Instance:GetDef("AgeCostSpeed").BaseValue = 10+N;

end
CS.XiaWorld.PropertyMgr.Instance:GetDef("ComfyTMin").MinValue = -9999;
CS.XiaWorld.PropertyMgr.Instance:GetDef("ComfyTMax").MaxValue = 9999;
CS.XiaWorld.PropertyMgr.Instance:GetDef("ToleranceTMin").MinValue = -9999;
CS.XiaWorld.PropertyMgr.Instance:GetDef("ToleranceTMax").MaxValue = 9999;


end

local JF = GameMain:GetMod("ZTWP"):GetItemCount("Item_PTJB")
local SL1 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumDisciple)
local SL2 = SchoolMgr:GetSchoolData(CS.XiaWorld.g_emSchoolData.NumWorker)
if CS.GameWatch.Instance.Mode == CS.XiaWorld.g_emGameMode.Normal or CS.GameWatch.Instance.Mode == CS.XiaWorld.g_emGameMode.HardCode then
if N1 >= 18 and N2 >= 299.5 and N2 <= 300 then
	if JF <= SL1*500 + SL2*50 then
	local npcs = Map.Things:GetPlayerActiveNpcs()
	local randomnpc = npcs[WorldLua:RandomInt(0, npcs.Count)]
	CS.XiaWorld.ThingMgr.Instance:RemoveThing(randomnpc,false,true)
	world:ShowMsgBox('第二天以后，必须保证积分数量500/内门弟子每名，50/外门弟子每名。否则随机抹杀一名单位，直至积分数大于该数值。')
	else
	return 0
	end
end
end
end

