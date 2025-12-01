local tbThing = GameMain:GetMod("ThingHelper"):GetThing("WX_MLQYT");
local time = 0;

 
function tbThing:OnStep(dt)
	local BD = self.it.ID
	local LX = World:GetFlag(BD)
	local KJD = World:GetFlag(99999)
	local N1 = world.DayCount
	local N2 = world.DaySecond
	local JF = GameMain:GetMod("ZTWP"):GetItemCount("Item_LingStone")
	if LX == 1 then
		if N2 >= 200 and N2 <= 500 then
			if World:GetFlag(1000000025) == 1 then
				World:AddFlag(99999,-2)
					if KJD >= 2 then
						if World:GetFlag(1000000025) == 1 then
				if World:GetFlag(1000000029) == 1 then
					if 	N2 >= 200 and N2 <= 325 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
						end
					if 	N2 >= 375 and N2 <= 475  then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
						end
				else
					if 	N2 >= 200 and N2 <= 275 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
					if 	N2 >= 400 and N2 <= 475  then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
				end
			else
				if World:GetFlag(1000000029) == 1 then
					if 	N2 >= 200 and N2 <= 325 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
				else
					if 	N2 >= 200 and N2 <= 275 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
				end
			end

					end
				else
				World:AddFlag(99999,-1)
					if KJD >= 1 then
					if World:GetFlag(1000000025) == 1 then
				if World:GetFlag(1000000029) == 1 then
					if 	N2 >= 200 and N2 <= 325 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
						end
					if 	N2 >= 375 and N2 <= 475  then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
						end
				else
					if 	N2 >= 200 and N2 <= 275 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
					if 	N2 >= 400 and N2 <= 475  then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
				end
			else
				if World:GetFlag(1000000029) == 1 then
					if 	N2 >= 200 and N2 <= 325 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
				else
					if 	N2 >= 200 and N2 <= 275 then
						if World:GetFlag(1000000023) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,500),self.it.Key,false,true,0,1)
						elseif World:GetFlag(1000000024) == 1 then
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(100,400),self.it.Key,false,true,0,1)
						else
							World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(50,400),self.it.Key,false,true,0,1)
						end
						local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
					end
				end
			end

					end
			end
					end
	elseif LX == 2 then
		if N2 >= 200 and N2 <= 500 then
			if World:GetFlag(1000000034) == 1 then
				World:AddFlag(99999,-3)
				if KJD >= 3 then
				if World:GetFlag(1000000034) == 1 then
				if 	N2 >= 200 and N2 <= 375 then
					if World:GetFlag(1000000032) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingCrystal",nil,30,self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingCrystal",nil,20,self.it.Key,false,true,0,1)
						end
					elseif World:GetFlag(1000000033) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(11,61),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(1,50),self.it.Key,false,true,0,1)
						end
					else
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(16,31),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(5,30),self.it.Key,false,true,0,1)
						end
					end
					local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
					local y = self.it.Key -- 坐标
					local z = 4 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
				end
			else
				if 	N2 >= 200 and N2 <= 275 then
					if World:GetFlag(1000000032) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingCrystal",nil,30,self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingCrystal",nil,20,self.it.Key,false,true,0,1)
						end
					elseif World:GetFlag(1000000033) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(11,61),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(1,50),self.it.Key,false,true,0,1)
						end
					else
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(16,31),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(5,30),self.it.Key,false,true,0,1)
						end
					end
					local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
					local y = self.it.Key -- 坐标
					local z = 4 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
				end
		end

				end 
				else
				World:AddFlag(99999,-2)
				if KJD >= 2 then
					if World:GetFlag(1000000034) == 1 then
				if 	N2 >= 200 and N2 <= 375 then
					if World:GetFlag(1000000032) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingCrystal",nil,30,self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingCrystal",nil,20,self.it.Key,false,true,0,1)
						end
					elseif World:GetFlag(1000000033) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(11,61),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(1,50),self.it.Key,false,true,0,1)
						end
					else
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(16,31),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(5,30),self.it.Key,false,true,0,1)
						end
					end
					local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
					local y = self.it.Key -- 坐标
					local z = 4 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
				end
			else
				if 	N2 >= 200 and N2 <= 275 then
					if World:GetFlag(1000000032) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingCrystal",nil,30,self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingCrystal",nil,20,self.it.Key,false,true,0,1)
						end
					elseif World:GetFlag(1000000033) == 1 then
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(11,61),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(1,50),self.it.Key,false,true,0,1)
						end
					else
						if World:GetFlag(1000000035) == 1 then
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(16,31),self.it.Key,false,true,0,1)
						else
						World.map:DropItems("Item_LingStone",nil,WorldLua:RandomInt(5,30),self.it.Key,false,true,0,1)
						end
					end
					local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
					local y = self.it.Key -- 坐标
					local z = 4 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
				end
		end

				end
			end
			if World:GetFlag(1000000036) == 1 and JF >= 100 then
				World:AddFlag(99999,-1)
				if KJD >= 1 then
				World.map:DropItems("Item_LingCrystal",nil,1,self.it.Key,false,true,0,1)
				GameMain:GetMod("ZTWP"):SubItemCount("Item_LingStone",100)
					local x = 66 --或者string,这个是特效编号或路径
					local y = self.it.Key -- 坐标
					local z = 4 --持续时间
					WorldLua:PlayEffect(x,y, z) --播放特效
				end
			end
       end 
	elseif LX == 3 then
		local JF1 = GameMain:GetMod("ZTWP"):GetItemCount("Item_LingCrystal")
		if N2 >= 200 and N2 <= 500 then
			if World:GetFlag(1000000045) == 1 then
					if KJD >= 4 then
					World:AddFlag(99999,-4)
						
					end
			else
				if KJD >= 3 then
				World:AddFlag(99999,-3)
					if World:GetFlag(1000000042) == 1 then	
						if World:GetFlag(1000000045) == 1 then	 
							if JF1 >= 50 then
							if World:GetFlag(1000000044) == 1 then
							World.map:DropItems("Item_WXLS",nil,WorldLua:RandomInt(6,22),self.it.Key,false,true,0,1)
							else
							World.map:DropItems("Item_WXLS",nil,WorldLua:RandomInt(4,20),self.it.Key,false,true,0,1)
							end
							local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
							local y = self.it.Key -- 坐标
							local z = 4 --持续时间
							WorldLua:PlayEffect(x,y, z) --播放特效
							if World:GetFlag(1000000043) == 1 then
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",30)
							elseif World:GetFlag(1000000044) == 1 then
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",70)
							else
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",50)
							end
							end
						else
							if JF1 >= 50 then
							if World:GetFlag(1000000047) == 1 then
							World.map:DropItems("Item_WXLS",nil,WorldLua:RandomInt(6,17),self.it.Key,false,true,0,1)
							else
							World.map:DropItems("Item_WXLS",nil,WorldLua:RandomInt(4,15),self.it.Key,false,true,0,1)
							end
							local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
							if World:GetFlag(1000000043) == 1 then
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",30)
							elseif World:GetFlag(1000000044) == 1 then
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",70)
							else
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",50)
							end
							end
						end
					else
						if JF1 >= 50 then
						if World:GetFlag(1000000044) == 1 then
							World.map:DropItems("Item_WXLS",nil,WorldLua:RandomInt(7,12),self.it.Key,false,true,0,1)
							else
							World.map:DropItems("Item_WXLS",nil,WorldLua:RandomInt(5,10),self.it.Key,false,true,0,1)
							end
							local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
							if World:GetFlag(1000000043) == 1 then
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",30)
							elseif World:GetFlag(1000000044) == 1 then
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",70)
							else
							GameMain:GetMod("ZTWP"):SubItemCount("Item_LingCrystal",50)
							end
						end
					end
				end
			end
	
	
	
	
	
	
	
	
	
	
	
	end
	elseif LX == 4 then
			local JF2 = GameMain:GetMod("ZTWP"):GetItemCount("Item_WXLS")
		if N2 >= 200 and N2 <= 500 then
				if World:GetFlag(1000000053) == 1 then
					if KJD >= 8 then
						if World:GetFlag(1000000055) == 1 then
						World:AddFlag(99999,-6)
							if JF2 >= 15 then
								if World:GetFlag(1000000052) == 1 then
									if World:GetFlag(1000000053) == 1 then
									World.map:DropItems("Item_WXLM",nil,6,self.it.Key,false,true,0,1)
									else
									World.map:DropItems("Item_WXLM",nil,3,self.it.Key,false,true,0,1)
									end
									local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
									local y = self.it.Key -- 坐标
									local z = 4 --持续时间
									WorldLua:PlayEffect(x,y, z) --播放特效
								end
								if World:GetFlag(1000000054) == 1 then
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",12)
								else
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",15)
								end
							end
						else
						World:AddFlag(99999,-8)
							if JF2 >= 15 then
								if World:GetFlag(1000000052) == 1 then
									if World:GetFlag(1000000053) == 1 then
									World.map:DropItems("Item_WXLM",nil,6,self.it.Key,false,true,0,1)
									else
									World.map:DropItems("Item_WXLM",nil,3,self.it.Key,false,true,0,1)
									end
										local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
									local y = self.it.Key -- 坐标
									local z = 4 --持续时间
									WorldLua:PlayEffect(x,y, z) --播放特效
								end
								if World:GetFlag(1000000054) == 1 then
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",12)
								else
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",15)
								end
							end
						end
					end
				else
					if KJD >= 5 then
						if World:GetFlag(1000000055) == 1 then
						World:AddFlag(99999,-3)
							if JF2 >= 15 then
								if World:GetFlag(1000000052) == 1 then
									if World:GetFlag(1000000053) == 1 then
									World.map:DropItems("Item_WXLM",nil,6,self.it.Key,false,true,0,1)
									else
									World.map:DropItems("Item_WXLM",nil,3,self.it.Key,false,true,0,1)
									end
									local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
								end
								if World:GetFlag(1000000054) == 1 then
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",12)
								else
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",15)
								end
							end
						else
						World:AddFlag(99999,-5)
							if JF2 >= 15 then
								if World:GetFlag(1000000052) == 1 then
									if World:GetFlag(1000000053) == 1 then
									World.map:DropItems("Item_WXLM",nil,6,self.it.Key,false,true,0,1)
									else
									World.map:DropItems("Item_WXLM",nil,3,self.it.Key,false,true,0,1)
									end
									local x = "Effect/gsq/Prefab/fx_fz_guangzhuHuo" --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
								end
								if World:GetFlag(1000000054) == 1 then
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",12)
								else
								GameMain:GetMod("ZTWP"):SubItemCount("Item_WXLS",15)
								end
							end
						end
					end
				end






		end
	
	else
		local x = 87 --或者string,这个是特效编号或路径
						local y = self.it.Key -- 坐标
						local z = 4 --持续时间
						WorldLua:PlayEffect(x,y, z) --播放特效
	end

end




