local jiez = GameMain:NewMod("jiez");
local Npc = {};
local BW = {"TheWholeBody","RightLeg","Meridian","LeftLeg","RightArm","LeftArm","Trunk"}
local BWMS = {"全身","右腿","经脉","左腿","左臂","右臂","头部"}
local SH = {"FivePoison","SwordBallDamage","XueGuLianXing","Dan_Soul3_Damage","ZaoHuaYuLu_YuanShenJiMie","SoulOutOfBrain","LostSoul","Damage_GongXinYin_Damage","Damage_TianDaoBenYuan1","Damage_Kidnap_MiHun","Damage_TianDaoBenYuan2",
"DiffEnergyInvade","MeridianRupture","ElixirFieldShock","Damage_Boss_LingBoom","Damage_Sys_SuppressGodCall","JieNanHuangu","LingSpillsInjury_Sp","LingSpillsInjury","SevereInjury","Jin_ThunderDamage","Jin_BoneNail","Jin_SwordLight1",
"Jin_SwordLight2","Mu_VitalityDevour1","Mu_VitalityDevour2","Mu_Failure","Mu_Corrosion","Mu_Parasitic","Shui_Frostbite","Shui_ColdBlood","Shui_ColdPoison","Huo_VisceralBurn","Huo_BurnOfPain","Huo_MarrowDry","Huo_HeartBurn","Tu_Weathering",
"Tu_Petrifaction1","Tu_Petrifaction2","Tu_BrainClose"}
local SHMS ={"五毒之息","剑气裂体","炼心咒","神智有损","元神寂灭","魂魄不合","锁闭","神魂重创","神魂受损","迷魂术","神识湮灭","异种真气","断裂","丹田震荡","真气暴走","压制天劫","换骨之苦","经脉重伤","真气溢伤","元气大伤","雷殛","骨刺",
"剑气入体（轻）","剑气入体（重）","蚀命之息（轻）","蚀命之息（重）","衰竭","腐败","寄生","冻创","寒脉","寒毒","内焚","灼痛","枯髓之症","焚心","风化","僵化（轻）","僵化（重）","锁神症"}
local MXG = {"MB_JN_1","MB_JN_2","MB_JN_3","MB_JN_4","MB_JN_5","MB_JN_6","MB_JN_7","MB_JN_8","MB_SX_1","MB_SX_2","MB_SX_3","MB_SX_4","MB_SX_5","MB_SX_6","MB_SX_7","MB_SX_8","MB_SX_9","MB_SX_10","MB_SX_11","MB_SX_12","MB_SX_13","MB_SX_14","MB_SX_15"}
local SF = {"MB_JND1","MB_JND2","MB_JND3","MB_JND4","MB_JND5","MB_JNA1","MB_JNA2","MB_JNA3","MB_SXA4","MB_SXA5","MB_CM1","MB_CM2","MB_CM3","MB_JX1","MB_JX2","MB_JX3","MB_JX4","MB_JX5","MB_JX6","MB_SM1","MB_SM2","MB_SM3","MB_SL1","MB_SL2","MB_SL3","MB_SJN1","MB_SJN2","MB_SJN3","MB_HT1","MB_HT2","MB_SF1","MB_SF2","MB_YQ1","MB_YQ2","MB_SLH1","MB_SLH2","MB_SLH3"}
local FWMS1 ={"本体","法宝"}
local FWMS2 ={"当前灵气比例","最大灵气比例"}
local WXSX ={"Jin","Mu","Shui","Huo","Tu"}
local WXSXMS ={"金属性","木属性","水属性","火属性","土属性"}
local FBN = {"清天一枝","御龙神","扬刀","闇灭","荒古","破炎","清风","御龙","破空","紫檀","荒古","冥王","熔金落日","秋水无痕","碧海银涛","万壑松风","大夏龙雀","大秦锋镝","大商尘影","岚夜","大周岚夜","大晋星痕","大宋君岑","大唐昆岳","开天","混沌","辟地凿","太极图",
"盘古幡","混沌钟","盘龙","丽炎流星","乾元圣","须弥飞狼","穿日魔灵","苍炎白虹","紫霞碧蛇","魔光凤凰","凌霄银丝","暗黑羽仙","墨羽至高","诛仙琉璃斧","蚀肉迷魂","魔佰","紫阳天","儒风碎骨","千鸟万钧","玄雷紫焰","虎狼破灭","迎风问缘","紫虹玄雾","荒神百钟","玄阴狂龙",
"水仙灵蛇","青云燎原","如意","十镖生死兽心书","临枫","离火铃","闇雷","炼化","剑白","凤神龟","镯穿云极","乐绳龙牙","溷元钺","绝情紫影","钵雷","火厥阴","满月琉璃","狼王百炼","铃龙牙","映月","血炎","千虫","圈疯狂溷元","牌定禅","凤爪","大蛇","太虚","紫微","白虎",
"剑青","阳五毒","绝地三阳","剑飞雪","墨霜尺","暴虎","翠虹","印梵天","屠妖","钟毒龙","醉仙","剑究","极天","空剑","血龙","神圣","剑紫雷","破岳箫天","地封","魔钉灭神","踏浪","轮无踪","幻海戟","日月","白龙","带逍遥","渡生","灯凶","冥虹霞","尺青","霞冰","魄","鐗",
"天罡三星","如","无敌凤舞","大海昊天","天涯","关凤","九田","竹坝","红玉髓","涩谷","龙牙","鸿爪","盒天","外断岳谱","无定天元","抓断岳太初","帕暴","虎摩诃","挝断魂","惊龙印","玄雷皇锣","宇宙","暗锏","尺盖","世无","想鐗炼心","和合鼓","白龙","天神","匕佛屠仙",
"索花雨","九幽绫","问心八戟","奔雷","初阳旗","不动","盘古锣","飞花","龙穴","锤翔鹰","赤虹","鼓大蛇","大悲","铃灵","心惊","龙环赤云","青虎箫","青雷","鳞光尺","战狼","太阳剪长虹","开山棒","太乙","紫光索","金鼎","三星","杖白","虹","大千","弓地","煞冲","霄","禅",
"水","月","金","童","钺","蛟龙","昊","天扇清","风火莲","弓残","枫","毒蝶","锣巨鲸","天魔雷","惊天断脉","绫如意","月读","镜火","狐紫","焰锣","巽","风","九星","如意苍焰","如意鞭","圣天六卷","断筋","天王","帕","天马爆","碎伞","蚀魂","神意节","地藏无常","壶坎水",
"狂魔","灯慾","天逆","天帕","星陨","擎天","箫闼","婆龙","鳞弓","蚀日","异筋","索日月","龙须","枪灭","神闇","云衣","屠妖雁","过棒蛊","风月读钟","赤雷墨","羽笔闪","电龙须","斧不灭","穿云圈","大悲虎","箫流","离沧海","勾地","狱雷光","卷风火","万军","枪至尊","瑶",
"池","问世","天煞","匕冲","霄九","棍苍","狼封","穴牌","虎牙转","日刃","暗影","宝瓶","鞭朱","雀游","鱼衣","十方","缠身","枪倒海","冰锋","斧玄","羽百万","钵","战龙","金胎","壶镇妖","血灵","鞭轩辕","封神","钯","芙蓉赤羽","镖凤凰","七彩印","五行之","铲黄","沙白羽",
"琴清风","逍遥刺","水云云","浪箭","索命","噬金轮","百炼破","天刀","飞云无影","弓双","重噬","金弩","阿含","昊天弓皇","极千","灯旗","封魔浑天","笔梵","天地狱","绫残阳","血虹","棍无量","千万","印铁","翼络","灵带","悲","问妖","魔爪","缘生","卅","陆针","赤霞","止血",
"绳穿","日天","虎匕","烈风","无量","印虎爪","青羽刀","暗黑震","天棒","至高凝神","如意盘古","凤翔铲","勐虎金鐘","塔天照风","火带","毒龙天","罗环花","雨亿鞭","釽丽","炎镜","禅爆炎","天命带","涅槃","虎爪节","墨羽","荡剑衣","苍龙","贯清","尺玄羽","轩","辕","锤雄",
"狮百","足卷","渡生仟","卷赤霄血","手石绝世","天雷针","流明焚月","剑血","阳飞沙","矛飞鱼","昊天镯","水鸟无","相笔灭神","天日匕碧","霞星宿","瑟苍羽","夺魄卷","傲世","日月戟","至尊玄","月笔","擎雷","六壬索夜","叉龙","王钺","蛇蝎准提","衣缘","灭童子","珠雷霆",
"射日戎","伏羲","螺旋鐗","碧炎","奔雷印","飞虎五彩","阵迦蓝","追星杵","不二穿云","旗血月穿","山轮日月","迎风尺","赤焰牡羊","幡冰锋","无定戎屠神","紫霞","幡梁","尘穿","空戎","水仙","巨鯊","綑无相","白龙钩","旋锋","白龙针","紫雷","巨鲸","釽青","霞双鱼","镯青阳",
"飞鹤罩","绝地皇戟","勾陈","金虎","盒绝情","渡生","伞归元","焚魂锤","青焰九泉","锥影","月天命","盒刻骨","定天鐗","森罗封喉","环绝","叉虎王","北斗爪","镰鼬凝","血伞凶神","八卦石森","罗毒蛇锤","罗喉霹靂","伞毒蛾","血龟棒","惊雷渡","缘带星罗","赤铁印","魄刺苍狼",
"千虫鼓","残枫四塔","潇湘","慾天","戎神","风幽冥","匕丧","魂天","魔伞","冲虚","白日","针兽皇鹰","爪棒崩","至高钺龙捲","真空杵花蝶","游鱼","环蚀","肉四星瑟","极寒","流离镖","光明仁王","笔兽心飞","霜阵飞鱼","蚀日剑星","月灵","心锥","先天儒风","镜百炼金","翼瓶癸水",
"脂凝塔","龙牙杀","气牌玄","月卅壶","至尊玄光","禅紫雾","虎狼书","追风","白骨","镯真","元苍狼","活杀凶冥","盒八神血","焰旗","疾雷","凶","灵剑","同悲","不灭罩","紫光问","心枪","蚀日玄","鐗赤日","芙蓉槌天","鹤荡剑","鼓虚空","琉璃镜","极上极","上幡赤","星湿婆印",
"孤灯","太极杵","狂浪","白虹索","圣神噬魂","瓶烈","阳破浪","石狂","尸湿婆","图玄","云体","山万雷","琴不动","异筋","钩追日凤","翔剑","琉光","霓光","灯日月","灭神锣","太乙飞云","鞭天仙","金鼎箫","玉蟾六衣","赤星神梦","钩转生","凤凰尺","两仪盘","古槌","陀罗至尊",
"鼓银","翼阴","阳钉","同悲天","罡釽","金阳穿日","伞究","极惊","情塔","战豹","大易","菩萨悲","问钉阿含","鬼哭卷天","凤掩","月印","天蛛","影月","笛青涛紫","光槌极上飞","凤钟无间金","刚镯异魔","重生牌至","高幻海衣","凶虎","杀妖","圈无量","静心","节阿","含雷霆",
"铃绝","代丧","魂石","紫虹","雄狮綑","夺魄封","魔笔穿空","玉女铃","大日霹靂","镯夺魄","双形棒","兽皇灵蛇","牌摩诃","肆杵","紫云狂浪","令苍","雷神妖绳"}
function jiez:JieZhen1(names,infor,num)
   ZhenMgr:SetShapeNode(ZhenMgr:CreateShape(names,true),ZhenMgr:ShapeInfo2Nodes(infor));
   local a = jiez:shapeinfo(names)
   if a ~= nil then
      jiez:npclist1(num);
      ZhenMgr:CreateZhen(false,ZhenMgr.m_mapZhenShape[a],Npc)
   end
