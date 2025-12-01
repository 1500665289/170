--灵魂拷问
local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("XT_XXGXT1");

function tbMagic:Init()
end

function tbMagic:TargetCheck(k, t)	
	local npc = t;
	if npc.IsPuppet or npc.IsZombie then
		return false;
	end
	if npc.IsLingering and npc.CorpseTime > 1 then
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
		local npc = self.bind
		local N1 = target:GetProperty("NpcLingMaxValue");
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0);
		npc.LuaHelper:AddPracticeResource("Ling",N1*0.5);
	end	
end

function tbMagic:OnGetSaveData()
	return nil;	
end

function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.TargetID = IDs[0]
end


local tbTable = GameMain:GetMod("MagicHelper");--获取神通模块 这里不要动
local tbMagic = tbTable:GetMagic("XT_DTSXT");--创建一个新的神通class

function tbMagic:TargetCheck(k, t)
	if (t.Camp ~= g_emFightCamp.Player) then
		self:SetCheckMsg(XT("不能对敌方角色使用"))
		return false
	end

	if (not t.IsAlive) then
		self:SetCheckMsg(XT("该目标已经失去灵智"))
		return false
	end

	return true
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束		
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		
		if World:GetFlag(53333333) == 0 then 
			self.bind.LuaHelper:DropAwardItem("XTWQ_YAHJ",1)
			World:AddFlag(53333333,1)
		else
		self.bind.PropertyMgr:AddModifier("XT_DTSXT1_Z",1,false,1,false,-1)
		world:ShowMsgBox('已经造出来了，所以只剩下属性加成了，持续60s')
		end
end
end


local tbTable = GameMain:GetMod("MagicHelper");--获取神通模块 这里不要动
local tbMagic = tbTable:GetMagic("XT_STSXT1");--创建一个新的神通class

function tbMagic:TargetCheck(k, t)
	if (t.Camp ~= g_emFightCamp.Player) then
		self:SetCheckMsg(XT("不能对敌方角色使用"))
		return false
	end

	if (not t.IsAlive) then
		self:SetCheckMsg(XT("该目标已经失去灵智"))
		return false
	end

	return true
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束		
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		

	self.bind:AddModifier("XT_STSXT1_X")
	self.bind.PropertyMgr:ModifierProperty("GodPractice_GodPowerAddV",-10,0,0,0)
	self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0)		
end
end



local tbTable = GameMain:GetMod("MagicHelper");--获取神通模块 这里不要动
local tbMagic = tbTable:GetMagic("LYJLXT2");--创建一个新的神通class

function tbMagic:TargetCheck(k, t)
	if (t.Camp ~= g_emFightCamp.Player) then
		self:SetCheckMsg(XT("不能对敌方角色使用"))
		return false
	end

	if (not t.IsAlive) then
		self:SetCheckMsg(XT("该目标已经失去灵智"))
		return false
	end

	return true
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束		
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		
	local LYJT = {"XTWQ_LYJL2","XTWQ_LYJL1","XTWQ_LYJL3","XTWQ_LYJL4"}
	local JTR = WorldLua:RandomInt(1,#LYJT+1);
	local JT1 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_LYJL1")
	local JT2 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_LYJL2")
	local JT3 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_LYJL3")
	local JT4 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_LYJL4")

		if JT1 == 1 then
		GameMain:GetMod("ZTWP"):SubItemCount("XTWQ_LYJL1",1)
		self.bind.LuaHelper:DropAwardItem(""..LYJT[JTR].."",1)
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0)
		elseif JT2 == 1 then
		GameMain:GetMod("ZTWP"):SubItemCount("XTWQ_LYJL2",1)
		self.bind.LuaHelper:DropAwardItem(""..LYJT[JTR].."",1)
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0)
		elseif JT3 == 1 then
		GameMain:GetMod("ZTWP"):SubItemCount("XTWQ_LYJL3",1)
		self.bind.LuaHelper:DropAwardItem(""..LYJT[JTR].."",1)
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0)
		elseif JT4 == 1 then
		GameMain:GetMod("ZTWP"):SubItemCount("XTWQ_LYJL4",1)
		self.bind.LuaHelper:DropAwardItem(""..LYJT[JTR].."",1)
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0)
		else
		self.bind.LuaHelper:DropAwardItem(""..LYJT[JTR].."",1)
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-100,0,0,0)
		end

