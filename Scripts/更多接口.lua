
local WXXX = GameMain:NewMod("WXXX")
WXXX.Events = WXXX.Events or {}
local Events = WXXX.Events
local tbEvent = GameMain:GetMod("_Event");

function WXXX:OnEnter()

tbEvent:RegisterEvent(g_emEvent.TestEvent, WXXX.LingDamage, "灵气伤害事件")

end
function WXXX.LingDamage(t,npc,obj)
local EventName = obj[0] --事件接口名字，后面可以加很多
	if EventName == "灵气伤害" then--这个是灵气伤害接口，每个接口的obj是不同的，但obj[0]是标志
		--比如：
		local v = obj[1] --这个是灵气伤害接口的，伤害值（float）
		local from = obj[2] --这个是灵气伤害接口的，攻击者(npc)
		local kind = obj[4] --这个是灵气伤害接口的，类型（法宝，法术）(string)
		local fixobj = obj[5] --这个是灵气伤害接口的，修正系数(特殊类)
		local element = obj[3] --这个是灵气伤害接口的，五行(string)
		local Gv = fixobj.Value--改这个就是让伤害变0.1倍，改上面那个没用
		if from ~= nil then--!!!注意,记得判断是否存在
		local R = WorldLua:RandomInt(1,100)
			if npc.PropertyMgr:HasModifier("WX_SLDJJ3X3") then	
				fixobj.Value = 0.4
			end
			if npc.PropertyMgr:HasModifier("WX_SLDL3X3") and v >= 100000 then	
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,from.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.IsDeath == false then--判断是否是敌人和npc
								  d.PropertyMgr:AddModifier("WX_SLDL3X31",1,false,1,false,-1)
								end
						end	
					 end 
			end
			if from.PropertyMgr:HasModifier("WX_SLDBS3X2") then
									if from.GongKind == CS.XiaWorld.g_emGongKind.Body then
									from.PropertyMgr.Practice.BodyPracticeData:AddZhenQi(v*0.15)
									else 
									from:AddLing(v*0.15)
									end
			end
			if from.PropertyMgr:HasModifier("WX_SLDBS2X3") then
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Enemy,npc.Pos,5)
				if a == nil then
					fixobj.Value = 5
				end
			end
			if v > 0 and npc.PropertyMgr:HasModifier("WX_SLDD3X2") then
				fixobj.Value = 0.2
				npc.PropertyMgr:AddModifier("WX_SLDD3X2",1,false,-1,false,-1)
				npc.PropertyMgr:AddModifier("WX_SLDD3X21",1,false,-1,false,-1)
				if npc.PropertyMgr:HasModifier("WX_SLDD3X2") == false then
					npc.PropertyMgr:AddModifier("WX_SLDD3X22",1,false,1,false,-1)
				end
			end
			if v > 0 and npc.PropertyMgr:HasModifier("WX_SHJS") then
			local m = npc.PropertyMgr:FindModifier("WX_SHJS");
			local XS = m.Stack
				fixobj.Value = 1+XS/1000
			end
			if v > 100000 and npc.PropertyMgr:HasModifier("WX_SLDFZ3X2") then	
				if R >= 70 then
				fixobj.Value = 8
				end
			end
			if v > 50000 and npc.PropertyMgr:HasModifier("WX_SLDJ2X3") then	
				if R >= 50 then
				fixobj.Value = 0
				end
			end
			if v > 0 and npc.PropertyMgr:HasModifier("WX_SLDF3X3") then	
				fixobj.Value = 3
			end
			if v > 0 and from.PropertyMgr:HasModifier("WX_SLDF3X3") then	
				fixobj.Value = 3
			end	
			if v > 0 and npc.PropertyMgr:HasModifier("WX_SLDF3X1") then	
				fixobj.Value = 3
			end
			if v > 0 and from.PropertyMgr:HasModifier("WX_SLDF2X2") then
			local HP = from.HealthValue
				fixobj.Value = 50/HP
				from.PropertyMgr:ModifierProperty("RecoveryPower",100/HP,0,0)
				from.PropertyMgr:ModifierProperty("MagicDamageRecoveryPowerAddV",100/HP,0,0)
				from.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",10/HP,0,0)
			end
			if v > 0 and from.PropertyMgr:HasModifier("WX_SLDG3X3") then
			
				if R >= 80 then
				fixobj.Value = 6
				end
			end
			if v > 0 and from.PropertyMgr:HasModifier("WX_SLDDJ2X3") then
			
				if R >= 70 then
				fixobj.Value = 2
				end
			end
			if v > 0 and npc.PropertyMgr:HasModifier("WX_SLDDJ3X2") then		 
				 from.LuaHelper:AddPracticeResource("Ling",-Gv*0.15);
			end
			if element == "None" and npc.PropertyMgr:HasModifier("MY_None") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			fixobj.Value = 0
			npc.PropertyMgr:AddModifier("MY_None",1,false,-1,false,-1)
			end
			if element == "Jin" and npc.PropertyMgr:HasModifier("MY_Jin") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			fixobj.Value = 0
			npc.PropertyMgr:AddModifier("MY_Jin",1,false,-1,false,-1)
			end
			if element == "Mu" and npc.PropertyMgr:HasModifier("MY_Mu") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			fixobj.Value = 0
			npc.PropertyMgr:AddModifier("MY_Mu",1,false,-1,false,-1)
			end
			if element == "Shui" and npc.PropertyMgr:HasModifier("MY_Shui") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			fixobj.Value = 0
			npc.PropertyMgr:AddModifier("MY_Shui",1,false,-1,false,-1)
			end
			if element == "Huo" and npc.PropertyMgr:HasModifier("MY_Huo") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			fixobj.Value = 0
			npc.PropertyMgr:AddModifier("MY_Huo",1,false,-1,false,-1)
			end
			if element == "Tu" and npc.PropertyMgr:HasModifier("MY_Tu") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			fixobj.Value = 0
			npc.PropertyMgr:AddModifier("MY_Tu",1,false,-1,false,-1)
			end
			if kind == "Fabao" and npc.PropertyMgr:HasModifier("MY_FabaoAttack") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-1,false,-1)
			fixobj.Value = 0
			end
			if kind == "Skill" and npc.PropertyMgr:HasModifier("MY_SkillAttack") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-1,false,-1)
			fixobj.Value = 0
			end
			if kind == "Normal" and npc.PropertyMgr:HasModifier("MY_NormalAttack") and npc.PropertyMgr:HasModifier("WXFJ_HF") then
			npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-1,false,-1)
			fixobj.Value = 0
			end
			if kind == "Normal" and npc.PropertyMgr:HasModifier("MY_NormalAttack") then
			local A = npc.PropertyMgr:FindModifier("MY_NormalAttack")
			local XS = A.Stack 
			npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,XS,false,-1)
			fixobj.Value = 1-(XS/1000)
			end
			if kind == "Fabao" and npc.PropertyMgr:HasModifier("MY_FabaoAttack") and npc.PropertyMgr:HasModifier("WX_JJNY") then
			npc.PropertyMgr:AddModifier("MY_FabaoAttack",1,false,-1,false,-1)
			fixobj.Value = 0
			if kind == "Skill" and npc.PropertyMgr:HasModifier("MY_SkillAttack") and npc.PropertyMgr:HasModifier("WX_JJNY") then
			npc.PropertyMgr:AddModifier("MY_SkillAttack",1,false,-1,false,-1)
			fixobj.Value = 0
			if kind == "Normal" and npc.PropertyMgr:HasModifier("MY_NormalAttack") and npc.PropertyMgr:HasModifier("WX_JJNY") then
			npc.PropertyMgr:AddModifier("MY_NormalAttack",1,false,-1,false,-1)
			fixobj.Value = 0
			end 
			end
			end
			
		end	
	end
	if EventName == "部位伤害" then--这个是部位伤害接口
		
		local partname = obj[1] --这个是部位伤害接口的，部位名字（string）
		local name = obj[2] --这个是部位伤害接口的，伤害名字(string)
		local p = obj[3] --这个是部位伤害接口的，受伤程度(float)
		local fixobj = obj[4] --这个是部位伤害接口的，修正系数(特殊类)
			--fixobj.ChangeStr = "Brain";改这个就是让伤害转移
			--比如：体修几乎免疫全身伤害并会将伤害转到大脑
			if npc.PropertyMgr:HasModifier("WX_SHJS1") then
			local m = npc.PropertyMgr:FindModifier("WX_SHJS1");
			local XS = m.Stack
				fixobj.Value = 1+XS/1000
			end
			if npc.PropertyMgr:HasModifier("WX_BSR") then	
			
				fixobj.Value = 0.25
			end
			if npc.PropertyMgr:HasModifier("WX_SLDPX1") then	
			local m = npc.PropertyMgr:FindModifier("WX_SLDPX1");
			local MY = m.Stack/66
				fixobj.Value = MY
			end
			if npc.PropertyMgr:HasModifier("WX_SLDPX11") then
			local m = npc.PropertyMgr:FindModifier("WX_SLDPX11");
			local MY = m.Stack/375
				fixobj.Value = MY
			end
			if npc.PropertyMgr:HasModifier("WX_SLDPX11F") then
			local m = npc.PropertyMgr:FindModifier("WX_SLDPX11F");
			local MY = m.Stack/375
				fixobj.Value = 1+MY
			end
		if npc.PropertyMgr:HasModifier("WX_SLDJJ3X3") then	
				fixobj.Value = 0.4
			end
		if npc.PropertyMgr:HasModifier("WX_SLDF3X1") then	
				fixobj.Value = 3
			end
		if npc.PropertyMgr:HasModifier("WX_SLDF3X3") then	
				fixobj.Value = 3
			end
		
		if npc.PropertyMgr:HasModifier("WX_SLDQ2X2") and partname == "TheWholeBody" then
			fixobj.Value = 0.5
			local BW = {"Liver","Spleen","Lung","Kidney","Stomach","Intestines","Genitals"}
				local BWR = WorldLua:RandomInt(0,#BW+1)
			fixobj.ChangeStr = ""..BW[BWR].."";
			end
		if npc.PropertyMgr:HasModifier("WX_SLDG3X3") then
				
				if R >= 80 then
				fixobj.Value = 6
				end
			end
			if npc.PropertyMgr:HasModifier("WX_SLDF2X2") then
			local HP = from.HealthValue
				fixobj.Value = HP/50
				npc.PropertyMgr:ModifierProperty("RecoveryPower",100/HP,0,0)
				npc.PropertyMgr:ModifierProperty("MagicDamageRecoveryPowerAddV",100/HP,0,0)
				npc.PropertyMgr:ModifierProperty("BodyPratice_BodyRecover",10/HP,0,0)
			end
			if npc.PropertyMgr:HasModifier("WX_SLDD3X2") then
				fixobj.Value = 0
				npc.PropertyMgr:AddModifier("WX_SLDD3X2",1,false,-3,false,-1)
				npc.PropertyMgr:AddModifier("WX_SLDD3X21",1,false,-2,false,-1)
				if npc.PropertyMgr:HasModifier("WX_SLDD3X2") == false then
					npc.PropertyMgr:AddModifier("WX_SLDD3X22",1,false,1,false,-1)
				end
			end
	end
end

		
		
		
		
		
		
		
		
		
		
		
		