end
function jiez:npclist1(nums)
local fabaoxs1 = WorldLua:RandomFloat(0.1, 0.5);
local N = world.DayCount/ 100
local GJCS = WorldLua:RandomInt(10, 35);-- 攻击次数随机
local GS = WorldLua:RandomInt(3, 15);-- 个数
local BS = WorldLua:RandomInt(9, 49); -- 增殖倍速
local BS1 = WorldLua:RandomInt(0.5, 10); -- 增殖倍速
local GL = WorldLua:RandomFloat(0.5, 1.1); -- 增殖倍速
local BFB = WorldLua:RandomFloat(0.5, 0.99); -- 增殖倍速
local CXSJ = WorldLua:RandomInt(5, 30); -- 持续时间
local BWR = WorldLua:RandomInt(1,#BW+1);
local SHR = WorldLua:RandomInt(1,#SH+1);
local MXGR = WorldLua:RandomInt(1,#MXG+1);
local SFR = WorldLua:RandomInt(1,#SF+1);
local FW1 = WorldLua:RandomInt(1,3);
local FW2 = WorldLua:RandomInt(1,3);
local WXSXR = WorldLua:RandomInt(1,#WXSX+1);
local R = WorldLua:RandomInt(1,#FBN+1);

local i=1
local data ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.Sync_AddFlag,Desc ="特殊法宝：既然都说了是特殊法宝了，当然就不会给你啦",sParam1="FLAG_ITEM_RESURRECTION",nParam1 = "1"};
local data1 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.CantAttack,Desc = "秘宝★"..FBN[R+i]..":环绕自身，不会主动攻击"};
local data2 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddMirror,Desc = "秘宝★"..FBN[R+i]..": 每攻击"..GJCS.."出现"..GS.."道分型，持续"..CXSJ.."秒",nParam1= GJCS,nParam2 = GS,fParam1 = CXSJ};
local data3 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitSameFabaoAndEffect,Desc = "秘宝★"..FBN[R+i]..": 每攻击"..GJCS.."次使对手法宝失效",nParam1= GJCS,nParam2 ="1"};
local data4 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddDamage,Desc = "秘宝★"..FBN[R+i]..": 每攻击"..GJCS.."次攻击修行者本体，对"..BWMS[BWR].."造成直接伤害"..SHMS[SHR],nParam1= GJCS,sParam1 =BW[BWR],sParam2 =SH[SHR]};
local data5 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.FlyDamageAddP,Desc = "秘宝★"..FBN[R+i]..": 每飞行1秒，基础威力就提高"..BFB.."倍，返回后清空。",fParam1= BFB};
local data6 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitAddRecovery,Desc ="秘宝★"..FBN[R+i].."造成伤害的"..BFB.."%恢复法宝灵力",fParam1 = BFB};
local data7 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountAddSubColdDown,Desc = "秘宝★"..FBN[R+i]..": 每攻击"..GJCS.."减少"..GS.."秒cd",nParam1= GJCS,fParam1 = CXSJ};
local data8 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.MultiKillAddPowerUp,Desc = "秘宝★"..FBN[R+i]..": 每击杀一个生灵提高"..BS1.."倍伤害，最高"..GS.."层",nParam1= GS,fParam1 = BS1};
local data9 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.FristHitPowerUp,Desc = "秘宝★"..FBN[R+i]..": 第一击造成"..BS.."倍伤害",fParam1 = BS};
local data10 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.Sync_AddEquptDataModifier,Desc = "秘宝★"..FBN[R+i]..":提高技能上限或属性上限",sParam1 = MXG[MXGR]};
local data11 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.HitCountCostSkill,Desc = "秘宝★"..FBN[R+i]..": 每攻击"..GJCS.."释放一次术法技能",nParam1= GJCS,sParam1 = SF[SFR]};
local data12 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..BFB.."概率造成"..BS.."倍的伤害",fParam1= BFB,fParam2 = BS};
local data13 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对"..FWMS1[FW1].."造成"..BS.."倍的伤害",fParam1= GL,fParam2 = BS,nParam1= FW1};
local data14 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对"..FWMS1[FW1].."造成"..FWMS2[FW2].."的"..BFB.."%的伤害",fParam1= GL,fParam2 = BFB,nParam1= FW1,nParam2= FW2};
local data15 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对法宝与目标造成"..FWMS2[FW2].."的"..BFB.."%的伤害",fParam1= GL,fParam2 = BFB,nParam1="0",nParam2= FW2};
local data16 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对"..WXSXMS[WXSXR].."法宝与目标造成"..FWMS2[FW2].."的"..BFB.."%的伤害",fParam1= GL,fParam2 = BFB,nParam1="0",nParam2= FW2,sParam1=WXSX[WXSXR]};
local data17 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对"..WXSXMS[WXSXR].."法宝与目标造成"..BS.."倍的伤害",fParam1= GL,fParam2 = BS,nParam1="0",nParam2="0",sParam1=WXSX[WXSXR]};
local data18 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对"..WXSXMS[WXSXR].."的"..FWMS1[FW1].."造成"..BS.."倍的伤害",fParam1= GL,fParam2 = BS,nParam1= FW1,sParam1=WXSX[WXSXR]};
local data19 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 有"..GL.."%概率对"..WXSXMS[WXSXR].."的"..FWMS1[FW1].."造成"..FWMS2[FW2].."的"..BFB.."%的伤害",fParam1= GL,fParam2 = BFB,nParam1= FW1,nParam2= FW2,sParam1=WXSX[WXSXR]};
local data20 ={Kind = CS.XiaWorld.Fight.g_emFabaoSpecialAbility.AtkRateDamageAddp,Desc = "秘宝★"..FBN[R+i]..": 对"..WXSXMS[WXSXR].."的"..FWMS1[FW1].."造成"..BS.."倍的伤害",fParam1= "1",fParam2 = BS,nParam1= FW1,sParam1=WXSX[WXSXR]};
local fabaoxs = WorldLua:RandomFloat(0.25, 0.5);
	local RZZ = {"YGRabbit","YGChicken","YGWolf","YGSnake","YGBoar","YGBear","YGTurtle","YGFrog","YGCat","YGCattle","YGTiger","Human"}
	local RZZR = WorldLua:RandomInt(1,#RZZ+1);
   for i = 1,nums do 
      local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc(""..RZZ[RZZR].."");
      local sx = WorldLua:RandomInt(1 , 3);
      if sx == 1 then
         local name1= NpcMgr:GetRandomFullName("Human",g_emNpcSex.Male)
         npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
         npc:SetName(sName1);
      else
         local name1= NpcMgr:GetRandomFullName("Human",g_emNpcSex.Female)
         npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
         npc:SetName(sName1);
      end
	 
      CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1420+i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
      CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);

      npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
		npc.PropertyMgr.Practice:RandomTree();
      npc.PropertyMgr.Practice:MakeGold(30000000 * N * 0.05)
		npc:AddLing(99999999999);
		npc.PropertyMgr:SetPropertyOverwrite("NpcFight_FabaoNum",6)
		npc.Equip:UnEquipItem(CS.XiaWorld.g_emEquipType.AtkFabao,false) npc:AddLing(99999999999);
		local npcitems = npc.Bag.m_lisItems -- 获取NPC身上物品列表
		for i= 0,npcitems.Count-1 do -- 删除NPC 身上物品
		 ThingMgr:RemoveThing(npcitems[0])
		end
		local item1 =CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Weapon,0,12,100); -- 获取随机武器
		local item2 =CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Clothes,0,12,100); -- 获取随机衣服
		local item3 =CS.XiaWorld.ItemRandomMachine.RandomItem(CS.XiaWorld.g_emItemLable.Trousers,0,12,100); -- 获取随机裤子
		npc:EquipItem(item1);
		npc:EquipItem(item2);
		npc:EquipItem(item3);
		local list = npc.Equip:FindFabao();
		for k,v in pairs(list) do;
		npc.Equip:UnEquipItem(v);
		ThingMgr:RemoveThing(v);
		end
		local count = 0;
		while(count < 6) do
		for i=1,6,1 do
		local fabao = CS.XiaWorld.ItemRandomMachine.RandomFabao(CS.XiaWorld.g_emItemLable.FightFabao, 12, 100,10);
		fabao.Fabao:AddGodCount(36)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackPower,3000 * fabaoxs*N*0.05)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.MaxLing,2000 * fabaoxs*N*0.05)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.Scale,1)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.AttackRate,2.5 - fabaoxs1)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackResistance,12+12 * fabaoxs*N*0.05)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.KnockBackAddition,5+5 * fabaoxs*N*0.05)
		fabao.Fabao:SetProperty(CS.XiaWorld.Fight.g_emFaBaoP.LingRecover,1000 * fabaoxs*N*0.05)
		npc:EquipItem(fabao);
		if count <= 6 then
			local MBSJSR = WorldLua:RandomInt(0,21)
			if MBSJSR == 20 then
			fabao.Fabao:AddAbilityData(data20);
			elseif MBSJSR == 19 then
			fabao.Fabao:AddAbilityData(data19);
			elseif MBSJSR == 18 then
			fabao.Fabao:AddAbilityData(data18);
			elseif MBSJSR == 17 then
			fabao.Fabao:AddAbilityData(data17);
			elseif MBSJSR == 16 then
			fabao.Fabao:AddAbilityData(data16);
			elseif MBSJSR == 15 then
			fabao.Fabao:AddAbilityData(data15);
			elseif MBSJSR == 14 then
			fabao.Fabao:AddAbilityData(data14);
			elseif MBSJSR == 13 then
			fabao.Fabao:AddAbilityData(data13);
			elseif MBSJSR == 12 then
			fabao.Fabao:AddAbilityData(data12);
			elseif MBSJSR == 11 then
			fabao.Fabao:AddAbilityData(data11);
			elseif MBSJSR == 10 then
			fabao.Fabao:AddAbilityData(data10);
			elseif MBSJSR == 9 then
			fabao.Fabao:AddAbilityData(data9);
			elseif MBSJSR == 8 then
			fabao.Fabao:AddAbilityData(data8);
			elseif MBSJSR == 7 then
			fabao.Fabao:AddAbilityData(data7);
			elseif MBSJSR == 6 then
			fabao.Fabao:AddAbilityData(data6);
			elseif MBSJSR == 5 then
			fabao.Fabao:AddAbilityData(data5);
			elseif MBSJSR == 4 then
			fabao.Fabao:AddAbilityData(data4);
			elseif MBSJSR == 3 then
			fabao.Fabao:AddAbilityData(data3);
			elseif MBSJSR == 2 then
			fabao.Fabao:AddAbilityData(data2);
			elseif MBSJSR == 1 then
			fabao.Fabao:AddAbilityData(data1);
			else
			fabao.Fabao:AddAbilityData(data);
			end
		 end
		fabao:AddLing(fabao.MaxLing);
		count = count + 1;
		end
	  npc:AddLing(9999999999);
      npc.PropertyMgr.Practice:RandomTree();
      npc.FightBody.AutoNext = true;
      npc.FightBody.IsAttacker = true;
      npc.FightBody.AttackWait = 30;
      npc.FightBody.AttackTime = 10000;
	  npc:AddLing(9999999999);
      Npc[i] = npc
   end
   end
   return Npc
