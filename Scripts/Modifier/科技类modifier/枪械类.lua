
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_YM45")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,400,false,-1)
 
end


function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_YM45")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_BP25")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,900,false,-1)
 
end
function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_BP25")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_GT2")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,600,false,-1)
 
end


function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_GT2")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_KL00")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,550,false,-1)
 
end


function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_KL00")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_AG25")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,650,false,-1)
 
end


function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_AG25")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_P92")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,1200,false,-1)
 
end

function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_P92")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end


local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_AG28")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,450,false,-1)
 
end

function tbModifier:Step(modifier, npc, dt)
m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_AG28")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
	
end

local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_P90")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,800,false,-1)

end

function tbModifier:Step(modifier, npc, dt)
 m = npc.PropertyMgr:HasModifier("WXQX_NJD")
if m == false then
	T = npc:GetEquip(CS.XiaWorld.g_emEquipType.Weapon)
	ThingMgr:RemoveThing(T, true, false)
	npc:RemoveModifier("WXQX_P90")
end
end
function tbModifier:Leave(modifier, npc)
	npc:RemoveModifier("WXQX_NJD")
end
local tbTable = GameMain:GetMod("_ModifierScript")
local tbModifier = tbTable:GetModifier("WXQX_TYDJ")
 
function tbModifier:Enter(modifier, npc)
 
 npc.PropertyMgr:AddModifier("WXQX_NJD",1,false,300,false,-1)
 
end




