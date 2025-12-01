local tbThing = GameMain:GetMod("ThingHelper"):GetThing("XXFXZ");
local time = 0;


function tbThing:OnStep(dt)
	local N1 = world.DayCount
	local N2 = world.DaySecond
	print(N2)
	if N2 >= 500 and N2 <= 530 then
		if World:GetFlag(10000052) == 1 then
		 World.map:DropItems("Item_XFXS",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
		world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
		else
		 World.map:DropItems("Item_XFXS",nil,WorldLua:RandomInt(1,2),self.it.Key,false,true,0,1)	
		world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
	end		
			
		end
	end



local tbThing = GameMain:GetMod("ThingHelper"):GetThing("WX_KMDJ");
local time = 0;


function tbThing:OnStep(dt)
	local N1 = world.DayCount
	local N2 = world.DaySecond
	local WZ = {"Item_YJWSXT","Item_YJJSXT","Item_YJMSXT","Item_YJSSXT","Item_YJHSXT","Item_YJTSXT","Item_JSXJ","Item_JSTSJ","Item_JSSY","Item_JSZJ","Item_JSHJ"}
	local WZR = WorldLua:RandomInt(0,#WZ+1)
	if World:GetFlag(100000032) == 1 then
				if N2 >= 200 and N2 <= 450 then

				World:AddFlag(99999,-4)
					if World:GetFlag(100000031) == 1 then
						if N2 > 100.5 and N2 < 101  then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						elseif N2 > 300.5 and N2 < 301 then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3) 
						elseif N2 > 200.5 and N2 < 201 then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						end
					else
						if N2 > 100.5 and N2 < 101  then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						elseif N2 > 300.5 and N2 < 301 then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						elseif N2 > 200.5 and N2 < 201 then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						end
					end
				end		
	
	else
				if N2 >= 200 and N2 <= 450 then
					
						World:AddFlag(99999,-2)
					if World:GetFlag(100000031) == 1 then
						if N2 > 100.5 and N2 < 101  then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						elseif N2 > 300.5 and N2 < 301 then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(2,5),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						end
					else
						if N2 > 100.5 and N2 < 101  then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						elseif N2 > 300.5 and N2 < 301 then
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						 World.map:DropItems(""..WZ[WZR].."",nil,WorldLua:RandomInt(1,3),self.it.Key,false,true,0,1)
						world:PlayEffect("Effect/A/Prefabs/Pillar Blast/WaterPillarBlast", self.it.Pos, 3)
						end
					end		
				end		
	end
end



local tbThing = GameMain:GetMod("ThingHelper"):GetThing("WX_QXGC");
local time = 0;


function tbThing:OnStep(dt)
				if N2 >= 200 and N2 <= 450 then
				World:AddFlag(99999,-6)
				end		
	

end