end

function jiez:JieZhen(names,infor,num)
   ZhenMgr:SetShapeNode(ZhenMgr:CreateShape(names,true),ZhenMgr:ShapeInfo2Nodes(infor));
   local a = jiez:shapeinfo(names)
   if a ~= nil then
      jiez:npclist(num);
      ZhenMgr:CreateZhen(false,ZhenMgr.m_mapZhenShape[a],Npc)
   end
end


function jiez:shapeinfo(names)
   for k,v in pairs(ZhenMgr.m_mapZhenShape) do
      if v.ShapeName == names then
         return k
      end
   end
   return
end

function jiez:npclist(nums)
	local RZZ = {"YGRabbit","YGChicken","YGWolf","YGSnake","YGBoar","YGBear","YGTurtle","YGFrog","YGCat","YGCattle","YGTiger","Human"}
	local RZZR = WorldLua:RandomInt(1,#RZZ+1);
   for i = 1,nums do 
      local npc = CS.XiaWorld.NpcRandomMechine.RandomNpc(""..RZZ[RZZR].."");
      local sx = WorldLua:RandomInt(1 , 3);
      if sx == 1 then
         local name1= NpcMgr:GetRandomFullName("Human",g_emNpcSex.Male)
         npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Male)
         npc:SetName(sName1);
      else
         local name1= NpcMgr:GetRandomFullName("Human",g_emNpcSex.Female)
         npc.PropertyMgr:SetSex(CS.XiaWorld.g_emNpcSex.Female)
         npc:SetName(sName1);
      end
	 
      CS.XiaWorld.NpcMgr.Instance:AddNpc(npc,1420+i,Map,CS.XiaWorld.Fight.g_emFightCamp.Enemy);
      CS.XiaWorld.ThingMgr.Instance:EquptNpc(npc,12,CS.XiaWorld.g_emNpcRichLable.Richest);

		npc.PropertyMgr:AddModifier("Modifier_SpNpc_BasePropertie");
      npc.PropertyMgr.Practice:Up2Disciple(CS.XiaWorld.PracticeMgr.Instance:RandomGong(),12);
		npc.PropertyMgr.Practice:RandomTree();
      npc.PropertyMgr.Practice:MakeGold(200000);
	  npc:AddLing(9999999999);
      npc.PropertyMgr.Practice:RandomTree();
      npc.FightBody.AutoNext = true;
      npc.FightBody.IsAttacker = true;
      npc.FightBody.AttackWait = 30;
      npc.FightBody.AttackTime = 10000;
	  npc:AddLing(9999999999);
      Npc[i] = npc
   end
   return Npc
end

-- GameMain:GetMod("jiez"):JieZhen("卡卡西","6|4|0|ZhenMainNode_School_19|5|3|1|ZhenNode_Lv9_1_1|7|4|5|ZhenNode_Lv9_1_1|6|5|3|ZhenNode_Lv9_2_1|6|6|3|ZhenNode_Lv9_2_1|6|7|2|ZhenNode_Lv9_3_4|5|6|1|ZhenNode_Lv9_2_1|7|7|5|ZhenNode_Lv9_2_1|4|5|1|ZhenNode_Lv9_2_1|8|7|5|ZhenNode_Lv9_2_1|3|4|1|ZhenNode_Lv9_1_1|9|7|5|ZhenNode_Lv9_1_1",13)