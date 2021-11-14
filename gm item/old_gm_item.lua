--Ìå·þÖ¸Òý
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\system_switch_config.lua");

g_szTitle = "<color=green>H­íng dÉn:<color>"
function OnUse(nItem)
	if 1 ~= IsExpSvrSystemOpen() then
		return
	end
	
	local tSay = {}
	local nRoute = GetPlayerRoute();
	if nRoute <= 0 then
		tSay = {
			"Gia nhËp m«n ph¸i/JoinRoute_UpdateLevel",
		}
	else
		tSay = {
			"Dän Kho §å/ClearBagAllItem",
			format("%s/getTiLi", "Håi Phôc ThÓ Lùc"),
			"Thao T¸c MËt TÞch/Get_Book",
			"Gäi Boss /BossTongHop",
			"NhËn trang bÞ BHTA/Get_TBBHTA",
			"NhËn trang bÞ ChiÕn Tr­êng/GetCT",
			"NhËn trang bÞ Phæ BiÕn/GetTBKhac",
			"NhËn trang bÞ Viªm §Õ/Get_TBVD",
			"NhËn trang bÞ Th«ng Dông/GetTB",
			"NhËn trang bÞ Kh¸c/Get_TBCu",
			"NhËn trang bÞ Tiªu Dïng/Get_TieuDung",
			"NhËn Danh HiÖu/Get_Danh_Hieu",
			"Thay ®æi hÖ ph¸i kh¸c/JoinRoute_UpdateLevel",
			"Chøc n¨ng kh¸c/Get_Orther",
		}
		if 3 == nRoute then
			tinsert(tSay, "NhËn Thiªn PhËt Ch©u vµ Ph¸ Ma Chó/Give_ZhuzhuZhouzhou")
		end
		if 6 == nRoute then
			tinsert(tSay, "NhËn ¸m KhÝ vµ C¬ Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			tinsert(tSay, "NhËn X¸ Lîi Kim §¬n/Give_Dandan")
		end		
		if 17 == nRoute then
			tinsert(tSay, "NhËn ChiÕn M·/Give_ZhanMa")
		end
		if 18 == nRoute then
			tinsert(tSay, "NhËn ChiÕn M· vµ Tô TiÔn/Give_Jiancu")
		end
		if 20 == nRoute then
			tinsert(tSay, "NhËn Phong Thi Phï/Give_Fengshifu")
		end
		if 21 == nRoute then
			tinsert(tSay, "NhËn Cæ/Give_GuGu")
		end
		if 30 == nRoute then
			tinsert(tSay, "NhËn §iªu/ling_nv_xiaodiao")
		end
	end
	tinsert(tSay, "Tho¸t/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
end
function maxtranphai()
	for i = 1,20 do

		while LevelUpSkill(1196) == 1 do

		end
		while LevelUpSkill(44) == 1 do

		end
		while LevelUpSkill(146) == 1 do

		end
		while LevelUpSkill(745) == 1 do

		end
		while LevelUpSkill(113) == 1 do

		end
		while LevelUpSkill(1032) == 1 do

		end
		while LevelUpSkill(74) == 1 do

		end
		while LevelUpSkill(774) == 1 do

		end
		while LevelUpSkill(775) == 1 do

		end
		while LevelUpSkill(732) == 1 do

		end
		while LevelUpSkill(159) == 1 do

		end
		while LevelUpSkill(89) == 1 do

		end
		while LevelUpSkill(102) == 1 do

		end
		while LevelUpSkill(1230) == 1 do

		end
		while LevelUpSkill(57) == 1 do

		end
		while LevelUpSkill(124) == 1 do

		end
		while LevelUpSkill(32) == 1 do

		end

		while LevelUpSkill(1096) == 1 do

		end

		while LevelUpSkill(1213)== 1 do

		end

		while LevelUpSkill(1066)== 1 do

		end
	end;
end


function Get_Orther()
	local szSay = {
		g_szTitle.."Lùa chän",
		"LuyÖn Max Skill TrÊn Ph¸i/maxtranphai",
		"Thao t¸c Kinh M¹ch/GetJingMai",
		"Thao t¸c thó c­ng/Pet_OP",
		"Ph¸t s¸ng vk/PS_vk",
		"Kü n¨ng sèng/Life_Skill",
		"Chøc n¨ng bang héi/TongOperation",
		"NhËn vµng bao/Get_VANGBAO1",
		"NhËn Ên chuyÓn sinh/Get_An",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end
function Get_An()
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
		return 0;
	end
                AddItem(2, 0, 30002, 1 ,1);
	WriteLogEx("Get_An","NhËn Ên:", 100, "Long tö Ên");
	AddItem(2, 0, 30005, 1, 1);
	WriteLogEx("Get_An","NhËn Ên:", 100, "Phông tö Ên");
	AddItem(2, 0, 30003, 1, 1);
	WriteLogEx("Get_An","NhËn Ên:", 100, "Hæ tö Ên");
	AddItem(2, 0, 30006, 1, 1);	
	WriteLogEx("Get_An","NhËn Ên:", 100, "¦ng tö Ên");
                AddItem(2, 0, 30001, 1, 1);	
	WriteLogEx("Get_An","NhËn Ên:", 100, "tö Ên");
end

function PS_vk()
	local szSay = {
		g_szTitle.."H·y lùa chän hiÖu øng vò khÝ!",
		"ThiÕt Cèt/PS_1",
		"B¸ch ChiÕn/PS_2",
		"Ch­íc NhËt/PS_3",
		"TuÊn DËt/PS_4",
		"§µo Lý/PS_5",
		"Danh Tóc/PS_6",
		"L¹c Hµ/PS_7",
		"L¨ng Tiªu/PS_8",
		"PhÇn V©n/PS_9",
		"§o¹n Giao/PS_10",
		"C¸i ThÕ/PS_11",
		"Ph¸ Qu©n/PS_12",
		"Hµo m«n/PS_13",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function PS_1()
	BindWeaponEffect("ThiÕt Cèt",1)	
end
function PS_2()
	BindWeaponEffect("B¸ch ChiÕn",1)	
end
function PS_3()
	BindWeaponEffect("Ch­íc NhËt",1)	
end
function PS_4()
	BindWeaponEffect("TuÊn DËt",1)	
end
function PS_5()
	BindWeaponEffect("§µo Lý",1)	
end
function PS_6()
	BindWeaponEffect("Danh Tóc",1)	
end
function PS_7()
	BindWeaponEffect("L¹c Hµ",1)	
end
function PS_8()
	BindWeaponEffect("L¨ng Tiªu",1)	
end
function PS_9()
	BindWeaponEffect("PhÇn V©n",1)	
end
function PS_10()
	BindWeaponEffect("§o¹n Giao",1)	
end
function PS_11()
	BindWeaponEffect("C¸i ThÕ",1)	
end
function PS_12()
	BindWeaponEffect("Ph¸ Qu©n",1)	
end
function PS_13()
	BindWeaponEffect("Hµo m«n",1)	
end

function Get_VANGBAO1()
	                AddItem(2,1,539,1);
	                AddItem(2,1,30229,1);
	                PlaySound("\\sound\\sound_i016.wav");
	                SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_TBBHTA()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bi Th«ng Thiªn/Get_ThongThien",
		"Trang bÞ H¾c B¹ch V« Song/Get_HBVS",
		"Trang bÞ V« Song ChiÕn ThÇn/Get_VSCT",
		"Trang bÞ Thiªn H¹ V« Song/Get_TB_THVS",
		"Trang bÞ Vâ L©m B¸ Chñ/Get_TB_VLBC",
		"CÆp ngäc Minh Tinh V« Cùc/Get_MTVC",
		"CÆp ngäc Thiªn §Þa NhËt NguyÖt/Get_TDNN",
		"CÆp ngäc Huy Hoµng Vinh Dù/Get_HHVD",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

function Get_TBCu()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ S­ M«n 1x/Get_TB_SM1",
		"Trang bÞ S­ M«n 5x/Get_TB_SM5",
		"Trang bÞ S­ M«n 7x/Get_TB_SM7",
		"Trang bÞ S­ M«n 9x/Get_TB_SM9",
		"Trang bÞ Tµng KiÕm 5x/Get_TB_TK5",
		"Trang bÞ Tµng KiÕm 7x/Get_TB_TK7",
		"Trang bÞ Tµng KiÕm 9x/Get_TB_TK9",
		"Ngäc béi Boss/Get_NB_Boss",
		"Ngäc béi Th¸i H­/Get_NB_ThaiHu",
		"Ngäc béi Cöu Thiªn/Get_NB_CuuThien",
		"Ra khái/nothing",
	};	
	SelectSay(szSay);	
end

function Get_TBVD()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ B¹ch Kim Viªm §Õ/Get_TB_BKVD",
		"Trang bÞ Thiªn Chi Tµng KiÕm/Get_TB_TCTK",
		"Trang bÞ Thiªn Chi Viªm §Õ/Get_TB_TCVD",
		"Trang bÞ Viªm §Õ/Get_TB_VD",
		"Trang bÞ Tö Quang Viªm §Õ/Get_TB_TQVD",
		"Trang bÞ Tö Quang N©ng CÊp/Get_TB_TQ2",
		"Trang bÞ Hiªn Viªn/Get_TB_HienVien",
		"Trang bÞ Tö Quang/Get_TB_TQ",
		"Vò KhÝ §¹i ViÖt Yªn/Get_VK_VietYen2",
		"Vò KhÝ ViÖt Yªn/Get_VK_VietYen",
		"Vò KhÝ Bé Phi Yªn/Get_VK_BoPhiYen",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

function GetTBKhac()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ S¸t Tinh/Get_LBSatTinh",
		"Trang bÞ Èm HuyÕt/Get_TB_AmHuyet",
		"Trang bÞ Hµo HiÖp V« H¹/Get_TB_HHVH",
		"Trang bÞ Hµo HiÖp Th­êng/Get_TB_HH",
		"Trang bÞ Linh §å/Get_TB_LinhDo",
		"Trang bÞ ChiÕn Cuång/Get_TB_ChienCuong",
		"Trang bÞ DiÖu D­¬ng/Get_TB_DieuDuong",
		"Trang bÞ H¹o NguyÖt/Get_TB_HaoNguyet",
		"Trang bÞ Cöu Ch©u/Get_TB_CuuChau",
		"Trang bÞ Thiªn NghÜa/Get_TB_ThienNghia",
		"Trang bÞ Tinh Kh¾c/Get_TB_TinhKhac",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

function Get_TB_TK9()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 95 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	for i=36,40 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_NB_Boss()
	for i=22,28 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	for i=41,44 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end

	AddItem(0,102,8021,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102,8022,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_NB_ThaiHu()
	for i=29,35 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_NB_CuuThien()
	for i=129,135 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_BKVD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30013 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_TB_TCTK()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30001 + GetBody() - 1;
	local nBody2 = GetBody();
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	if nBody2 == 1 then
		for i=30001,30003 do
			AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
		end
	end
	
	if nBody2 == 2 then
		for i=30004,30006 do
			AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
		end
	end
	
	if nBody2 == 3 then
		for i=30007,30009 do
			AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
		end
	end
	
	if nBody2 == 4 then
		for i=30010,30012 do
			AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
		end
	end
end

function Get_TB_TCVD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 8055 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_TB_VD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 8001 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_TB_TQVD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 8051 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_TB_TQ2()
		if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= GetBody() ;
	
	if nRoute == 2 then --TL§
		AddItem(0, 3, 8851, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 5, 8852, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8851, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8852, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 8853;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8853, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8854, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 8854;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8855, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8856, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 8855;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8857, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8858, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8856;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8859, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8860, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 8857;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8861, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8862, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 8858;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8863, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8864, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 8859;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8865, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8866, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 8860;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8867, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8868, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 8861;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8869, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8870, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 8862;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8871, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8872, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 8863;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8873, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8874, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 8864;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8875, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8876, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 8865;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8877, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8878, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 8866;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8879, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8880, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 8870;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8887, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8888, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 8871;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8889, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8890, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_HienVien()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= GetBody() ;
	
	if nRoute == 2 then --TL§
		AddItem(0, 3, 8801, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 5, 8802, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8801, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8802, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 8803;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8803, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8804, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 8804;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8805, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8806, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 8805;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8807, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8808, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8806;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8809, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8810, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 8807;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8811, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8812, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 8808;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8813, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8814, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 8809;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8815, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8816, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 8810;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8817, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8818, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 8811;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8819, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8820, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 8812;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8821, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8822, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 8813;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8823, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8824, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 8814;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8825, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8826, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 8815;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8827, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8828, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 8816;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8829, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8830, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 8820;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8837, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8838, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 8821;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8839, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8848, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_TQ()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2355 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	for i=2360,2374 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 2 then --TL§
		AddItem(0, 3, 2351, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 5, 2352, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 2353;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 2354;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 2355;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 2356;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 2357;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 2358;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 2359;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 2360;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 2361;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 2362;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 2363;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 2364;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 2365;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 2366;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 2367;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 2368;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 2369;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 2370;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_VK_VietYen2()
	if 1 ~= gf_Judge_Room_Weight(1, 1, g_szTitle) then
		return 0;
	end
	
	local nBody = GetBody();
	local nRoute = GetPlayerRoute();
	
	if nRoute == 2 then --TL§
		AddItem(0, 3, 30016, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 5, 30017, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 30018;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 30019;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 30020;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30021;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 30022;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 30023;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB =30024;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 30025;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 30026;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 30027;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 30028;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 30029;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 30030;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_VK_VietYen()
	if 1 ~= gf_Judge_Room_Weight(1, 1, g_szTitle) then
		return 0;
	end
	
	local nBody = GetBody();
	local nRoute = GetPlayerRoute();
	
	if nRoute == 2 then --TL§
		AddItem(0, 3, 30001, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 5, 30002, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 30003;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 30004;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 30005;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30006;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 30007;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 30008;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB =30009;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 30010;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 30011;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 30012;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 30013;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 30014;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 30015;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_VK_BoPhiYen()
	if 1 ~= gf_Judge_Room_Weight(1, 1, g_szTitle) then
		return 0;
	end
	
	local nBody = GetBody();
	local nRoute = GetPlayerRoute();
	
	if nRoute == 2 then --TL§
		AddItem(0, 3, 6001, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 5, 6002, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 6003;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 6004;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 6005;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 6006;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 6007;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 6008;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 6009;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 6010;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 6011;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 6012;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 6013;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 6014;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 6015;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_AmHuyet()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 20012 + GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	AddItem(0, 102, 31272, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 102, 31273, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 102, 31414, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 102, 31415, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	Get_VK_AH();
end

function Get_VK_AH()
	if 1 ~= gf_Judge_Room_Weight(1, 1, g_szTitle) then
		return 0;
	end
	
	local nBody = GetBody();
	local nRoute = GetPlayerRoute();
	
	if nRoute == 2 then --TL§
		local nA = 3;
		local nB = 30884;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 30885;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 30886;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 30887;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30888;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 30889;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 30890;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 30891;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 30892;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 30893;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 30894;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 30895;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 30896;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 30897;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 308988;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 30899;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 26 then --MGTB
		local nA = 9;
		local nB = 30900;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 30901;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 30902;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 30903;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_HHVH()
	AddItem(2, 1, 30947 ,1);
	AddItem(2, 1, 30948 ,1);
	AddItem(2, 1, 30949 ,1);
	AddItem(2, 1, 30977 ,1);
	AddItem(2, 1, 30976 ,1);
end

function Get_TB_HH()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end
	for i=30223,30227 do 
		AddItem(0,102,i,1,1,-1,-1,-1,-1,-1,-1,1)
	end
	local nRoute	= GetPlayerRoute();
	local nBody 	= 20004 + GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	Get_VK_HH();
end

function Get_VK_HH()
	if 1 ~= gf_Judge_Room_Weight(1, 1, g_szTitle) then
		return 0;
	end
	
	local nBody = GetBody();
	local nRoute = GetPlayerRoute();
	
	if nRoute == 2 then --TL§
		local nA = 3;
		local nB = 30724;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 30725;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 30726;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 30727;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30728;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 30729;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 30730;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 30731;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 30732;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 30733;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 30734;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 30735;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 30736;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 30737;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 30738;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 30739;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 26 then --MGTB
		local nA = 9;
		local nB = 30740;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 30741;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 30742;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 30743;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_LinhDo()
    if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		for i=30221,30222 do 
			AddItem(0,102,i,1,1,-1,-1,-1,-1,-1,-1,1)
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		if nRoute == 2 then
            AddItem(0,3,30207,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 3 then
            AddItem(0,8,30208,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 4 then
            AddItem(0,0,30209,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 6 then
            AddItem(0,1,30210,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 8 then
            AddItem(0,2,30211,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 9 then
            AddItem(0,10,30212,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 11 then
            AddItem(0,0,30213,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 12 then
            AddItem(0,5,30214,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 14 then
            AddItem(0,2,30215,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 15 then
            AddItem(0,9,30216,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 17 then
            AddItem(0,6,30217,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 18 then
            AddItem(0,4,30218,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 20 then
            AddItem(0,7,30219,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 21 then
            AddItem(0,11,30220,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 23 then
            AddItem(0,2,30221,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 25 then
            AddItem(0,3,30761,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 26 then
            AddItem(0,9,30761,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 27 then
            AddItem(0,11,30762,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 29 then
            AddItem(0,13,30222,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nRoute == 30 then
            AddItem(0,12,30223,1,1,-1,-1,-1,-1,-1,-1,-1,15)		
		end 
		if nBody == 1 then
			AddItem(0,101,30235,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30239,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30243,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,100,30235,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,103,30235,1,1,-1,-1,-1,-1,-1,-1,-1,15)
		end
		if nBody == 2 then
			AddItem(0,101,30236,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30240,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30244,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,100,30236,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,103,30236,1,1,-1,-1,-1,-1,-1,-1,-1,15)
		end
		if nBody == 3 then
			AddItem(0,101,30237,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30241,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30245,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,100,30237,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,103,30237,1,1,-1,-1,-1,-1,-1,-1,-1,15)
		end
		if nBody == 4 then
			AddItem(0,101,30238,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30242,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,101,30246,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,100,30238,1,1,-1,-1,-1,-1,-1,-1,-1,15)
			AddItem(0,103,30238,1,1,-1,-1,-1,-1,-1,-1,-1,15)
		end
end

function Get_TB_ChienCuong()
	if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 15;
		if nRoute == 2 and nBody ==1 then 
				AddItem(0,100,30143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,30143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 2 and nBody ==2 then 
				AddItem(0,100,30144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,30144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==1 then 
				AddItem(0,100,30147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,30147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==2 then 
				AddItem(0,100,30148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,30148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==1 then 
				AddItem(0,100,30145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,30145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==2 then 
				AddItem(0,100,30146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,30146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==1 then 
				AddItem(0,100,30149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,30149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==2 then 
				AddItem(0,100,30150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,30150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==3 then 
				AddItem(0,100,30151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,30151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==4 then 
				AddItem(0,100,30152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,30152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==3 then 
				AddItem(0,100,30153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,30153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==4 then 
				AddItem(0,100,30154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,30154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 9 and nBody ==3 then 
				AddItem(0,100,30155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,30155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 9 and nBody ==4 then 
				AddItem(0,100,30156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,30156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==1 then 
				AddItem(0,100,30157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,30157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==2 then 
				AddItem(0,100,30158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,30158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==3 then 
				AddItem(0,100,30159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,30159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==4 then 
				AddItem(0,100,30160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,30160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 12 and nBody ==1 then 
				AddItem(0,100,30161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,30161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==2 then 
				AddItem(0,100,30162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,30162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 12 and nBody ==3 then 
				AddItem(0,100,30163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,30163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==4 then 
				AddItem(0,100,30164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,30164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==1 then 
				AddItem(0,100,30165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,30165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==2 then 
				AddItem(0,100,30166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,30166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==3 then 
				AddItem(0,100,30167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,30167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==4 then 
				AddItem(0,100,30168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,30168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==1 then 
				AddItem(0,100,30169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,30169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==2 then 
				AddItem(0,100,30170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,30170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==3 then 
				AddItem(0,100,30171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,30171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==4 then 
				AddItem(0,100,30172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,30172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==1 then 
				AddItem(0,100,30173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,30173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==2 then 
				AddItem(0,100,30174,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30174,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30174,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,30174,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==3 then 
				AddItem(0,100,30175,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30175,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30175,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,30175,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==4 then 
				AddItem(0,100,30176,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30176,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30176,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,30176,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 18 and nBody ==1 then 
				AddItem(0,100,30177,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30177,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30177,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,30177,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==2 then 
				AddItem(0,100,30178,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30178,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30178,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,30178,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 18 and nBody ==3 then 
				AddItem(0,100,30179,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30179,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30179,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,30179,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==4 then 
				AddItem(0,100,30180,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30180,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30180,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,30180,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 20 and nBody ==1 then 
				AddItem(0,100,30181,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30181,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30181,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,30181,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==2 then 
				AddItem(0,100,30182,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30182,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30182,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,30182,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 20 and nBody ==3 then 
				AddItem(0,100,30183,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30183,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30183,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,30183,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==4 then 
				AddItem(0,100,30184,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30184,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30184,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,30184,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==1 then 
				AddItem(0,100,30185,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30185,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30185,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,30185,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==2 then 
				AddItem(0,100,30186,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30186,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30186,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,30186,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==3 then 
				AddItem(0,100,30187,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30187,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30187,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,30187,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==4 then 
				AddItem(0,100,30188,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30188,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30188,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,30188,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 23 and nBody ==1 then 
				AddItem(0,100,30189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,30189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 23 and nBody ==2 then 
				AddItem(0,100,30190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,30190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 25 and nBody ==1 then 
				AddItem(0,100,30191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,30191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==2 then 
				AddItem(0,100,30192,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30192,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30192,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,30192,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==3 then 
				AddItem(0,100,30193,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30193,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30193,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,30193,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==4 then 
				AddItem(0,100,30194,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30194,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30194,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,30194,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 26 and nBody ==1 then 
				AddItem(0,100,30195,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30195,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30195,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,30195,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==2 then 
				AddItem(0,100,30196,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30196,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30196,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,30196,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==3 then 
				AddItem(0,100,30197,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30197,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30197,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,30197,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==4 then 
				AddItem(0,100,30198,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30198,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30198,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,30198,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 27 and nBody ==1 then 
				AddItem(0,100,30199,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30199,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30199,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,30199,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==2 then 
				AddItem(0,100,30200,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30200,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30200,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,30200,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==3 then 
				AddItem(0,100,30201,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30201,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30201,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,30201,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==4 then 
				AddItem(0,100,30202,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30202,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30202,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,30202,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 29 and nBody ==3 then 
				AddItem(0,100,30203,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30203,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30203,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,30203,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 29 and nBody ==4 then 
				AddItem(0,100,30204,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30204,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30204,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,30204,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==3 then 
				AddItem(0,100,30205,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30205,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30205,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,30205,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==4 then 
				AddItem(0,100,30206,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,30206,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,30206,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,30206,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
end

function Get_TB_DieuDuong()
		if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
				AddItem(0,102,3176,1,1,-1,-1,-1,-1,-1,-1)
				AddItem(0,102,3178,1,1,-1,-1,-1,-1,-1,-1)
				AddItem(0,102,3180,1,1,-1,-1,-1,-1,-1,-1)
				AddItem(0,102,3182,1,1,-1,-1,-1,-1,-1,-1)
				AddItem(0,102,3184,1,1,-1,-1,-1,-1,-1,-1)
		for i=3185,3194 do
				AddItem(0,102,i,1,1,-1,-1,-1,-1,-1,-1)
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 15;
		if nRoute == 2 and nBody ==1 then 
				AddItem(0,100,3128,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3128,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3128,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,8992,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 2 and nBody ==2 then 
				AddItem(0,100,3129,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3129,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3129,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,8992,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==1 then 
				AddItem(0,100,3132,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3132,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3132,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,8994,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==2 then 
				AddItem(0,100,3133,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3133,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3133,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,8994,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==1 then 
				AddItem(0,100,3130,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3130,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3130,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8993,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==2 then 
				AddItem(0,100,3131,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3131,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3131,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8993,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==1 then 
				AddItem(0,100,3134,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3134,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3134,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==2 then 
				AddItem(0,100,3135,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3135,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3135,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==3 then 
				AddItem(0,100,3136,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3136,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3136,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==4 then 
				AddItem(0,100,3137,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3137,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3137,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==3 then 
				AddItem(0,100,3138,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3138,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3138,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==4 then 
				AddItem(0,100,3139,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3139,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3139,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 9 and nBody ==3 then 
				AddItem(0,100,3140,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3140,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3140,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,8997,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 9 and nBody ==4 then 
				AddItem(0,100,3141,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3141,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3141,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,8997,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==1 then 
				AddItem(0,100,3142,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3142,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3142,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==2 then 
				AddItem(0,100,3143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==3 then 
				AddItem(0,100,3144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==4 then 
				AddItem(0,100,3145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 12 and nBody ==1 then 
				AddItem(0,100,3146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==2 then 
				AddItem(0,100,3147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 12 and nBody ==3 then 
				AddItem(0,100,3148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==4 then 
				AddItem(0,100,3149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==1 then 
				AddItem(0,100,3150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==2 then 
				AddItem(0,100,3151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==3 then 
				AddItem(0,100,3152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==4 then 
				AddItem(0,100,3153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==1 then 
				AddItem(0,100,3154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==2 then 
				AddItem(0,100,3155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==3 then 
				AddItem(0,100,3156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==4 then 
				AddItem(0,100,3157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==1 then 
				AddItem(0,100,3158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==2 then 
				AddItem(0,100,3159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==3 then 
				AddItem(0,100,3160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==4 then 
				AddItem(0,100,3161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 18 and nBody ==1 then 
				AddItem(0,100,3162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==2 then 
				AddItem(0,100,3163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 18 and nBody ==3 then 
				AddItem(0,100,3164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==4 then 
				AddItem(0,100,3165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 20 and nBody ==1 then 
				AddItem(0,100,3166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==2 then 
				AddItem(0,100,3167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 20 and nBody ==3 then 
				AddItem(0,100,3168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==4 then 
				AddItem(0,100,3169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==1 then 
				AddItem(0,100,3170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==2 then 
				AddItem(0,100,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==3 then 
				AddItem(0,100,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==4 then 
				AddItem(0,100,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 23 and nBody ==1 then 
				AddItem(0,100,3174,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3174,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3174,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,9006,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 23 and nBody ==2 then 
				AddItem(0,100,3175,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3175,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3175,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,9006,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==1 then 
				AddItem(0,100,3176,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3176,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3176,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,9007,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==2 then 
				AddItem(0,100,3177,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3177,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3177,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,9007,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==3 then 
				AddItem(0,100,3178,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3178,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3178,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,9007,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==4 then 
				AddItem(0,100,3179,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3179,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3179,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,9007,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 26 and nBody ==1 then 
				AddItem(0,100,3180,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3180,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3180,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,9008,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==2 then 
				AddItem(0,100,3181,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3181,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3181,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,9008,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==3 then 
				AddItem(0,100,3182,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3182,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3182,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,9008,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==4 then 
				AddItem(0,100,3183,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3183,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3183,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,9008,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 27 and nBody ==1 then 
				AddItem(0,100,3184,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3184,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3184,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,9009,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==2 then 
				AddItem(0,100,3185,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3185,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3185,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,9009,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==3 then 
				AddItem(0,100,3186,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3186,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3186,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,9009,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==4 then 
				AddItem(0,100,3187,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3187,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3187,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,9009,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 29 and nBody ==3 then 
				AddItem(0,100,3188,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3188,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3188,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,9010,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 29 and nBody ==4 then 
				AddItem(0,100,3189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,9010,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==3 then 
				AddItem(0,100,3190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,9011,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==4 then 
				AddItem(0,100,3191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,9011,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
end

function Get_TB_HaoNguyet()
		if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		AddItem(0,102,3175,1,1,-1,-1,-1,-1,-1,-1, 1)
		AddItem(0,102,3177,1,1,-1,-1,-1,-1,-1,-1, 1)
		AddItem(0,102,3179,1,1,-1,-1,-1,-1,-1,-1, 1)
		AddItem(0,102,3181,1,1,-1,-1,-1,-1,-1,-1, 1)
		AddItem(0,102,3183,1,1,-1,-1,-1,-1,-1,-1, 1)
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 15;
		if nRoute == 2 and nBody ==1 then 
				AddItem(0,100,3064,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3064,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3064,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,8972,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 2 and nBody ==2 then 
				AddItem(0,100,3065,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3065,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3065,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,8972,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==1 then 
				AddItem(0,100,3068,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3068,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3068,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,8974,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==2 then 
				AddItem(0,100,3069,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3069,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3069,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,8974,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==1 then 
				AddItem(0,100,3066,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3066,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3066,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8973,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==2 then 
				AddItem(0,100,3067,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3067,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3067,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8973,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==1 then 
				AddItem(0,100,3070,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3070,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3070,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8975,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==2 then 
				AddItem(0,100,3071,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3071,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3071,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8975,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==3 then 
				AddItem(0,100,3072,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3072,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3072,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8975,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==4 then 
				AddItem(0,100,3073,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3073,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3073,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8975,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==3 then 
				AddItem(0,100,3074,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3074,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3074,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8976,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==4 then 
				AddItem(0,100,3075,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3075,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3075,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8976,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 9 and nBody ==3 then 
				AddItem(0,100,3076,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3076,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3076,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,8977,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 9 and nBody ==4 then 
				AddItem(0,100,3077,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3077,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3077,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,8977,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==1 then 
				AddItem(0,100,3078,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3078,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3078,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8978,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==2 then 
				AddItem(0,100,3079,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3079,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3079,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8978,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==3 then 
				AddItem(0,100,3080,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3080,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3080,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8978,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==4 then 
				AddItem(0,100,3081,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3081,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3081,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8978,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 12 and nBody ==1 then 
				AddItem(0,100,3082,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3082,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3082,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8979,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==2 then 
				AddItem(0,100,3083,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3083,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3083,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8979,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 12 and nBody ==3 then 
				AddItem(0,100,3084,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3084,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3084,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8979,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==4 then 
				AddItem(0,100,3085,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3085,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3085,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8979,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==1 then 
				AddItem(0,100,3086,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3086,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3086,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8980,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==2 then 
				AddItem(0,100,3087,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3087,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3087,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8980,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==3 then 
				AddItem(0,100,3088,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3088,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3088,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8980,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==4 then 
				AddItem(0,100,3089,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3089,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3089,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8980,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==1 then 
				AddItem(0,100,3090,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3090,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3090,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,8981,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==2 then 
				AddItem(0,100,3091,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3091,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3091,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,8981,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==3 then 
				AddItem(0,100,3092,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3092,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3092,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,8981,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==4 then 
				AddItem(0,100,3093,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3093,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3093,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,8981,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==1 then 
				AddItem(0,100,3094,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3094,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3094,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,8982,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==2 then 
				AddItem(0,100,3095,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3095,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3095,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,8982,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==3 then 
				AddItem(0,100,3096,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3096,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3096,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,8982,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==4 then 
				AddItem(0,100,3097,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3097,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3097,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,8982,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 18 and nBody ==1 then 
				AddItem(0,100,3098,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3098,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3098,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,8983,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==2 then 
				AddItem(0,100,3099,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3099,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3099,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,8983,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 18 and nBody ==3 then 
				AddItem(0,100,3100,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3100,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3100,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,8983,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==4 then 
				AddItem(0,100,3101,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3101,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3101,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,8983,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 20 and nBody ==1 then 
				AddItem(0,100,3102,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3102,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3102,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,8984,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==2 then 
				AddItem(0,100,3103,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3103,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3103,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,8984,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 20 and nBody ==3 then 
				AddItem(0,100,3104,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3104,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3104,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,8984,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==4 then 
				AddItem(0,100,3105,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3105,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3105,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,8984,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==1 then 
				AddItem(0,100,3106,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3106,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3106,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,8985,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==2 then 
				AddItem(0,100,3107,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3107,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3107,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,8985,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==3 then 
				AddItem(0,100,3108,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3108,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3108,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,8985,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==4 then 
				AddItem(0,100,3109,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3109,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3109,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,8985,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 23 and nBody ==1 then 
				AddItem(0,100,3110,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3110,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3110,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,8986,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 23 and nBody ==2 then 
				AddItem(0,100,3111,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3111,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3111,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,8986,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==1 then 
				AddItem(0,100,3112,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3112,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3112,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,8987,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==2 then 
				AddItem(0,100,3113,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3113,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3113,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,8987,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==3 then 
				AddItem(0,100,3114,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3114,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3114,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,8987,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 25 and nBody ==4 then 
				AddItem(0,100,3115,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3115,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3115,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,3,8987,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 26 and nBody ==1 then 
				AddItem(0,100,3116,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3116,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3116,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,8988,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==2 then 
				AddItem(0,100,3117,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3117,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3117,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,8988,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==3 then 
				AddItem(0,100,3118,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3118,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3118,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,8988,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 26 and nBody ==4 then 
				AddItem(0,100,3119,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3119,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3119,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,9,8988,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 27 and nBody ==1 then 
				AddItem(0,100,3120,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3120,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3120,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,8989,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==2 then 
				AddItem(0,100,3121,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3121,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3121,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,8989,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==3 then 
				AddItem(0,100,3122,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3122,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3122,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,8989,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 27 and nBody ==4 then 
				AddItem(0,100,3123,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3123,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3123,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,11,8989,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 29 and nBody ==3 then 
				AddItem(0,100,3124,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3124,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3124,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,8990,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 29 and nBody ==4 then 
				AddItem(0,100,3125,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3125,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3125,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,8990,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==3 then 
				AddItem(0,100,3126,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3126,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3126,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,8991,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==4 then 
				AddItem(0,100,3127,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3127,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3127,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,8991,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
end

function Get_TB_CuuChau()
	if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3056 + GetBody() - 1;
	local nBody2 	= 3060 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,103, nBody2,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody2,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody2,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	if nRoute == 2 then --TL§
		local nA = 3;
		local nB = 8932;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3135, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3136, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 8934;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3137, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3138, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 8933;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3139, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3140, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 8935;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3141, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3142, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8936;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3143, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3144, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 8937;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3145, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3146, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 8938;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3147, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3148, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 8939;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3149, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3150, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 8940;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3151, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3152, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 8941;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3153, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3154, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 8942;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3155, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3156, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 8943;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3157, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3158, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 8944;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3159, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3160, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 8945;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3161, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3162, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 8946;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3163, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3164, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 8947;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3165, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3166, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 26 then --MGTB
		local nA = 9;
		local nB = 8948;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3167, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3168, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 8949;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3169, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3170, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 8950;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3171, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3172, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 8951;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3173, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3174, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_ThienNghia()
	if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= GetBody() ;
	local nID;
	if nBody == 1 then
		nID=3034;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nBody == 2 then
		nID=3040;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nBody == 3 then
		nID=3046;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nBody == 4 then
		nID=3052;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	local nRing = 3122;
	AddItem(0,102, nRing,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+6,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+9,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	if nRoute == 2 then --TL§
		local nA = 3;
		local nB = 8894;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 8910;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 8876;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 8880;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8887;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 8919;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 8877;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 8901;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 8888;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 8915;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 8904;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 8898;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 8907;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 8924;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 8889;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 8895;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 26 then --MGTB
		local nA = 9;
		local nB = 8916;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 8925;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3169, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3170, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 8931;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3171, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3172, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 8928;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3173, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3174, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_TinhKhac()
	if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= GetBody() ;
	local nID;
	if nBody == 1 then
		nID=3033;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nBody == 2 then
		nID=3039;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nBody == 3 then
		nID=3045;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nBody == 4 then
		nID=3051;
		AddItem(0,103, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID,1,1, -1,-1,-1,-1,-1,-1,1,15);
		
		AddItem(0,103, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,101, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0,100, nID+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
	
	local nRing = 3121;
	AddItem(0,102, nRing,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+3,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+6,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+9,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nRing+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	if nRoute == 2 then --TL§
		local nA = 3;
		local nB = 8892;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 8908;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 8874;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 8878;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8884;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 8917;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 8875;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 8989;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 8888;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 8913;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 8902;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 8896;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 8905;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 8922;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 8886;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 8893;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 26 then --MGTB
		local nA = 9;
		local nB = 8914;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 8923;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3169, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3170, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 8929;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3171, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3172, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 8926;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3173, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3174, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_BKVD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30013+ GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--TRANG BI THONG THUONG
function GetTB()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn Ên KX6/Get_AnKX6",
		"NhËn KX6 opt ngÉu nhiªn/Get_KimXa",
		"NhËn ngo¹i trang khñng/Get_NgoaiTrang",
		"Trang bÞ Buff 140%/Get_Buff",
		"Ngo¹i trang Buff 140%/Get_NT_Buff",
		"NhËn thó c­ìi/Get_house",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

function Get_AnKX6()
	AddItem(2, 1, 31286,1) ;	
end

function Get_TB_THVS()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30207 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_TB_VLBC()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30025+ GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_VSCT()
	if 1 ~= gf_Judge_Room_Weight(30, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30651 + GetBody() - 1;
	for i = 1,10 do
		AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_HBVS()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 20020 + GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
end

function Get_LBSatTinh() 	
	AddItem(2, 1, 50000 ,1);	
	AddItem(2, 1, 50001 ,1);	
	AddItem(2, 1, 50002 ,1);	
	AddItem(2, 1, 50004 ,1);	
	AddItem(2, 1, 50003 ,1);	
end 

function Get_ThongThien()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 20016 + GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	AddItem(0, 102, 20000, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 102, 20001, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 102, 20002, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 102, 20003, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	Get_VK_TT();
end

function Get_VK_TT()
	if 1 ~= gf_Judge_Room_Weight(1, 1, g_szTitle) then
		return 0;
	end
	
	local nBody = GetBody();
	local nRoute = GetPlayerRoute();
	
	if nRoute == 2 then --TL§
		local nA = 3;
		local nB = 20000;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 3 then --TLT
		local nA = 8;
		local nB = 20001;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 4 then --TLQ
		local nA = 0;
		local nB = 20002;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 6 then --§M
		local nA = 1;
		local nB = 20003;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 20004;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM§
		local nA = 10;
		local nB = 20005;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 11 then --CBQ
		local nA = 0;
		local nB = 20006;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 12 then --CBB
		local nA = 5;
		local nB = 20007;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 14 then --V§K
		local nA = 2;
		local nB = 20008;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V§B
		local nA = 9;
		local nB = 20009;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 17 then --DGT
		local nA = 6;
		local nB = 20010;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 18 then --DGC
		local nA = 4;
		local nB = 20011;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 20 then --H§
		local nA = 7;
		local nB = 20012;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T§
		local nA = 11;
		local nB = 20013;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 23 then --CLTS
		local nA = 2;
		local nB = 20014;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 25 then --MGTC
		local nA = 3;
		local nB = 20015;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 26 then --MGTB
		local nA = 9;
		local nB = 20016;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 27 then --MGHN
		local nA = 11;
		local nB = 20017;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 29 then --TYVT
		local nA = 13;
		local nB = 20018;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 30 then --TYLN
		local nA = 12;
		local nB = 20019;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
end

function Get_NgoaiTrang()
	local szSay = {
		g_szTitle.."Lùa chän trang b?",
		"Ngo¹i trang ¢m Hån/Get_NT_AmHon",
		"Ngo¹i trang Th«ng Thiªn/Get_NT_ThongThien",
		"Ngo?i trang Ng¹o NghÔ/Get_NT_NgaoNghe",
		"Ngo¹i trang Thiªn Vò Cµ Sa/Get_NT_TVCS",
		"Ngo¹i trang VÊn Tinh/Get_NT_VanTinh",
		"Ngo¹i trang Xu©n Y/Get_NT_XuanY",
		"Ngo¹i trang Khæng T­íc/Get_NT_KhongTuoc",
		"Ngo¹i trang DiÖp Th­îng Thu/Get_NT_DiepThuongThu",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_NT_ThongThien()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 1053 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_AmHon()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 680 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_TVCS()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 713 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_VanTinh()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 1009 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_NgaoNghe()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 1041 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_XuanY()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 1005 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_KhongTuoc()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 929 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_NT_DiepThuongThu()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody1 	= 953 + GetBody() - 1;
	
	AddItem(0,108,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,496,7,13069,7,13355,0,15)
	
	AddItem(0,108,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,109,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
	AddItem(0,110,nBody1,1,4,7,14524,7,13069,7,13355,0,15)
end

function Get_MTVC()
	if 1 ~= gf_Judge_Room_Weight(2, 1, g_szTitle) then
		return 0;
	end

	AddItem(0,102,31130,1,1,-1,-1,-1,-1,-1,-1,1,0)
	AddItem(0,102,31131,1,1,-1,-1,-1,-1,-1,-1,1,0)
end

function Get_TDNN()
	for i=30037,30038 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_HHVD()
	for i=8840,8847 do 
		AddItem(0,102,i,1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_KimXa()
	local szSay = {
		g_szTitle.."Lùa chän trang b?",
		"Trang bÞ Kim Xµ Phi Phong Hoan L¨ng/Get_KXDH",
		"Trang bÞ Kim Xµ Phi Phong §»ng Giao/Get_KXTH",
		"Trang bÞ Kim Xµ Phi Phong Khëi Ph­îng/Get_KXVD",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_TKX()
	AddItem(2, 1, 30525,100);
	AddItem(2, 1, 30526,100);
	AddItem(2, 1, 30531,100);
	AddItem(2, 1, 30532,100);
end

function Get_KXDH()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	--kx6 hoan l¨ng
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan l¨ng
end

function Get_KXTH()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	 -- kx6 ®»ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 ®»ng giao
end

function Get_KXVD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	-- kx6 khëi ph­îng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
	-- end kx6 khëi ph­îng	)
end

function Get_Buff()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end
	
	local nBody 	= 30153 + GetBody() - 3;
	
	AddItem(0, 103, nBody, 1,1, 7,852,7,852,7,852,1,15);
	AddItem(0, 100, nBody, 1,1, 7,852,7,852,7,852,1,15);
	AddItem(0, 101, nBody, 1,1, 7,852,7,852,7,852,1,15);
	AddItem(0, 2, nBody, 1,1, 7,852,7,852,7,852,1,15);
	AddItem(0,102,30223,1,1,7,852,7,852,7,852,1,15);
	AddItem(0,102,30224,1,1,7,852,7,852,7,852,1,15);
end

function Get_NT_Buff()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end
	
	local nBody 	= 1041 + GetBody() - 1;
	AddItem(0,108,nBody,1,1,7,14524,7,852,7,852,0,15)
	AddItem(0,109,nBody,1,1,7,852,7,852,7,852,0,15)
	AddItem(0,110,nBody,1,1,7,852,7,852,7,852,0,15)
end

function Get_house()
	AddItem(0,105,30022,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,30023,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,30024,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,30045,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,30046,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,30047,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,30049,1,1,7,403,-1,-1,-1,-1,1,0); 
	AddItem(0,105,161,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,10107,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,10108,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,10109,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,10110,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,10111,1,1,7,403,-1,-1,-1,-1,1,0);
	AddItem(0,105,10112,1,1,7,403,-1,-1,-1,-1,1,0);
end



--TRANG BI CHIEN TRUONG
function GetCT()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ Uy Hæ/Get_CT_UH",
		"Trang bÞ Thanh Long/Get_CT_TL",
		"Trang bÞ Háa Phông/Get_CT_HP",
		"Trang bÞ L«i Hæ/Get_CT_LH",
		"Trang bÞ Th­¬ng ¦ng/Get_CT_TU",
		"Trang bÞ Kh¸c/Get_CT_Khac",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

--Trang bi Khac
function Get_CT_Khac()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ Ngù Long T­íng Qu©n/Get_CT_NLTQ",
		"Trang bÞ §¹i Nguyªn So¸i/Get_CT_DNS",
		"Trang bÞ T­íng Qu©n ChiÕn/Get_CT_TQ2",
		"Trang bÞ Chiªu Th¸nh Nguyªn So¸i/Get_CT_CTNS",
		"Trang bÞ ThiÖu Th¸nh Nguyªn So¸i/Get_CT_TTNS",
		"Trang bÞ Ngù Long Nguyªn So¸i/Get_CT_NLNS",
		"Trang bÞ Nguyªn So¸i/Get_CT_NS",
		"Trang bÞ T­íng Qu©n/Get_CT_TQ",
		"Trang bÞ §« Thèng/Get_CT_DT",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_CT_TU()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Th­¬ng ¦ng §« Thèng/Get_TUDT",
		"Trang phôc Th­¬ng ¦ng T­íng/Get_TUT",
		"Trang phôc Th­¬ng ¦ng So¸i/Get_TUS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_CT_LH()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc L«i Hæ Dòng SÜ/Get_LHDS",
		"Trang phôc L«i Hæ T­íng/Get_LHT",
		"Trang phôc L«i Hæ So¸i/Get_LHS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_LHDS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30211 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-62,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-58,1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	AddItem(0,103, nBody+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+12-38,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+12-34,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Trang bi UY HO
function Get_CT_UH()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Uy Hæ T­íng Phe Tèng/Get_T_UHT",
		"Trang phôc Uy Hæ So¸i Phe Tèng/Get_T_UHS",
		"Trang phôc Uy Hæ T­íng Phe Liªu/Get_L_UHT",
		"Trang phôc Uy Hæ So¸i Phe Liªu/Get_L_UHS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end
 
--Get Tong UH Tuong
function Get_T_UHT()
	local ID1 = 20556; --ID Trang bÞ ®Çu tiªn UHT
	local ID2 = 10196; --ID Trang bÞ ®Çu tiªn ngäc béi UHT
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
					
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Tong UH SOai
function Get_T_UHS()
	local ID1 = 20620; --ID Trang bÞ ®Çu tiªn UHS
	local ID2 = 10388; --ID Trang bÞ ®Çu tiªn ngäc béi UHS
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So¸i cã 4 Ngäc

			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Tong UH Tuong
function Get_L_UHT()
	local ID1 = 20684; --ID Trang bÞ ®Çu tiªn UHT
	local ID2 = 10644; --ID Trang bÞ ®Çu tiªn ngäc béi UHT
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Lieu UH SOai
function Get_L_UHS()
	local ID1 = 20748; --ID Trang bÞ ®Çu tiªn UHT
	local ID2 = 10836; --ID Trang bÞ ®Çu tiªn ngäc béi UHT
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So¸i cã 4 Ngäc		
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end


--Trang bi THANH LONG
function Get_CT_TL()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Thanh Long T­íng Phe Tèng/Get_T_TLT",
		"Trang phôc Thanh Long So¸i Phe Tèng/Get_T_TLS",
		"Trang phôc Thanh Long T­íng Phe Liªu/Get_L_TLT",
		"Trang phôc Thanh Long So¸i Phe Liªu/Get_L_TLS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end
 
--Get Tong TL Tuong
function Get_T_TLT()
	local ID1 = 20300; --ID Trang bÞ ®Çu tiªn
	local ID2 = 9300; --ID Trang bÞ ®Çu tiªn ngäc béi
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
					
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Tong TL SOai
function Get_T_TLS()
	local ID1 = 20364; --ID Trang bÞ ®Çu tiªn
	local ID2 = 9556; --ID Trang bÞ ®Çu tiªn ngäc béi
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So¸i cã 4 Ngäc

			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Lieu TL Tuong
function Get_L_TLT()
	local ID1 = 20428; --ID Trang bÞ ®Çu tiªn
	local ID2 = 10644; --ID Trang bÞ ®Çu tiªn ngäc béi 
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Lieu TL Soai
function Get_L_TLS()
	local ID1 = 20492; --ID Trang bÞ ®Çu tiªn
	local ID2 = 9940; --ID Trang bÞ ®Çu tiªn ngäc béi
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So¸i cã 4 Ngäc		
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end


--Trang bi Hoa Phung
function Get_CT_HP()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Háa Phông T­íng Phe Tèng/Get_T_HPT",
		"Trang phôc Háa Phông So¸i Phe Tèng/Get_T_HPS",
		"Trang phôc Háa Phông T­íng Phe Liªu/Get_L_HPT",
		"Trang phôc Háa Phông So¸i Phe Liªu/Get_L_HPS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end
 
--Get Tong HP Tuong
function Get_T_HPT()
	local ID1 = 30311; --ID Trang bÞ ®Çu tiªn
	local ID2 = 30228; --ID Trang bÞ ®Çu tiªn ngäc béi
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
					
			AddItem(0, nA, nID+17, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Tong HP SOai
function Get_T_HPS()
	local ID1 = 30375	; --ID Trang bÞ ®Çu tiªn
	local ID2 = 30420	; --ID Trang bÞ ®Çu tiªn ngäc béi
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So¸i cã 4 Ngäc

			AddItem(0, nA, nID+57, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Lieu HP Tuong
function Get_L_HPT()
	local ID1 = 30439; --ID Trang bÞ ®Çu tiªn
	local ID2 = 30676; --ID Trang bÞ ®Çu tiªn ngäc béi 
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, nA, nID+97, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end

--Get Lieu HP Soai
function Get_L_HPS()
	local ID1 = 30503; --ID Trang bÞ ®Çu tiªn
	local ID2 = 30868; --ID Trang bÞ ®Çu tiªn ngäc béi
	
	ID = {[2] = 	{3, ID1, ID2},[3] = 	{8,ID1 + 2,ID2 + 2},[4] = 	{0,ID1 + 4,ID2 + 4},[6] = 	{1,ID1 + 6,ID2 + 6},[8]= 	{2,ID1 + 10,ID2 + 10},
		[9]= 	{10,ID1 + 12,ID2 + 12},[11]=	{0,ID1 + 14,ID2 + 14},[12]=	{5,ID1 + 18,ID2 + 18},[14]=	{2,ID1 + 22,ID2 + 22},[15]=	{9,ID1 + 26,ID2 + 26},
		[17]=	{6,ID1 + 30,ID2 + 30},[18]=	{4,ID1 + 34,ID2 + 34},[20]=	{7,ID1 + 38,ID2 + 38},[21]=	{11,ID1 + 42,ID2 + 42},[23]=	{2,ID1 + 46,ID2 + 46},
		[25]=	{3,ID1 + 48,ID2 + 48},[26]=	{9,ID1 + 52,ID2 + 52},[27]=	{11,ID1 + 56,ID2 + 56},[29]=	{13,ID1 + 46 + 14,ID2 + 46 + 14},[30]=	{12,ID1 + 46 + 16,ID2 + 46 + 16},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	for k, v in pairs(ID) do
		if nRoute == k then
			local nA = v[1];
			local nID = v[2] + nBody;
			local nNB = v[3] + nBody;
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Phôc
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ngäc
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So¸i cã 4 Ngäc		
			AddItem(0, nA, nID+137, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Vò KhÝ
		end
	end
end



--TRANG BI TIEU DUNG
function Get_TieuDung()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn 10000 vµng/Get_Money",
		"NhËn ThÇn Hµnh/Get_ThanHanh",
		"NhËn §Êu Hån/Get_DauHon",
		"NhËn D­îc PhÈm/Get_DuocPham",
		"NhËn §¸ Quý/Get_Gem",
		"Trang bÞ TÈy Kim Xµ/Get_TKX",
		format("%s/getTianJiaoLing", "NhËn Thiªn Kiªu LÖnh"),
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

--DA Quy
function Get_Gem()
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
		return 0;
	end
	
	AddItem(2, 22, 101, 100);
	AddItem(2, 22, 102, 100);
	AddItem(2, 22, 103, 100);
	AddItem(2, 22, 104, 100);
	AddItem(2, 22, 107, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕtTrÝchTh¹ch Lv7");
	AddItem(2, 22, 201, 100);
	AddItem(2, 22, 202, 100);
	AddItem(2, 22, 203, 100);
	AddItem(2, 22, 204, 100);
	AddItem(2, 22, 207, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖtB¹chTh¹ch Lv7");
	AddItem(2, 22, 301, 100);
	AddItem(2, 22, 302, 100);
	AddItem(2, 22, 303, 100);
	AddItem(2, 22, 304, 100);
	AddItem(2, 22, 307, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch Lv7");
	AddItem(2, 22, 401, 100);	
	AddItem(2, 22, 402, 100);	
	AddItem(2, 22, 403, 100);	
	AddItem(2, 22, 404, 100);
	AddItem(2, 22, 407, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch Lv7");
end

function Get_Money()
	Earn(100000000);
end

---Thiªn Khiªu LÖnh---
function getTianJiaoLing()
	AddItem(2,97,236,999)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

---Håi thÓ lùc----
function getTiLi()
	RestoreStamina()
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end


--CHUC NANG KHAC
--Pet---
function Pet_OP()
	local tSay = {}
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "KÝch ho¹t phôc sinh thó c­ng"))
	end
	tinsert(tSay, format("%s/getPetEgg", "NhËn Trøng Thó C­ng"))
	tinsert(tSay, format("%s/getLingLi", "NhËn ®iÓm linh lùc"))
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
end

function activePet()
	local nId = 30149
	if GetSkillLevel(nId) == 0 then
		LearnSkill(nId)
		for i = 1,4 do
			LevelUpSkill(nId)
		end
		
		Msg2Player("§· häc Gi¸ng Linh ThuËt cÊp 5");
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	end
end

function getPetEgg()
	AddItem(2,1,30728,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function getLingLi()
	local nAdd = 10000
	local nTask = 1535
	local nCur = GetTask(nTask) / 100
	if nCur < 1000000 then
		nCur = nCur + nAdd
		SetTask(nTask, nCur*100)
		Msg2Player(format("NhËn thµnh c«ng %d linh lùc", nAdd))
	end
end

----Gia nhËp Ph¸i----
function Process_Equip_LingTu()
    if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		for i=30221,30222 do 
			AddItem(0,102,i,1,1,-1,-1,-1,-1,-1,-1,1)
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		if nRoute == 2 then
            AddItem(0,3,30207,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 3 then
            AddItem(0,8,30208,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 4 then
            AddItem(0,0,30209,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 6 then
            AddItem(0,1,30210,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 8 then
            AddItem(0,2,30211,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 9 then
            AddItem(0,10,30212,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 11 then
            AddItem(0,0,30213,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 12 then
            AddItem(0,5,30214,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 14 then
            AddItem(0,2,30215,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 15 then
            AddItem(0,9,30216,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 17 then
            AddItem(0,6,30217,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 18 then
            AddItem(0,4,30218,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 20 then
            AddItem(0,7,30219,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 21 then
            AddItem(0,11,30220,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 23 then
            AddItem(0,2,30221,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 29 then
            AddItem(0,13,30222,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 30 then
            AddItem(0,12,30223,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nBody == 1 then
			AddItem(0,101,30235,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30239,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30243,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30235,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30235,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
		if nBody == 2 then
			AddItem(0,101,30236,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30240,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30244,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30236,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30236,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
		if nBody == 3 then
			AddItem(0,101,30237,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30241,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30245,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30237,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30237,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
		if nBody == 4 then
			AddItem(0,101,30238,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30242,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30246,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30238,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30238,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
end

function JoinRoute_UpdateLevel()
	local tMenu = {
		"ThiÕu L©m/join_sl",
		"Vâ §ang/join_wd",
		"Nga My/join_em",
		"C¸i Bang/join_gb",
		"§­êng M«n/join_tm",
		"D­¬ng M«n/join_ym",
		"Ngò §éc/join_wdu",
		"C«n L«n/join_kl",
		"Thóy Yªn/join_cy",
		"Minh Gi¸o/join_mgb",
		"Ra khái/nothing",
	};
	Say("Ng­¬i muèn gia nhËp l­u ph¸i g×?", getn(tMenu), tMenu);
end

function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph¸i ThiÕu L©m chØ thu nhËn ®Ö tö nam", 0);
		return
	end

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"ThiÕu L©m vâ t«ng/#enter_mp(4)",
		"ThiÕu L©m thiÒn t«ng/#enter_mp(3)",
		"ThiÕu L©m tôc gia/#enter_mp(2)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Vâ §ang ®¹o gia/#enter_mp(14)",
		"Vâ §ang tôc gia/#enter_mp(15)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_em()

	if GetPlayerFaction() ~= 0 then
		return
	end

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Nga My phËt gia/#enter_mp(8)",
		"Nga My tôc gia/#enter_mp(9)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C¸i Bang TÜnh y/#enter_mp(11)",
		"C¸i Bang ¤ Y/#enter_mp(12)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"§­êng M«n/#enter_mp(6)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"D­¬ng M«n th­¬ng Kþ/#enter_mp(17)",
		"D­¬ng M«n Cung Kþ/#enter_mp(18)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"HiÖp §éc/#enter_mp(20)",
		"Tµ §éc/#enter_mp(21)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	if GetSex()==2 then
		Talk(1,"","C«n L«n kh«ng thu nhËn ®Ö tö n÷!");
		return 0
	end

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C«n L«n Thiªn S­/#enter_mp(23)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	if GetSex()==1 then
		Talk(1,"","Thóy Yªn kh«ng thu nhËn ®Ö tö nam!");
		return 0
	end

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Thóy Yªn Vò Tiªn/#enter_mp(29)",
		"Thóy Yªn Linh N÷/#enter_mp(30)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_mgb()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Minh Gi¸o Th¸nh ChiÕn/#enter_mp(25)",
		"Minh Gi¸o TrËn Binh/#enter_mp(26)",
		"Minh Gi¸o HuyÕt Nh©n/#enter_mp(27)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=Õý³£ÄÐ£¬2=¿ýÎàÄÐ£¬3=ÐÔ¸ÐÅ®£¬4=½¿Ð¡Å®

	SetPlayerRoute(nRoute);						--ÉèÖÃÁ÷ÅÉ

	if nRoute == 2 then						--ÉÙÁÖË×¼Ò
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--ÉÙÁÖìøÉ®
		LearnSkill(6);
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--ÉÙÁÖÎäÉ®
		LearnSkill(2);
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--Îäµ±µÀ¼Ò
		LearnSkill(4);
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--Îäµ±Ë×¼Ò
		LearnSkill(5);
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--¶ëáÒ·ð¼Ò
		LearnSkill(4);
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
	elseif nRoute == 9 then					--¶ëáÒË×¼Ò
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--Ø¤°ï¾»ÒÂ
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--Ø¤°ïÎÛÒÂ
		LearnSkill(5);
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 6 then					--ÌÆÃÅ
		LearnSkill(7);
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--ÑîÃÅÇ¹Æï
		LearnSkill(11);
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--ÑîÃÅ¹­Æï
		LearnSkill(12);
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--Îå¶¾Ð°ÏÀ
		LearnSkill(13);
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--Îå¶¾¹ÆÊ¦
		LearnSkill(14);
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 23 then					--À¥ÂØÌìÊ¦
		LearnSkill(4);
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--Ã÷½ÌÊ¥Õ½
		LearnSkill(3);
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--Ã÷½ÌÕó±ø
		LearnSkill(8);
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--Ã÷½ÌÑªÈË
		LearnSkill(14);
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--´äÑÌÎèÏÉ
		LearnSkill(15);
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--´äÑÌÁéÅ®
		LearnSkill(16);
		LearnSkill(1230);
		nBegin = 1217 ;
		nEnd = 1229;
	else
		return
	end;

	LearnSkill(20);

	for i = nBegin, nEnd do
		LearnSkill(i);
		while LevelUpSkill(i) == 1 do
		end
	end;

	----------------------------ÉèÖÃÊýÖµ------------
	ModifyReputation(1000000,0);			--Danh väng
	SetTask(336, 1000000);  --S­ M«n
	SetTask(704, 6)  --Nguyªn So¸i
	SetTask(701, 5000000); --C«ng tr¹ng
	PlayerReborn(2, random(4));			--ChuyÓn sinh
	gf_SetTaskByte(1538, 1, 5) 			--5×ª
	SetLevel(99, 1);								--CÊp
	ModifyExp(2000000000);
	AddTitle(65,2);
	
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	Msg2Player("Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
	Talk(1,"","Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
end


--Mat Tich
function Get_Book()
	local szSay = {
		g_szTitle.."NhËn L­u Ph¸i Ch©n QuyÓn vµ QuyÕt YÕu!",
		"NhËn Ch©n QuyÓn/Get_Book_ZhenJuan",
		"NhËn QuyÕt YÕu/Get_Book_JueYao",
		"Th¨ng cÊp mËt tÞch ®· trang bÞ/Get_Book_Update",
		"T¨ng chØ sè lªn 1000%/Get_250book",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_250book()
	CastState("state_add_book_attribute_value", 1000, -1, -1);
end

function Get_Book_ZhenJuan()
	if gf_Judge_Room_Weight(7, 1, g_szTitle) ~= 1 then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	
	if nRoute == 2 then
		AddItem(0, 107, 30018,5)
	end
	
	if nRoute == 3 then
		AddItem(0, 107, 30020,5)
	end
	
	if nRoute == 4 then
		AddItem(0, 107, 30019,5)
	end
	
	if nRoute == 6 then
		AddItem(0, 107, 30021,5)
	end
	
		if nRoute == 8 then
		AddItem(0, 107, 30022,5)
	end
	
		if nRoute == 9 then
		AddItem(0, 107, 30023,5)
	end
	
		if nRoute == 11 then
		AddItem(0, 107, 30024,5)
	end
	
		if nRoute == 12 then
		AddItem(0, 107, 30025,5)
	end
	
		if nRoute == 14 then
		AddItem(0, 107, 30026,5)
	end
	
		if nRoute == 15 then
		AddItem(0, 107, 30027,5)
	end
	
		if nRoute == 17 then
		AddItem(0, 107, 30028,5)
	end
	
		if nRoute == 18 then
		AddItem(0, 107, 30029,5)
	end
	
		if nRoute == 20 then
		AddItem(0, 107, 30030,5)
	end
	
		if nRoute == 21 then
		AddItem(0, 107, 30031,5)
	end
	
	if nRoute == 23 then
		AddItem(0, 107, 30032,5)
	end
	
	if nRoute == 25 then
		AddItem(0,107,30038,5)
	end

	if nRoute == 26 then
		AddItem(0,107,30039,5)
	end

	if nRoute == 27 then
		AddItem(0,107,30040,5)
	end

	if nRoute == 29 then
		AddItem(0, 107, 30033,5)
	end
	
	if nRoute == 30 then
		AddItem(0, 107, 30034,5)
	end
	
	gf_AddItemEx({0, 112, 158,	1, 4}, "L¨ng Ba Vi Bé toµn tËp");
	gf_AddItemEx({0, 112, 224,	1, 4}, "L¨ng Ba Vi Bé");

end

function Get_Book_JueYao()
	local tJue ={
		[2]		={1,10},
		[3]		={21,31},
		[4]		={11,20},
		[6]		={32,46},
		[8]		={47,59},
		[9]		={60,70},
		[11]	={71,79},
		[12]	={80,88},
		[14]	={89,108},
		[15]	={109,119},
		[17]	={120,130},
		[18]	={131,141},
		[20]	={142,154},
		[21]	={155,168},
		[23]	={169,182},
		[25]	={183,194},
		[26]	={195,206},
		[27]	={207,218},
		[29]	={219,229},
		[30]	={230,240},
	};

	local nRoute = GetPlayerRoute()
	if 1 ~= gf_CheckPlayerRoute() then
		return 0;
	end

	if 1 ~= gf_Judge_Room_Weight((tJue[nRoute][2] - tJue[nRoute][1] + 1), 1, g_szTitle) then
		return 0;
	end

	for i = tJue[nRoute][1],tJue[nRoute][2] do
		gf_AddItemEx({2, 6, i, 1, 4}, "QuyÕt YÕu");
	end
end

function Get_Book_Update()
	for i=1,100 do LevelUpBook() end
	for i=1,100 do LevelUpBook(1) end
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end


--Vat Dung Mon Phai
function Give_ZhuzhuZhouzhou()
	if gf_Judge_Room_Weight(2, 1) ~= 1 then
		return 0;
	end

	AddItem(2, 3, 4, 99);
	AddItem(2, 3, 12, 99);	
end

function Give_JiguanAnqi()
	if gf_Judge_Room_Weight(11, 1) ~= 1 then
		return 0;
	end
  for i = 1,9 do
		AddItem(2, 11, i, 2000, 4);
	end
	AddItem(2, 3, 6, 999, 4);	
end

function Give_Dandan()
	if gf_Judge_Room_Weight(1, 1) ~= 1 then
		return 0;
	end
	AddItem(2, 3, 7, 999);
end

function Give_ZhanMa()
	if gf_Judge_Room_Weight(1, 10) ~= 1 then
		return 0;
	end
	AddItem(0,105,38,1,1,7,14524,7,14524,7,14517);
end

function Give_Jiancu()
	if gf_Judge_Room_Weight(2, 100) ~= 1 then
		return 0;
	end
	AddItem(2, 15, 10, 2000);
	AddItem(0,105,38,1,1,7,14524,7,14524,7,14517);
end

function Give_Fengshifu()
	if gf_Judge_Room_Weight(5, 1) ~= 1 then
		return 0;
	end

	AddItem(1, 6, 34,	30, 4);
	AddItem(1, 6, 46, 30, 4);
	AddItem(1, 6, 84,	30, 4);
	AddItem(1, 6, 153,30, 4);
	AddItem(1, 6, 154,30, 4);
end

function Give_GuGu()
	if gf_Judge_Room_Weight(32, 1) ~= 1 then
		return 0;
	end
  for i = 1,31 do
		AddItem(2, 17, i, 99, 4);
	end

	if 0 >= GetItemCount(2, 0, 1063) and 1 == gf_Judge_Room_Weight(1, 1) then
		AddItem(2, 0, 1063, 1);
	end
end


--Pet TYLN
function ling_nv_xiaodiao()
	local szSay = {};
	szSay[getn(szSay) + 1] = "NhËn TiÓu §iªu/Give_XiaoDiao";
	szSay[getn(szSay) + 1] = "Nu«i TiÓu §iªu/Give_XiaoDiaoFood";
	szSay[getn(szSay) + 1] = "HuÊn luyÖn TiÓu §iªu/Feed_XiaoDiao";
	szSay[getn(szSay) + 1] = "Ra khái/nothing";
	Say(g_szTitle.."TiÓu §iªu thao t¸c.", getn(szSay), szSay)
end

function Give_XiaoDiao()
	if gf_Judge_Room_Weight(1, 1) ~= 1 then
		return 0;
	end
	AddItem(2, 20, 24, 1, 4);
end

function Give_XiaoDiaoFood()
	if gf_Judge_Room_Weight(11, 1) ~= 1 then
		return 0;
	end

	for i = 6, 12 do
		if i == 11 then
			AddItem(2, 97, i, 1, 4);
		else
			AddItem(2, 97, i, 100, 4);
		end
	end
end

function Feed_XiaoDiao()
	local nPetItemIndex = GetPlayerEquipIndex(12);
	if (nPetItemIndex == nil or nPetItemIndex <=0) then
		Msg2Player("C¸c h¹ ch­a cã thó c­ng, kh«ng thÓ tiÕn hµnh huÊn luyÖn!");
		return
	end;
	local ItemGen, ItemDetail, ItemParticular = GetItemInfoByIndex(nPetItemIndex);
	if (ItemGen == nil or ItemDetail == nil or ItemParticular == nil)
		or (ItemGen ~= 2 or ItemDetail ~= 20)
	then
		Msg2Player("C¸c h¹ ch­a cã thó c­ng, kh«ng thÓ tiÕn hµnh huÊn luyÖn!");
		return
	end

	for i = 1, 99 do
		LevelUpPet(nPetItemIndex)
	end
end


--Xoa Kho Do
function ClearBagAllItem(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Ng­¬i muèn thanh lý tói?", 2, "§ång ý/#ClearBagAllItem(1)", "Ra khái/nothing")
		return
	end
	ClearItemInPos();
	if GetItemCount(2,1,30644) < 1 and GetFreeItemRoom() > 0 then
		AddItem(2,1,30644,1)
	end
end


--Bang Hoi
function TongOperation()
	local szSay = {
		g_szTitle.."Thao t¸c bang héi",
		"Ta muèn lËp bang héi/TongOperation_Create",
		"Ta muèn th¨ng cÊp bang héi/TongOperation_update",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function TongOperation_Create()
	if IsTongMember() ~= 0 then
		Talk(1,"","Ng­¬i ®· cã bang héi");
		return
	end
	if gf_Judge_Room_Weight(2, 100, " ") ~= 1 then
		return 0;
	end
	if GetItemCount(2,0,555) < 1 then
		AddItem(2,0,555,1)
	end
	if GetItemCount(2,0,125) < 1 then
  	AddItem(2,0,125,1)
  end
  if GetReputation() < 2000 then
  	ModifyReputation(2000 - GetReputation(), 0)
  end
  if GetCash() < 5000000 then
  	Earn(5000000 - GetCash())
  end
  CreateTongDialog()
end

function TongOperation_update()
	if GetTongLevel() < 3 then
		AddTongLevel();
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	end
end


--Kinh Mach
function GetJingMai()
	local szSay = {
		g_szTitle.."Thao th¸c kinh m¹ch",
		"TÈy ®iÓm kinh m¹ch/GetJingMai_Reset",
		format("%s/getZhenqi", "NhËn ch©n khÝ"),
		"T¨ng cÊp kinh m¹ch/Get_LevelKM",
		format("%s/getJingMaiTongRen", "NhËn Kinh M¹ch §ång Nh©n"),
		"Ra khái/nothing",
	};
	if MeridianGetLevel() < 4 then
		tinsert(szSay, 2, "Th¨ng cÊp c¶nh giíi Vâ T«n/GetJingMai_Update")
	end
	SelectSay(szSay);
end

function getZhenqi()
	AwardGenuineQi(180000);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_LevelKM()
	MeridianUpdateLevel();
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function getJingMaiTongRen()
	AddItem(2, 1,30730, 200)
	AddItem(2, 1,30731, 200)
	AddItem(2, 1,30732, 200)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Up6()
	local nLevel = MeridianGetLevel();
	
	if nLevel == 4 then
		MeridianUpdateLevel();
		MeridianUpdateLevel();
		MeridianRestore(-1);
		
		local nNum = 900000 - (MeridianGetDanTian() + MeridianGetQiHai());
		if nNum > 0 then
			AwardGenuineQi(nNum);
			return 0;
		end
	end
	
	Talk(1,"","HiÖn t¹i b¹n ®· ®¹t ®¼ng cÊp cao nhÊt cña kinh m¹ch");
end

function GetJingMai_Update()
	local nLevel = MeridianGetLevel()
	for i = nLevel + 1, 4 do
		MeridianUpdateLevel()
	end
	local nNum = 600000 - (MeridianGetDanTian() + MeridianGetQiHai());
	if nNum > 0 then
		AwardGenuineQi(nNum);
	end
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function GetJingMai_Reset(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Thao th¸c kinh m¹ch", 2,"§ång ý/#GetJingMai_Reset(1)", "Hñy bá/nothing")
		return 0;
	end
	MeridianRestore(-1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function player_reborn()
	PlayerReborn(2, random(4));			--6×ª
	gf_SetTaskByte(1538, 1, 5) 			--5×ª
	SetLevel(90, 1);								--ÉèÖÃµÈ¼¶
	
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function getLingLi()
	local nAdd = 10000
	local nTask = 1535
	local nCur = GetTask(nTask) / 100
	if nCur < 1000000 then
		nCur = nCur + nAdd
		SetTask(nTask, nCur*100)
		Msg2Player(format("NhËn thµnh c«ng %d linh lùc", nAdd))
	end
end

function Life_Skill()
	local tSay = {
		"Muèn t¨ng cÊp kü n¨ng thu thËp/upgrade_gather_skill",
		"Muèn t¨ng cÊp kü n¨ng s¶n xuÊt/upgrade_compose_skill",
		"NhËn nguyªn liÖu chÕ trang bÞ Linh §å/get_lingtu_equip_material",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."T¨ng cÊp kü n¨ng sèng", getn(tSay), tSay);
end

function upgrade_gather_skill()
	local tGather = {1, 2, 5, 6};
	local tName = {"§èn c©y", "Lµm da", "§µo kho¸ng", "KÐo t¬"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(0, v)
		local nMax = GetLifeSkillMaxLevel(0, v);
		if nMax > nCur then
			local msg = g_szTitle..format("HiÖn t¹i chØ cã thÓ th¨ng cÊp kü n¨ng %s, <color=gold>%s<color> ®ang ®¹t cÊp <color=green>%d<color>, muèn th¨ng cÊp <color=gold>%s<color> ®Õn cÊp <color=green>%d<color> kh«ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("§ång ý/#upgrade_gather_skill_do(%d, %d)", v, nMax), "Hñy bá/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh«ng cã kü n¨ng sèng cã thÓ th¨ng cÊp, h·y ®i t×m NPC ®Ó häc vµ th¨ng cÊp giíi h¹n kü n¨ng ®Õn cÊp 99")
end

function upgrade_gather_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(0, nSkill), nMax do
		AddLifeSkillExp(0, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","HiÖn ®· hoµn thµnh th¨ng cÊp kü n¨ng, h·y ®i t×m NPC ®Ó t¨ng cÊp giíi h¹n ®Õn 99 nµo!")
	end
	Msg2Player(format("Thµnh c«ng t¨ng cÊp kü n¨ng ®Õn cÊp %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function upgrade_compose_skill()
	local tGather = {2, 3, 4, 5, 9, 10};
	local tName = {"ChÕ t¹o binh khÝ dµi", "ChÕ t¹o binh khÝ ng¾n", "ChÕ t¹o kú m«n binh khÝ", "Lµm hé gi¸p", "H¹ trang", "§Çu qu¸n"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(1, v)
		local nMax = GetLifeSkillMaxLevel(1, v);
		if nMax > nCur then
			local msg = g_szTitle..format("HiÖn t¹i chØ cã thÓ th¨ng cÊp kü n¨ng %s, <color=gold>%s<color> ®ang ®¹t cÊp <color=green>%d<color>, muèn th¨ng cÊp <color=gold>%s<color> ®Õn cÊp <color=green>%d<color> kh«ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("§ång ý/#upgrade_compose_skill_do(%d, %d)", v, nMax), "Hñy bá/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh«ng cã kü n¨ng sèng cã thÓ th¨ng cÊp, h·y ®i t×m NPC ®Ó häc vµ th¨ng cÊp giíi h¹n kü n¨ng ®Õn cÊp 99")
end

function upgrade_compose_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(1, nSkill), nMax do
		AddLifeSkillExp(1, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","HiÖn ®· hoµn thµnh th¨ng cÊp kü n¨ng, h·y ®i t×m NPC ®Ó t¨ng cÊp giíi h¹n ®Õn 99 nµo!")
	end
	Msg2Player(format("Thµnh c«ng t¨ng cÊp kü n¨ng ®Õn cÊp %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function BossTongHop()
	local tSay = {}

	tinsert(tSay, format("%s/Boss_LucLam", "B¾c Lôc L©m Minh Chñ"))
	tinsert(tSay, format("%s/Boss_ThuongThan", "Th­¬ng ThÇn Doanh Thiªn"))
	tinsert(tSay, format("%s/Boss_HuongLang", "L·nh H­¬ng L¨ng"))
	tinsert(tSay, format("%s/Boss_LanHoa", "Lan Hoa"))
	tinsert(tSay, format("%s/Boss_AnhTu", "Anh Tö"))
	tinsert(tSay, format("%s/Boss_PhuThuy", "Phï thñy b¨ng gi¸"))
	tinsert(tSay, format("%s/Boss_LuongSon", "H¶o h¸n L­¬ng S¬n"))
	tinsert(tSay, format("%s/Boss_W1", "§µo Hoa §¶o Chñ Hoµng Long"))
	tinsert(tSay, format("%s/Boss_W2", "T©y Vùc Th­¬ng Lang B¸ V­¬ng"))
	tinsert(tSay, format("%s/Boss_W3", "Ngäc S¬n Chi Linh Thiªn Cöu"))
	tinsert(tSay, format("%s/Boss_W4", "U Tr¹ch Chi ¶nh Minh Vâ"))
	tinsert(tSay, format("%s/Boss_TuLinh", "Tø Linh"))
	tinsert(tSay, format("%s/Boss_NienThu", "§¹i Niªn Thó"))
	tinsert(tSay, format("%s/Boss_ThitNuong", "YÕn tiÖc ThÞt N­íng"))
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gäi boss g×?", getn(tSay), tSay);
end

function Boss_LucLam()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("S¬n TÆc §Çu Môc","B¾c Lôc L©m Minh Chñ", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe nãi minh chñ lôc l©m ®ang ë t©y TuyÒn Ch©u 191/192, ch¾c ®ang cã ©m m­u!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_ThuongThan()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("HuyÒn Vâ Th­ong","Th­¬ng ThÇn Doanh Thiªn", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe nãi thÞ vÖ th©n tÝn cña TÇn Thñy Hoµng ®ang ë t©y TuyÒn Ch©u 189/192, vâ l©m s¾p cã mét trËn hµo kiÕp!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_HuongLang()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("NghiÖt Hån","L·nh H­¬ng L¨ng", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe nãi L·nh H­¬ng L¨ng  ®ang ë t©y TuyÒn Ch©u 186/194, mau ®Õn ®ã xem thö dung nhan kiÒu diÔm cña nµng!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_LanHoa()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("lanhua_viet","Lan Hoa", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Cã ng­êi nh×n thÊy Lan Hoa ®ang ë t©y TuyÒn Ch©u 181/190, mau ®Õn ®ã xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end

function Boss_AnhTu()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("yingzi_viet","Anh Tö", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Cã ng­êi nh×n thÊy Anh Tö  ®ang ë t©y TuyÒn Ch©u 179/192, mau ®Õn ®ã xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end


function Boss_ThitNuong()

	--Msg2Global("Cã ng­êi nh×n thÊy YÕn tiÖc ThÞt N­íng ®ang ë t©y TuyÒn Ch©u 181/188, mau ®Õn tham dù!")
	local nAddX = 0
	local nAddY = 0
	local nTargetNpc = 0
	local nMap,nX,nY = GetWorldPos();			
	for i = 1, 20 do
		nAddX = random(-70, 70)
		nAddY = random(-70, 70)		
		nTargetNpc = CreateNpc("M©m cç", "ThÞt N­íng", nMap, nX + nAddX,  nY + nAddY)
		SetNpcLifeTime(nTargetNpc, 130)
		SetNpcScript(nTargetNpc, "\\script\\online\\viet_event\\200909\\2\\pangtuzi_baoguo.lua")
end

end

function Boss_PhuThuy()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = 0
	local nNpcIndex = CreateNpc("Phï thñy b¨ng gi¸", "Phï thñy b¨ng gi¸", nMap, nX + 2, nY + 2);
	SetNpcLifeTime(nNpcIndex, 7200);
	SetNpcDeathScript(nNpcIndex, "\\script\\online\\viet_event\\200912\\3\\death_binglengwushi.lua");
	--Msg2Global("Cã ng­êi nh×n thÊy Phï thñy b¨ng gi¸  ®ang ë t©y TuyÒn Ch©u 192/188, mau ®Õn ®ã xem!")


end

function Boss_LuongSon()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(LSB_NPC_GOLD_BOSS, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(LSB_NPC_GOLD_BOSS[n][1],LSB_NPC_GOLD_BOSS[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boos_death.lua");
		SetNpcRemoveScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boss_remove.lua");
	--Msg2Global("Cã ng­êi ph¸t hiÖn H¶o h¸n L­¬ng S¬n  ®ang ë t©y TuyÒn Ch©u 191/187, mau ®Õn ®ã xem!")

end

LSB_NPC_GOLD_BOSS = {
	--{"yangxiong", 165, "BÖnh Quan S¸c D­¬ng Hïng", 30 * 60},
	--{"linchong", 167, "B¸o Tö §Çu L©m Xung", 30 * 60},
	--{"luzhishen", 167, "Hoa Hßa Th­îng Lç TrÝ Th©m", 30 * 60},
	--{"likui", 167, "H¾c Toµn Phong Lý Quú", 30 * 60},
	--{"husanliang", 167, "NhÊt Tr­îng Thanh Hæ Tam N­¬ng", 30 * 60},
	--{"shixiu", 167, "Phanh MÖnh Tam Lang Th¹ch Tó", 30 * 60},
	{"CËp Thêi Vò Tèng Giang", 167, "CËp Thêi Vò Tèng Giang", 30 * 60},
	{"Tri §a Tinh Ng« Dông", 167, "Tri §a Tinh Ng« Dông", 30 * 60},
	{"Cöu V¨n Long Sö TiÕn", 167, "Cöu V¨n Long Sö TiÕn", 30 * 60},
	{"TiÓu TuyÒn Phong Sµi TiÕn", 167, "TiÓu TuyÒn Phong Sµi TiÕn", 30 * 60},
	{"§¹i §ao Quan Th¾ng", 167, "§¹i §ao Quan Th¾ng", 30 * 60},
	{"NhËp V©n Long C«ng T«n Th¾ng", 167, "NhËp V©n Long C«ng T«n Th¾ng", 30 * 60},
	{"B¸o Tö §Çu L©m Xung", 167, "B¸o Tö §Çu L©m Xung", 30 * 60},
	{"Hoa Hßa Th­îng Lç TrÝ Th©m", 167, "Hoa Hßa Th­îng Lç TrÝ Th©m", 30 * 60},
	{"Hµnh Gi¶ Vâ Tßng", 167, "Hµnh Gi¶ Vâ Tßng", 30 * 60},
	{"Tóy B¸n Tiªn Phong NhÊt Phµm", 167, "Tóy B¸n Tiªn Phong NhÊt Phµm", 30 * 60},
	{"BÖnh Quan S¸c D­¬ng Hïng", 167, "BÖnh Quan S¸c D­¬ng Hïng", 30 * 60},
	{"Phanh MÖnh Tam Lang Th¹ch Tó", 167, "Phanh MÖnh Tam Lang Th¹ch Tó", 30 * 60},
	{"NhÊt Tr­îng Thanh Hæ Tam N­¬ng", 167, "NhÊt Tr­îng Thanh Hæ Tam N­¬ng", 30 * 60},
	{"Song Th­¬ng T­íng §æng B×nh", 167, "Song Th­¬ng T­íng §æng B×nh", 30 * 60},
	{"Thanh DiÖn Thó D­¬ng TrÝ", 167, "Thanh DiÖn Thó D­¬ng TrÝ", 30 * 60},
	{"TÝch LÞch Háa TÇn Minh", 167, "TÝch LÞch Háa TÇn Minh", 30 * 60},
	{"Song Tiªn H« Diªn Ch­íc", 167, "Song Tiªn H« Diªn Ch­íc", 30 * 60},
	{"H¾c Toµn Phong Lý Quú", 167, "H¾c Toµn Phong Lý Quú", 30 * 60},
};

function Boss_W1()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_HL", "§µo Hoa §¶o Chñ Hoµng Long", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W2()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T©y Vùc Th­¬ng Lang B¸ V­¬ng", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W3()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ngäc S¬n Chi Linh Thiªn Cöu", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W4()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr¹ch Chi ¶nh Minh Vâ", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Thuong_LuongSon()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
			local nNpcIdx = CreateNpc(IBbaoxiang, "R­¬ng H¶o H¸n", nMap, nX + 2, nY + 2);
			SetNpcLifeTime(nNpcIdx, 3 * 60);
			SetNpcScript(nNpcIdx,"\\script\\online\\liangshanboss\\npc\\box\\box_e.lua");

end

function Boss_TuLinh()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(TuLinh_BOSS_LIST, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(TuLinh_BOSS_LIST[n][1],TuLinh_BOSS_LIST[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online_activites\\tiaozhansilingboss\\boss\\boss_death.lua");

end

TuLinh_BOSS_LIST = {
	{"Long Tö", 165, "Long ThÇn Hãa Th©n", 30 * 60},
	{"Phông Tö", 167, "Phông ThÇn Hãa Th©n", 30 * 60},
	{"Hæ Tö", 165, "Hæ ThÇn Hãa Th©n", 30 * 60},
	{"¦ng Tö", 167, "¦ng ThÇn Hãa Th©n", 30 * 60},
}

function Boss_NienThu()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = CreateNpc("§¹i Niªn Thó","ThÇn thó ngh×n n¨m",  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcScript(nNpcIndex,"\\script\\online_activites\\2011_03\\boss\\npc\\bigboss.lua");

end

function Get_ModifyJinJuan()
	ModifyJinJuan(50000,1);
end

function Get_ThanHanh()
	AddItem(0, 200, 40, 1)
end

function Get_DauHon()
	AddItem(2, 1, 1157, 5)
end

function Get_DuocPham()
	AddItem(1, 0, 6, 100)
	AddItem(1, 0, 11, 100)
	AddItem(1, 0, 16, 100)
end

function Get_Danh_Hieu()	
	local szSay = {	
		g_szTitle.."NhËn danh hiÖu mµ ®¹i hiÖp mong muèn!",	
		"NhËn Danh HiÖu Du HiÖp/Get_DuHiep",	
		"NhËn Danh HiÖu ¦ng D­¬ng/Get_UngDuong",	
		"NhËn Danh HiÖu ChiÕn Cuång/Get_ChienCuong",	
		"NhËn Vâ L©m B¸ch HiÓu Sinh/Get_VLBHS",	
                "NhËn Siªu Nh©n VÞt Muèi/Get_SNVM",	
                "NhËn Siªu Nh©n Gao/Get_SNGAO",	
                "NhËn Siªu Nh©n M× Bß/Get_SNMiBo",	
                "NhËn Siªu Nh©n M× Gµ/Get_SNMiGa",	
                "NhËn Siªu Nh©n M× T«m/Get_SNMiTom",	
                "Trang kÕ/Get_Danh_Hieu2",	
		"Ra khái/nothing",	
	};	
	SelectSay(szSay);	
end	
function Get_DuHiep()	
	AddTitle(65, 1)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Du HiÖp");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_UngDuong()	
	AddTitle(65, 2)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu ¦ng D­¬ng");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_ChienCuong()	
	AddTitle(65, 3)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu ChiÕn Cuån");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_VLBHS()	
	AddTitle(63, 1)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Vâ L©m B¸ch HiÓu Sinh");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNVM()	
	AddTitle(62, 1)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n VÞt Muèi");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNGAO()	
	AddTitle(62, 2)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n Gao");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNMiBo()	
	AddTitle(62, 3)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n M× Bß");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNMiGa()	
	AddTitle(62, 4)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n M× Gµ");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNMiTom()	
	AddTitle(62, 5)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n M× T«m");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_Danh_Hieu2()	
	local szSay = {	
		g_szTitle.."NhËn danh hiÖu mµ ®¹i hiÖp mong muèn!",	
                "NhËn Danh HiÖu Sèng kh«ng yªu/Get_DelYeu",	
                "NhËn Danh HiÖu HËn ®êi v« ®èi/Get_HanDoi",	
                "NhËn Danh HiÖu Buån V× §Ñp Trai/Get_SadDep",	
                "NhËn Danh HiÖu Ng¹o ThÕ V« Song/Get_NgaoTheVoSong",	
                "NhËn Danh HiÖu B¸ V­¬ng/Get_BaVuong",	
                "NhËn Danh HiÖu §¹i HiÖp/Get_DaiHiep",	
                "NhËn Danh HiÖu Tinh Anh §á/Get_TinhAnhDo",	
                "NhËn Danh HiÖu Tinh Anh TÝm/Get_TinhAnhTim",	
		"Ra khái/nothing",	
	};	
	SelectSay(szSay);	
end	
function Get_BaVuong()	
	AddTitle(66, 1)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu ChÝ T«n V­¬ng Gi¶");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_DaiHiep()	
	AddTitle(66, 2)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu §éc Bé Thiªn H¹");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_TinhAnhDo()	
	AddTitle(66, 3)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Vâ l©m hµo kiÖt");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_TinhAnhTim()	
	AddTitle(66, 4)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Giang hå tinh anh");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_NgaoTheVoSong()	
	AddTitle(61, 7)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Ng¹o ThÕ V« Song");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SadDep()	
	AddTitle(62, 13)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Buån V× §Ñp Trai");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_DelYeu()	
	AddTitle(62, 6)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu Sèng kh«ng yªu");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_HanDoi()	
	AddTitle(62, 7)	
        Msg2SubWorld("Chóc mõng b¹n nhËn ®­îc danh hiÖu HËn §êi V« §èi");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end