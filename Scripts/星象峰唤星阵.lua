local tbTable = GameMain:GetMod("WXXXF");
--感谢“aks阿卡”大佬的代码
--attrStrList 依次对应为以下项目
--[[
		None,
		AttackPower,
		LingRecover,
		MaxLing,
		FlySpeed,
		RotSpeed,
		KnockBackAddition,
		KnockBackResistance,
		Scale,
		TailLenght,
		AttackRate,
		_FightFabaoEnd,
		MoveSpeed,
		_FlyFabaoEnd
--]]

function tbTable:QH(target)

	--*具体名称，请参考游戏内的称呼进行修改
	local HL = target.Fabao:GetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover)
	local myNpc = target.npcObj;
	local fabao = myNpc:GetFirstAtkFabao();
	if fabao ~=nil then
		if AT <= 1200 then

		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,HL+125)

		else
		world:ShowMsgBox('最高上限已经达到')
		end
	else
		world:ShowMsgBox('NPC没有装备法宝！')
	end
end
