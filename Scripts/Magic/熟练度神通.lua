--灵魂拷问
local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("WX_SLDBS3X3");

function tbMagic:Init()
end

function tbMagic:TargetCheck(k, t)	
	local npc = t;
	if npc.IsPuppet or npc.IsZombie then
		return false;
	end
	if npc.IsAlive then
		return true;
	end
	return false;
end

function tbMagic:MagicEnter(IDs, IsThing)
	self.TargetID = IDs[0];
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

function tbMagic:MagicLeave(success)	
	if success == true then
		local target = ThingMgr:FindThingByID(self.TargetID)
		target.LuaHelper:AddModifier("WX_SLDBS3X31")
		
		WorldLua:PlayEffect("Effect/A/Prefabs/Muzzleflash/Normal/EarthMuzzleNormal", target.Pos, 5);		
	end	
end

function tbMagic:OnGetSaveData()
	return nil;	
end

function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.TargetID = IDs[0]
end

local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("WX_SLDL3X3");

function tbMagic:Init()
end

function tbMagic:TargetCheck(k, t)	
	
end

function tbMagic:MagicEnter(IDs, IsThing)
	
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

function tbMagic:MagicLeave(success)	
	if success == true then
		
				local C = 10004
				local b = self.bind.Key -- 坐标
				local c = 10 --持续时间
				WorldLua:PlayEffect(C,b, c)
				a = FightMgr:GetFightBodyByRadius(g_emFightCamp.Player,self.bind.Pos,10000) --获取NPC坐标指定范围内指定阵营敌人
					 for k,v in pairs(a) do
					 local d = v.Npc
						 if d ~= nil then
							   if d.IsDeath == false then--判断是否是敌人和npc
								  d.PropertyMgr:AddModifier("WX_WD",1,false,600,false,-1)
								end
						end	
					 end 

		CS.XiaWorld.ThingMgr.Instance:RemoveThing(self.bind,false,true)
			
	end	
end

function tbMagic:OnGetSaveData()
	return nil;	
end

function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.TargetID = IDs[0]
end