end
end

--灵魂拷问
local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("XT_JLXT1");

function tbMagic:Init()
end

function tbMagic:TargetCheck(k, t)	
	local npc = t;
	if npc.IsPuppet or npc.IsZombie then
		return false;
	end
	if npc.IsLingering and npc.CorpseTime > 1 then
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
		self.bind:AddModifier("XT_JLXT_X");
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-60,0,0,0)
	end	
end

function tbMagic:OnGetSaveData()
	return nil;	
end

function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.TargetID = IDs[0]
end


--灵魂拷问
local tbTable = GameMain:GetMod("MagicHelper");
local tbMagic = tbTable:GetMagic("XT_JLXT2");

function tbMagic:Init()
end

function tbMagic:TargetCheck(k, t)	
	local npc = t;
	if npc.IsPuppet or npc.IsZombie then
		return false;
	end
	if npc.IsLingering and npc.CorpseTime > 1 then
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
		self.bind:AddModifier("XT_JLXT_X1");
		self.bind.PropertyMgr:ModifierProperty("MaxAge",-200,0,0,0)
	end	
end

function tbMagic:OnGetSaveData()
	return nil;	
end

function tbMagic:OnLoadData(tbData,IDs, IsThing)	
	self.TargetID = IDs[0]
end



local tbTable = GameMain:GetMod("MagicHelper");--获取神通模块 这里不要动
local tbMagic = tbTable:GetMagic("XT_YYXT1");--创建一个新的神通class

function tbMagic:TargetCheck(k, t)
	if (t.Camp ~= g_emFightCamp.Player) then
		self:SetCheckMsg(XT("不能对敌方角色使用"))
		return false
	end

	if (not t.IsAlive) then
		self:SetCheckMsg(XT("该目标已经失去灵智"))
		return false
	end

	return true
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束		
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		
	local A = {"XTWQ_YYXT1","XTWQ_YYXT2","XTWQ_YYXT3","XTWQ_YYXT4","XTWQ_YYXT5"}
	local JTR = WorldLua:RandomInt(1,#A+1);
	self.bind.LuaHelper:DropAwardItem(""..A[JTR].."",1)	
	self.bind.PropertyMgr:ModifierProperty("MaxAge",-200,0,0,0)

end
end



local tbTable = GameMain:GetMod("MagicHelper");--获取神通模块 这里不要动
local tbMagic = tbTable:GetMagic("XT_YYXT2");--创建一个新的神通class

function tbMagic:TargetCheck(k, t)
	if (t.Camp ~= g_emFightCamp.Player) then
		self:SetCheckMsg(XT("不能对敌方角色使用"))
		return false
	end

	if (not t.IsAlive) then
		self:SetCheckMsg(XT("该目标已经失去灵智"))
		return false
	end

	return true
end

function tbMagic:MagicStep(dt, duration)--返回值  0继续 1成功并结束 -1失败并结束		
	self:SetProgress(duration/self.magic.Param1);
	if duration >= self.magic.Param1 then	
		return 1;	
	end
	return 0;
end

--施展完成/失败 success是否成功
function tbMagic:MagicLeave(success)
	if success == true then		
	local JT1 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_YYXT1")
	local JT2 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_YYXT2")
	local JT3 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_YYXT3")
	local JT4 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_YYXT4")
	local JT5 = GameMain:GetMod("ZTWP"):GetItemCount("XTWQ_YYXT5")
	if JT1 >= 1 and JT2 >= 1 and JT3 >= 1 and JT4 >= 1 and JT5 >= 1 then
	self.bind.LuaHelper:DropAwardItem("XTWQ_YYXT6",1)	
	self.bind.PropertyMgr:ModifierProperty("MaxAge",-500,0,0,0)
	end
end
end
