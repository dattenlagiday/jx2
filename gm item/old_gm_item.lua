--���ָ��
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\system_switch_config.lua");

g_szTitle = "<color=green>H��ng d�n:<color>"
function OnUse(nItem)
	if 1 ~= IsExpSvrSystemOpen() then
		return
	end
	
	local tSay = {}
	local nRoute = GetPlayerRoute();
	if nRoute <= 0 then
		tSay = {
			"Gia nh�p m�n ph�i/JoinRoute_UpdateLevel",
		}
	else
		tSay = {
			"D�n Kho ��/ClearBagAllItem",
			format("%s/getTiLi", "H�i Ph�c Th� L�c"),
			"Thao T�c M�t T�ch/Get_Book",
			"G�i Boss /BossTongHop",
			"Nh�n trang b� BHTA/Get_TBBHTA",
			"Nh�n trang b� Chi�n Tr��ng/GetCT",
			"Nh�n trang b� Ph� Bi�n/GetTBKhac",
			"Nh�n trang b� Vi�m ��/Get_TBVD",
			"Nh�n trang b� Th�ng D�ng/GetTB",
			"Nh�n trang b� Kh�c/Get_TBCu",
			"Nh�n trang b� Ti�u D�ng/Get_TieuDung",
			"Nh�n Danh Hi�u/Get_Danh_Hieu",
			"Thay ��i h� ph�i kh�c/JoinRoute_UpdateLevel",
			"Ch�c n�ng kh�c/Get_Orther",
		}
		if 3 == nRoute then
			tinsert(tSay, "Nh�n Thi�n Ph�t Ch�u v� Ph� Ma Ch�/Give_ZhuzhuZhouzhou")
		end
		if 6 == nRoute then
			tinsert(tSay, "Nh�n �m Kh� v� C� Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			tinsert(tSay, "Nh�n X� L�i Kim ��n/Give_Dandan")
		end		
		if 17 == nRoute then
			tinsert(tSay, "Nh�n Chi�n M�/Give_ZhanMa")
		end
		if 18 == nRoute then
			tinsert(tSay, "Nh�n Chi�n M� v� T� Ti�n/Give_Jiancu")
		end
		if 20 == nRoute then
			tinsert(tSay, "Nh�n Phong Thi Ph�/Give_Fengshifu")
		end
		if 21 == nRoute then
			tinsert(tSay, "Nh�n C�/Give_GuGu")
		end
		if 30 == nRoute then
			tinsert(tSay, "Nh�n �i�u/ling_nv_xiaodiao")
		end
	end
	tinsert(tSay, "Tho�t/nothing");
	Say(g_szTitle.."Ng��i c�n gi�p �� g�?", getn(tSay), tSay);
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
		g_szTitle.."L�a ch�n",
		"Luy�n Max Skill Tr�n Ph�i/maxtranphai",
		"Thao t�c Kinh M�ch/GetJingMai",
		"Thao t�c th� c�ng/Pet_OP",
		"Ph�t s�ng vk/PS_vk",
		"K� n�ng s�ng/Life_Skill",
		"Ch�c n�ng bang h�i/TongOperation",
		"Nh�n v�ng bao/Get_VANGBAO1",
		"Nh�n �n chuy�n sinh/Get_An",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);	
end
function Get_An()
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
		return 0;
	end
                AddItem(2, 0, 30002, 1 ,1);
	WriteLogEx("Get_An","Nh�n �n:", 100, "Long t� �n");
	AddItem(2, 0, 30005, 1, 1);
	WriteLogEx("Get_An","Nh�n �n:", 100, "Ph�ng t� �n");
	AddItem(2, 0, 30003, 1, 1);
	WriteLogEx("Get_An","Nh�n �n:", 100, "H� t� �n");
	AddItem(2, 0, 30006, 1, 1);	
	WriteLogEx("Get_An","Nh�n �n:", 100, "�ng t� �n");
                AddItem(2, 0, 30001, 1, 1);	
	WriteLogEx("Get_An","Nh�n �n:", 100, "t� �n");
end

function PS_vk()
	local szSay = {
		g_szTitle.."H�y l�a ch�n hi�u �ng v� kh�!",
		"Thi�t C�t/PS_1",
		"B�ch Chi�n/PS_2",
		"Ch��c Nh�t/PS_3",
		"Tu�n D�t/PS_4",
		"��o L�/PS_5",
		"Danh T�c/PS_6",
		"L�c H�/PS_7",
		"L�ng Ti�u/PS_8",
		"Ph�n V�n/PS_9",
		"�o�n Giao/PS_10",
		"C�i Th�/PS_11",
		"Ph� Qu�n/PS_12",
		"H�o m�n/PS_13",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function PS_1()
	BindWeaponEffect("Thi�t C�t",1)	
end
function PS_2()
	BindWeaponEffect("B�ch Chi�n",1)	
end
function PS_3()
	BindWeaponEffect("Ch��c Nh�t",1)	
end
function PS_4()
	BindWeaponEffect("Tu�n D�t",1)	
end
function PS_5()
	BindWeaponEffect("��o L�",1)	
end
function PS_6()
	BindWeaponEffect("Danh T�c",1)	
end
function PS_7()
	BindWeaponEffect("L�c H�",1)	
end
function PS_8()
	BindWeaponEffect("L�ng Ti�u",1)	
end
function PS_9()
	BindWeaponEffect("Ph�n V�n",1)	
end
function PS_10()
	BindWeaponEffect("�o�n Giao",1)	
end
function PS_11()
	BindWeaponEffect("C�i Th�",1)	
end
function PS_12()
	BindWeaponEffect("Ph� Qu�n",1)	
end
function PS_13()
	BindWeaponEffect("H�o m�n",1)	
end

function Get_VANGBAO1()
	                AddItem(2,1,539,1);
	                AddItem(2,1,30229,1);
	                PlaySound("\\sound\\sound_i016.wav");
	                SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_TBBHTA()
	local szSay = {
		g_szTitle.."L�a ch�n",
		"Trang bi Th�ng Thi�n/Get_ThongThien",
		"Trang b� H�c B�ch V� Song/Get_HBVS",
		"Trang b� V� Song Chi�n Th�n/Get_VSCT",
		"Trang b� Thi�n H� V� Song/Get_TB_THVS",
		"Trang b� V� L�m B� Ch�/Get_TB_VLBC",
		"C�p ng�c Minh Tinh V� C�c/Get_MTVC",
		"C�p ng�c Thi�n ��a Nh�t Nguy�t/Get_TDNN",
		"C�p ng�c Huy Ho�ng Vinh D�/Get_HHVD",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);	
end

function Get_TBCu()
	local szSay = {
		g_szTitle.."L�a ch�n",
		"Trang b� S� M�n 1x/Get_TB_SM1",
		"Trang b� S� M�n 5x/Get_TB_SM5",
		"Trang b� S� M�n 7x/Get_TB_SM7",
		"Trang b� S� M�n 9x/Get_TB_SM9",
		"Trang b� T�ng Ki�m 5x/Get_TB_TK5",
		"Trang b� T�ng Ki�m 7x/Get_TB_TK7",
		"Trang b� T�ng Ki�m 9x/Get_TB_TK9",
		"Ng�c b�i Boss/Get_NB_Boss",
		"Ng�c b�i Th�i H�/Get_NB_ThaiHu",
		"Ng�c b�i C�u Thi�n/Get_NB_CuuThien",
		"Ra kh�i/nothing",
	};	
	SelectSay(szSay);	
end

function Get_TBVD()
	local szSay = {
		g_szTitle.."L�a ch�n",
		"Trang b� B�ch Kim Vi�m ��/Get_TB_BKVD",
		"Trang b� Thi�n Chi T�ng Ki�m/Get_TB_TCTK",
		"Trang b� Thi�n Chi Vi�m ��/Get_TB_TCVD",
		"Trang b� Vi�m ��/Get_TB_VD",
		"Trang b� T� Quang Vi�m ��/Get_TB_TQVD",
		"Trang b� T� Quang N�ng C�p/Get_TB_TQ2",
		"Trang b� Hi�n Vi�n/Get_TB_HienVien",
		"Trang b� T� Quang/Get_TB_TQ",
		"V� Kh� ��i Vi�t Y�n/Get_VK_VietYen2",
		"V� Kh� Vi�t Y�n/Get_VK_VietYen",
		"V� Kh� B� Phi Y�n/Get_VK_BoPhiYen",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);	
end

function GetTBKhac()
	local szSay = {
		g_szTitle.."L�a ch�n",
		"Trang b� S�t Tinh/Get_LBSatTinh",
		"Trang b� �m Huy�t/Get_TB_AmHuyet",
		"Trang b� H�o Hi�p V� H�/Get_TB_HHVH",
		"Trang b� H�o Hi�p Th��ng/Get_TB_HH",
		"Trang b� Linh ��/Get_TB_LinhDo",
		"Trang b� Chi�n Cu�ng/Get_TB_ChienCuong",
		"Trang b� Di�u D��ng/Get_TB_DieuDuong",
		"Trang b� H�o Nguy�t/Get_TB_HaoNguyet",
		"Trang b� C�u Ch�u/Get_TB_CuuChau",
		"Trang b� Thi�n Ngh�a/Get_TB_ThienNghia",
		"Trang b� Tinh Kh�c/Get_TB_TinhKhac",
		"Ra kh�i/nothing",
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
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
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 8860;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8867, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8868, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 8864;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8875, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8876, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
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
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 8810;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8817, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8818, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 8814;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8825, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 8826, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 2355;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 2356;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 2360;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 2364;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 30020;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30021;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 30025;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 30029;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 30005;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30006;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 30010;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 30014;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 6005;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 6006;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 6010;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 6014;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 30887;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30888;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 30892;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 30896;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 30727;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 30728;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 30732;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 30736;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
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
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 8940;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3151, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3152, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 8944;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3159, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 102, 3160, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 8880;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8887;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 8888;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 8907;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 8878;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 8884;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 8888;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 8905;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
		g_szTitle.."L�a ch�n",
		"Nh�n �n KX6/Get_AnKX6",
		"Nh�n KX6 opt ng�u nhi�n/Get_KimXa",
		"Nh�n ngo�i trang kh�ng/Get_NgoaiTrang",
		"Trang b� Buff 140%/Get_Buff",
		"Ngo�i trang Buff 140%/Get_NT_Buff",
		"Nh�n th� c��i/Get_house",
		"Ra kh�i/nothing",
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
	
	if nRoute == 2 then --TL�
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
	
	if nRoute == 6 then --�M
		local nA = 1;
		local nB = 20003;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 8 then --NMK
		local nA = 2;
		local nB = 20004;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 9 then --NM�
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
	
	if nRoute == 14 then --V�K
		local nA = 2;
		local nB = 20008;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 15 then --V�B
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
	
	if nRoute == 20 then --H�
		local nA = 7;
		local nB = 20012;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
	
	if nRoute == 21 then --T�
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
		g_szTitle.."L�a ch�n trang b?",
		"Ngo�i trang �m H�n/Get_NT_AmHon",
		"Ngo�i trang Th�ng Thi�n/Get_NT_ThongThien",
		"Ngo?i trang Ng�o Ngh�/Get_NT_NgaoNghe",
		"Ngo�i trang Thi�n V� C� Sa/Get_NT_TVCS",
		"Ngo�i trang V�n Tinh/Get_NT_VanTinh",
		"Ngo�i trang Xu�n Y/Get_NT_XuanY",
		"Ngo�i trang Kh�ng T��c/Get_NT_KhongTuoc",
		"Ngo�i trang Di�p Th��ng Thu/Get_NT_DiepThuongThu",
		"Ra kh�i/nothing",
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
		g_szTitle.."L�a ch�n trang b?",
		"Trang b� Kim X� Phi Phong Hoan L�ng/Get_KXDH",
		"Trang b� Kim X� Phi Phong ��ng Giao/Get_KXTH",
		"Trang b� Kim X� Phi Phong Kh�i Ph��ng/Get_KXVD",
		"Ra kh�i/nothing",
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

	--kx6 hoan l�ng
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan l�ng
end

function Get_KXTH()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	 -- kx6 ��ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 ��ng giao
end

function Get_KXVD()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	-- kx6 kh�i ph��ng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
	-- end kx6 kh�i ph��ng	)
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
		g_szTitle.."L�a ch�n",
		"Trang b� Uy H�/Get_CT_UH",
		"Trang b� Thanh Long/Get_CT_TL",
		"Trang b� H�a Ph�ng/Get_CT_HP",
		"Trang b� L�i H�/Get_CT_LH",
		"Trang b� Th��ng �ng/Get_CT_TU",
		"Trang b� Kh�c/Get_CT_Khac",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);	
end

--Trang bi Khac
function Get_CT_Khac()
	local szSay = {
		g_szTitle.."L�a ch�n trang b�",
		"Trang b� Ng� Long T��ng Qu�n/Get_CT_NLTQ",
		"Trang b� ��i Nguy�n So�i/Get_CT_DNS",
		"Trang b� T��ng Qu�n Chi�n/Get_CT_TQ2",
		"Trang b� Chi�u Th�nh Nguy�n So�i/Get_CT_CTNS",
		"Trang b� Thi�u Th�nh Nguy�n So�i/Get_CT_TTNS",
		"Trang b� Ng� Long Nguy�n So�i/Get_CT_NLNS",
		"Trang b� Nguy�n So�i/Get_CT_NS",
		"Trang b� T��ng Qu�n/Get_CT_TQ",
		"Trang b� �� Th�ng/Get_CT_DT",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_CT_TU()
	local szSay = {
		g_szTitle.."L�a ch�n trang b�",
		"Trang ph�c Th��ng �ng �� Th�ng/Get_TUDT",
		"Trang ph�c Th��ng �ng T��ng/Get_TUT",
		"Trang ph�c Th��ng �ng So�i/Get_TUS",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_CT_LH()
	local szSay = {
		g_szTitle.."L�a ch�n trang b�",
		"Trang ph�c L�i H� D�ng S�/Get_LHDS",
		"Trang ph�c L�i H� T��ng/Get_LHT",
		"Trang ph�c L�i H� So�i/Get_LHS",
		"Ra kh�i/nothing",
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
		g_szTitle.."L�a ch�n trang b�",
		"Trang ph�c Uy H� T��ng Phe T�ng/Get_T_UHT",
		"Trang ph�c Uy H� So�i Phe T�ng/Get_T_UHS",
		"Trang ph�c Uy H� T��ng Phe Li�u/Get_L_UHT",
		"Trang ph�c Uy H� So�i Phe Li�u/Get_L_UHS",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end
 
--Get Tong UH Tuong
function Get_T_UHT()
	local ID1 = 20556; --ID Trang b� ��u ti�n UHT
	local ID2 = 10196; --ID Trang b� ��u ti�n ng�c b�i UHT
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
					
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Tong UH SOai
function Get_T_UHS()
	local ID1 = 20620; --ID Trang b� ��u ti�n UHS
	local ID2 = 10388; --ID Trang b� ��u ti�n ng�c b�i UHS
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So�i c� 4 Ng�c

			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Tong UH Tuong
function Get_L_UHT()
	local ID1 = 20684; --ID Trang b� ��u ti�n UHT
	local ID2 = 10644; --ID Trang b� ��u ti�n ng�c b�i UHT
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Lieu UH SOai
function Get_L_UHS()
	local ID1 = 20748; --ID Trang b� ��u ti�n UHT
	local ID2 = 10836; --ID Trang b� ��u ti�n ng�c b�i UHT
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So�i c� 4 Ng�c		
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end


--Trang bi THANH LONG
function Get_CT_TL()
	local szSay = {
		g_szTitle.."L�a ch�n trang b�",
		"Trang ph�c Thanh Long T��ng Phe T�ng/Get_T_TLT",
		"Trang ph�c Thanh Long So�i Phe T�ng/Get_T_TLS",
		"Trang ph�c Thanh Long T��ng Phe Li�u/Get_L_TLT",
		"Trang ph�c Thanh Long So�i Phe Li�u/Get_L_TLS",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end
 
--Get Tong TL Tuong
function Get_T_TLT()
	local ID1 = 20300; --ID Trang b� ��u ti�n
	local ID2 = 9300; --ID Trang b� ��u ti�n ng�c b�i
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
					
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Tong TL SOai
function Get_T_TLS()
	local ID1 = 20364; --ID Trang b� ��u ti�n
	local ID2 = 9556; --ID Trang b� ��u ti�n ng�c b�i
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So�i c� 4 Ng�c

			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Lieu TL Tuong
function Get_L_TLT()
	local ID1 = 20428; --ID Trang b� ��u ti�n
	local ID2 = 10644; --ID Trang b� ��u ti�n ng�c b�i 
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Lieu TL Soai
function Get_L_TLS()
	local ID1 = 20492; --ID Trang b� ��u ti�n
	local ID2 = 9940; --ID Trang b� ��u ti�n ng�c b�i
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So�i c� 4 Ng�c		
			AddItem(0, nA, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end


--Trang bi Hoa Phung
function Get_CT_HP()
	local szSay = {
		g_szTitle.."L�a ch�n trang b�",
		"Trang ph�c H�a Ph�ng T��ng Phe T�ng/Get_T_HPT",
		"Trang ph�c H�a Ph�ng So�i Phe T�ng/Get_T_HPS",
		"Trang ph�c H�a Ph�ng T��ng Phe Li�u/Get_L_HPT",
		"Trang ph�c H�a Ph�ng So�i Phe Li�u/Get_L_HPS",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end
 
--Get Tong HP Tuong
function Get_T_HPT()
	local ID1 = 30311; --ID Trang b� ��u ti�n
	local ID2 = 30228; --ID Trang b� ��u ti�n ng�c b�i
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
					
			AddItem(0, nA, nID+17, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Tong HP SOai
function Get_T_HPS()
	local ID1 = 30375	; --ID Trang b� ��u ti�n
	local ID2 = 30420	; --ID Trang b� ��u ti�n ng�c b�i
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So�i c� 4 Ng�c

			AddItem(0, nA, nID+57, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Lieu HP Tuong
function Get_L_HPT()
	local ID1 = 30439; --ID Trang b� ��u ti�n
	local ID2 = 30676; --ID Trang b� ��u ti�n ng�c b�i 
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, nA, nID+97, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end

--Get Lieu HP Soai
function Get_L_HPS()
	local ID1 = 30503; --ID Trang b� ��u ti�n
	local ID2 = 30868; --ID Trang b� ��u ti�n ng�c b�i
	
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
			
			AddItem(0, 103, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15); --Trang Ph�c
			AddItem(0, 101, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 100, nID, 1,1,-1,-1,-1,-1,-1,-1,1,15);	
			AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- Ng�c
			AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --So�i c� 4 Ng�c		
			AddItem(0, nA, nID+137, 1,1,-1,-1,-1,-1,-1,-1,1,15); --V� Kh�
		end
	end
end



--TRANG BI TIEU DUNG
function Get_TieuDung()
	local szSay = {
		g_szTitle.."L�a ch�n",
		"Nh�n 10000 v�ng/Get_Money",
		"Nh�n Th�n H�nh/Get_ThanHanh",
		"Nh�n ��u H�n/Get_DauHon",
		"Nh�n D��c Ph�m/Get_DuocPham",
		"Nh�n �� Qu�/Get_Gem",
		"Trang b� T�y Kim X�/Get_TKX",
		format("%s/getTianJiaoLing", "Nh�n Thi�n Ki�u L�nh"),
		"Ra kh�i/nothing",
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
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�tTr�chTh�ch Lv7");
	AddItem(2, 22, 201, 100);
	AddItem(2, 22, 202, 100);
	AddItem(2, 22, 203, 100);
	AddItem(2, 22, 204, 100);
	AddItem(2, 22, 207, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�tB�chTh�ch Lv7");
	AddItem(2, 22, 301, 100);
	AddItem(2, 22, 302, 100);
	AddItem(2, 22, 303, 100);
	AddItem(2, 22, 304, 100);
	AddItem(2, 22, 307, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch Lv7");
	AddItem(2, 22, 401, 100);	
	AddItem(2, 22, 402, 100);	
	AddItem(2, 22, 403, 100);	
	AddItem(2, 22, 404, 100);
	AddItem(2, 22, 407, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch Lv7");
end

function Get_Money()
	Earn(100000000);
end

---Thi�n Khi�u L�nh---
function getTianJiaoLing()
	AddItem(2,97,236,999)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

---H�i th� l�c----
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
		tinsert(tSay, format("%s/activePet", "K�ch ho�t ph�c sinh th� c�ng"))
	end
	tinsert(tSay, format("%s/getPetEgg", "Nh�n Tr�ng Th� C�ng"))
	tinsert(tSay, format("%s/getLingLi", "Nh�n �i�m linh l�c"))
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."Ng��i c�n gi�p �� g�?", getn(tSay), tSay);
end

function activePet()
	local nId = 30149
	if GetSkillLevel(nId) == 0 then
		LearnSkill(nId)
		for i = 1,4 do
			LevelUpSkill(nId)
		end
		
		Msg2Player("�� h�c Gi�ng Linh Thu�t c�p 5");
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
		Msg2Player(format("Nh�n th�nh c�ng %d linh l�c", nAdd))
	end
end

----Gia nh�p Ph�i----
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
		"Thi�u L�m/join_sl",
		"V� �ang/join_wd",
		"Nga My/join_em",
		"C�i Bang/join_gb",
		"���ng M�n/join_tm",
		"D��ng M�n/join_ym",
		"Ng� ��c/join_wdu",
		"C�n L�n/join_kl",
		"Th�y Y�n/join_cy",
		"Minh Gi�o/join_mgb",
		"Ra kh�i/nothing",
	};
	Say("Ng��i mu�n gia nh�p l�u ph�i g�?", getn(tMenu), tMenu);
end

function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph�i Thi�u L�m ch� thu nh�n �� t� nam", 0);
		return
	end

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Thi�u L�m v� t�ng/#enter_mp(4)",
		"Thi�u L�m thi�n t�ng/#enter_mp(3)",
		"Thi�u L�m t�c gia/#enter_mp(2)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"V� �ang ��o gia/#enter_mp(14)",
		"V� �ang t�c gia/#enter_mp(15)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_em()

	if GetPlayerFaction() ~= 0 then
		return
	end

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Nga My ph�t gia/#enter_mp(8)",
		"Nga My t�c gia/#enter_mp(9)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"C�i Bang T�nh y/#enter_mp(11)",
		"C�i Bang � Y/#enter_mp(12)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"���ng M�n/#enter_mp(6)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"D��ng M�n th��ng K�/#enter_mp(17)",
		"D��ng M�n Cung K�/#enter_mp(18)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Hi�p ��c/#enter_mp(20)",
		"T� ��c/#enter_mp(21)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	if GetSex()==2 then
		Talk(1,"","C�n L�n kh�ng thu nh�n �� t� n�!");
		return 0
	end

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"C�n L�n Thi�n S�/#enter_mp(23)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	if GetSex()==1 then
		Talk(1,"","Th�y Y�n kh�ng thu nh�n �� t� nam!");
		return 0
	end

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Th�y Y�n V� Ti�n/#enter_mp(29)",
		"Th�y Y�n Linh N�/#enter_mp(30)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_mgb()
	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Minh Gi�o Th�nh Chi�n/#enter_mp(25)",
		"Minh Gi�o Tr�n Binh/#enter_mp(26)",
		"Minh Gi�o Huy�t Nh�n/#enter_mp(27)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=�����У�2=�����У�3=�Ը�Ů��4=��СŮ

	SetPlayerRoute(nRoute);						--��������

	if nRoute == 2 then						--�����׼�
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--������ɮ
		LearnSkill(6);
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--������ɮ
		LearnSkill(2);
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--�䵱����
		LearnSkill(4);
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--�䵱�׼�
		LearnSkill(5);
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--���ҷ��
		LearnSkill(4);
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
	elseif nRoute == 9 then					--�����׼�
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--ؤ�ﾻ��
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--ؤ������
		LearnSkill(5);
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 6 then					--����
		LearnSkill(7);
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--����ǹ��
		LearnSkill(11);
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--���Ź���
		LearnSkill(12);
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--�嶾а��
		LearnSkill(13);
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--�嶾��ʦ
		LearnSkill(14);
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 23 then					--������ʦ
		LearnSkill(4);
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--����ʥս
		LearnSkill(3);
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--�������
		LearnSkill(8);
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--����Ѫ��
		LearnSkill(14);
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--��������
		LearnSkill(15);
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--������Ů
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

	----------------------------������ֵ------------
	ModifyReputation(1000000,0);			--Danh v�ng
	SetTask(336, 1000000);  --S� M�n
	SetTask(704, 6)  --Nguy�n So�i
	SetTask(701, 5000000); --C�ng tr�ng
	PlayerReborn(2, random(4));			--Chuy�n sinh
	gf_SetTaskByte(1538, 1, 5) 			--5ת
	SetLevel(99, 1);								--C�p
	ModifyExp(2000000000);
	AddTitle(65,2);
	
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	Msg2Player("Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
	Talk(1,"","Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
end


--Mat Tich
function Get_Book()
	local szSay = {
		g_szTitle.."Nh�n L�u Ph�i Ch�n Quy�n v� Quy�t Y�u!",
		"Nh�n Ch�n Quy�n/Get_Book_ZhenJuan",
		"Nh�n Quy�t Y�u/Get_Book_JueYao",
		"Th�ng c�p m�t t�ch �� trang b�/Get_Book_Update",
		"T�ng ch� s� l�n 1000%/Get_250book",
		"Ra kh�i/nothing",
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
	
	gf_AddItemEx({0, 112, 158,	1, 4}, "L�ng Ba Vi B� to�n t�p");
	gf_AddItemEx({0, 112, 224,	1, 4}, "L�ng Ba Vi B�");

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
		gf_AddItemEx({2, 6, i, 1, 4}, "Quy�t Y�u");
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
	szSay[getn(szSay) + 1] = "Nh�n Ti�u �i�u/Give_XiaoDiao";
	szSay[getn(szSay) + 1] = "Nu�i Ti�u �i�u/Give_XiaoDiaoFood";
	szSay[getn(szSay) + 1] = "Hu�n luy�n Ti�u �i�u/Feed_XiaoDiao";
	szSay[getn(szSay) + 1] = "Ra kh�i/nothing";
	Say(g_szTitle.."Ti�u �i�u thao t�c.", getn(szSay), szSay)
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
		Msg2Player("C�c h� ch�a c� th� c�ng, kh�ng th� ti�n h�nh hu�n luy�n!");
		return
	end;
	local ItemGen, ItemDetail, ItemParticular = GetItemInfoByIndex(nPetItemIndex);
	if (ItemGen == nil or ItemDetail == nil or ItemParticular == nil)
		or (ItemGen ~= 2 or ItemDetail ~= 20)
	then
		Msg2Player("C�c h� ch�a c� th� c�ng, kh�ng th� ti�n h�nh hu�n luy�n!");
		return
	end

	for i = 1, 99 do
		LevelUpPet(nPetItemIndex)
	end
end


--Xoa Kho Do
function ClearBagAllItem(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Ng��i mu�n thanh l� t�i?", 2, "��ng �/#ClearBagAllItem(1)", "Ra kh�i/nothing")
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
		g_szTitle.."Thao t�c bang h�i",
		"Ta mu�n l�p bang h�i/TongOperation_Create",
		"Ta mu�n th�ng c�p bang h�i/TongOperation_update",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function TongOperation_Create()
	if IsTongMember() ~= 0 then
		Talk(1,"","Ng��i �� c� bang h�i");
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
		g_szTitle.."Thao th�c kinh m�ch",
		"T�y �i�m kinh m�ch/GetJingMai_Reset",
		format("%s/getZhenqi", "Nh�n ch�n kh�"),
		"T�ng c�p kinh m�ch/Get_LevelKM",
		format("%s/getJingMaiTongRen", "Nh�n Kinh M�ch ��ng Nh�n"),
		"Ra kh�i/nothing",
	};
	if MeridianGetLevel() < 4 then
		tinsert(szSay, 2, "Th�ng c�p c�nh gi�i V� T�n/GetJingMai_Update")
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
	
	Talk(1,"","Hi�n t�i b�n �� ��t ��ng c�p cao nh�t c�a kinh m�ch");
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
		Say(g_szTitle.."Thao th�c kinh m�ch", 2,"��ng �/#GetJingMai_Reset(1)", "H�y b�/nothing")
		return 0;
	end
	MeridianRestore(-1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function player_reborn()
	PlayerReborn(2, random(4));			--6ת
	gf_SetTaskByte(1538, 1, 5) 			--5ת
	SetLevel(90, 1);								--���õȼ�
	
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
		Msg2Player(format("Nh�n th�nh c�ng %d linh l�c", nAdd))
	end
end

function Life_Skill()
	local tSay = {
		"Mu�n t�ng c�p k� n�ng thu th�p/upgrade_gather_skill",
		"Mu�n t�ng c�p k� n�ng s�n xu�t/upgrade_compose_skill",
		"Nh�n nguy�n li�u ch� trang b� Linh ��/get_lingtu_equip_material",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."T�ng c�p k� n�ng s�ng", getn(tSay), tSay);
end

function upgrade_gather_skill()
	local tGather = {1, 2, 5, 6};
	local tName = {"��n c�y", "L�m da", "��o kho�ng", "K�o t�"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(0, v)
		local nMax = GetLifeSkillMaxLevel(0, v);
		if nMax > nCur then
			local msg = g_szTitle..format("Hi�n t�i ch� c� th� th�ng c�p k� n�ng %s, <color=gold>%s<color> �ang ��t c�p <color=green>%d<color>, mu�n th�ng c�p <color=gold>%s<color> ��n c�p <color=green>%d<color> kh�ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("��ng �/#upgrade_gather_skill_do(%d, %d)", v, nMax), "H�y b�/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh�ng c� k� n�ng s�ng c� th� th�ng c�p, h�y �i t�m NPC �� h�c v� th�ng c�p gi�i h�n k� n�ng ��n c�p 99")
end

function upgrade_gather_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(0, nSkill), nMax do
		AddLifeSkillExp(0, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","Hi�n �� ho�n th�nh th�ng c�p k� n�ng, h�y �i t�m NPC �� t�ng c�p gi�i h�n ��n 99 n�o!")
	end
	Msg2Player(format("Th�nh c�ng t�ng c�p k� n�ng ��n c�p %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function upgrade_compose_skill()
	local tGather = {2, 3, 4, 5, 9, 10};
	local tName = {"Ch� t�o binh kh� d�i", "Ch� t�o binh kh� ng�n", "Ch� t�o k� m�n binh kh�", "L�m h� gi�p", "H� trang", "��u qu�n"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(1, v)
		local nMax = GetLifeSkillMaxLevel(1, v);
		if nMax > nCur then
			local msg = g_szTitle..format("Hi�n t�i ch� c� th� th�ng c�p k� n�ng %s, <color=gold>%s<color> �ang ��t c�p <color=green>%d<color>, mu�n th�ng c�p <color=gold>%s<color> ��n c�p <color=green>%d<color> kh�ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("��ng �/#upgrade_compose_skill_do(%d, %d)", v, nMax), "H�y b�/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh�ng c� k� n�ng s�ng c� th� th�ng c�p, h�y �i t�m NPC �� h�c v� th�ng c�p gi�i h�n k� n�ng ��n c�p 99")
end

function upgrade_compose_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(1, nSkill), nMax do
		AddLifeSkillExp(1, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","Hi�n �� ho�n th�nh th�ng c�p k� n�ng, h�y �i t�m NPC �� t�ng c�p gi�i h�n ��n 99 n�o!")
	end
	Msg2Player(format("Th�nh c�ng t�ng c�p k� n�ng ��n c�p %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function BossTongHop()
	local tSay = {}

	tinsert(tSay, format("%s/Boss_LucLam", "B�c L�c L�m Minh Ch�"))
	tinsert(tSay, format("%s/Boss_ThuongThan", "Th��ng Th�n Doanh Thi�n"))
	tinsert(tSay, format("%s/Boss_HuongLang", "L�nh H��ng L�ng"))
	tinsert(tSay, format("%s/Boss_LanHoa", "Lan Hoa"))
	tinsert(tSay, format("%s/Boss_AnhTu", "Anh T�"))
	tinsert(tSay, format("%s/Boss_PhuThuy", "Ph� th�y b�ng gi�"))
	tinsert(tSay, format("%s/Boss_LuongSon", "H�o h�n L��ng S�n"))
	tinsert(tSay, format("%s/Boss_W1", "��o Hoa ��o Ch� Ho�ng Long"))
	tinsert(tSay, format("%s/Boss_W2", "T�y V�c Th��ng Lang B� V��ng"))
	tinsert(tSay, format("%s/Boss_W3", "Ng�c S�n Chi Linh Thi�n C�u"))
	tinsert(tSay, format("%s/Boss_W4", "U Tr�ch Chi �nh Minh V�"))
	tinsert(tSay, format("%s/Boss_TuLinh", "T� Linh"))
	tinsert(tSay, format("%s/Boss_NienThu", "��i Ni�n Th�"))
	tinsert(tSay, format("%s/Boss_ThitNuong", "Y�n ti�c Th�t N��ng"))
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."Ng��i c�n g�i boss g�?", getn(tSay), tSay);
end

function Boss_LucLam()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("S�n T�c ��u M�c","B�c L�c L�m Minh Ch�", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n�i minh ch� l�c l�m �ang � t�y Tuy�n Ch�u 191/192, ch�c �ang c� �m m�u!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_ThuongThan()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("Huy�n V� Th�ong","Th��ng Th�n Doanh Thi�n", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n�i th� v� th�n t�n c�a T�n Th�y Ho�ng �ang � t�y Tuy�n Ch�u 189/192, v� l�m s�p c� m�t tr�n h�o ki�p!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_HuongLang()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("Nghi�t H�n","L�nh H��ng L�ng", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n�i L�nh H��ng L�ng  �ang � t�y Tuy�n Ch�u 186/194, mau ��n �� xem th� dung nhan ki�u di�m c�a n�ng!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_LanHoa()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("lanhua_viet","Lan Hoa", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("C� ng��i nh�n th�y Lan Hoa �ang � t�y Tuy�n Ch�u 181/190, mau ��n �� xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end

function Boss_AnhTu()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("yingzi_viet","Anh T�", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("C� ng��i nh�n th�y Anh T�  �ang � t�y Tuy�n Ch�u 179/192, mau ��n �� xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end


function Boss_ThitNuong()

	--Msg2Global("C� ng��i nh�n th�y Y�n ti�c Th�t N��ng �ang � t�y Tuy�n Ch�u 181/188, mau ��n tham d�!")
	local nAddX = 0
	local nAddY = 0
	local nTargetNpc = 0
	local nMap,nX,nY = GetWorldPos();			
	for i = 1, 20 do
		nAddX = random(-70, 70)
		nAddY = random(-70, 70)		
		nTargetNpc = CreateNpc("M�m c�", "Th�t N��ng", nMap, nX + nAddX,  nY + nAddY)
		SetNpcLifeTime(nTargetNpc, 130)
		SetNpcScript(nTargetNpc, "\\script\\online\\viet_event\\200909\\2\\pangtuzi_baoguo.lua")
end

end

function Boss_PhuThuy()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = 0
	local nNpcIndex = CreateNpc("Ph� th�y b�ng gi�", "Ph� th�y b�ng gi�", nMap, nX + 2, nY + 2);
	SetNpcLifeTime(nNpcIndex, 7200);
	SetNpcDeathScript(nNpcIndex, "\\script\\online\\viet_event\\200912\\3\\death_binglengwushi.lua");
	--Msg2Global("C� ng��i nh�n th�y Ph� th�y b�ng gi�  �ang � t�y Tuy�n Ch�u 192/188, mau ��n �� xem!")


end

function Boss_LuongSon()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(LSB_NPC_GOLD_BOSS, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(LSB_NPC_GOLD_BOSS[n][1],LSB_NPC_GOLD_BOSS[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boos_death.lua");
		SetNpcRemoveScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boss_remove.lua");
	--Msg2Global("C� ng��i ph�t hi�n H�o h�n L��ng S�n  �ang � t�y Tuy�n Ch�u 191/187, mau ��n �� xem!")

end

LSB_NPC_GOLD_BOSS = {
	--{"yangxiong", 165, "B�nh Quan S�c D��ng H�ng", 30 * 60},
	--{"linchong", 167, "B�o T� ��u L�m Xung", 30 * 60},
	--{"luzhishen", 167, "Hoa H�a Th��ng L� Tr� Th�m", 30 * 60},
	--{"likui", 167, "H�c To�n Phong L� Qu�", 30 * 60},
	--{"husanliang", 167, "Nh�t Tr��ng Thanh H� Tam N��ng", 30 * 60},
	--{"shixiu", 167, "Phanh M�nh Tam Lang Th�ch T�", 30 * 60},
	{"C�p Th�i V� T�ng Giang", 167, "C�p Th�i V� T�ng Giang", 30 * 60},
	{"Tri �a Tinh Ng� D�ng", 167, "Tri �a Tinh Ng� D�ng", 30 * 60},
	{"C�u V�n Long S� Ti�n", 167, "C�u V�n Long S� Ti�n", 30 * 60},
	{"Ti�u Tuy�n Phong S�i Ti�n", 167, "Ti�u Tuy�n Phong S�i Ti�n", 30 * 60},
	{"��i �ao Quan Th�ng", 167, "��i �ao Quan Th�ng", 30 * 60},
	{"Nh�p V�n Long C�ng T�n Th�ng", 167, "Nh�p V�n Long C�ng T�n Th�ng", 30 * 60},
	{"B�o T� ��u L�m Xung", 167, "B�o T� ��u L�m Xung", 30 * 60},
	{"Hoa H�a Th��ng L� Tr� Th�m", 167, "Hoa H�a Th��ng L� Tr� Th�m", 30 * 60},
	{"H�nh Gi� V� T�ng", 167, "H�nh Gi� V� T�ng", 30 * 60},
	{"T�y B�n Ti�n Phong Nh�t Ph�m", 167, "T�y B�n Ti�n Phong Nh�t Ph�m", 30 * 60},
	{"B�nh Quan S�c D��ng H�ng", 167, "B�nh Quan S�c D��ng H�ng", 30 * 60},
	{"Phanh M�nh Tam Lang Th�ch T�", 167, "Phanh M�nh Tam Lang Th�ch T�", 30 * 60},
	{"Nh�t Tr��ng Thanh H� Tam N��ng", 167, "Nh�t Tr��ng Thanh H� Tam N��ng", 30 * 60},
	{"Song Th��ng T��ng ��ng B�nh", 167, "Song Th��ng T��ng ��ng B�nh", 30 * 60},
	{"Thanh Di�n Th� D��ng Tr�", 167, "Thanh Di�n Th� D��ng Tr�", 30 * 60},
	{"T�ch L�ch H�a T�n Minh", 167, "T�ch L�ch H�a T�n Minh", 30 * 60},
	{"Song Ti�n H� Di�n Ch��c", 167, "Song Ti�n H� Di�n Ch��c", 30 * 60},
	{"H�c To�n Phong L� Qu�", 167, "H�c To�n Phong L� Qu�", 30 * 60},
};

function Boss_W1()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_HL", "��o Hoa ��o Ch� Ho�ng Long", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W2()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T�y V�c Th��ng Lang B� V��ng", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W3()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ng�c S�n Chi Linh Thi�n C�u", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W4()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr�ch Chi �nh Minh V�", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Thuong_LuongSon()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
			local nNpcIdx = CreateNpc(IBbaoxiang, "R��ng H�o H�n", nMap, nX + 2, nY + 2);
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
	{"Long T�", 165, "Long Th�n H�a Th�n", 30 * 60},
	{"Ph�ng T�", 167, "Ph�ng Th�n H�a Th�n", 30 * 60},
	{"H� T�", 165, "H� Th�n H�a Th�n", 30 * 60},
	{"�ng T�", 167, "�ng Th�n H�a Th�n", 30 * 60},
}

function Boss_NienThu()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = CreateNpc("��i Ni�n Th�","Th�n th� ngh�n n�m",  nMap, nX + 2, nY + 2);
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
		g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",	
		"Nh�n Danh Hi�u Du Hi�p/Get_DuHiep",	
		"Nh�n Danh Hi�u �ng D��ng/Get_UngDuong",	
		"Nh�n Danh Hi�u Chi�n Cu�ng/Get_ChienCuong",	
		"Nh�n V� L�m B�ch Hi�u Sinh/Get_VLBHS",	
                "Nh�n Si�u Nh�n V�t Mu�i/Get_SNVM",	
                "Nh�n Si�u Nh�n Gao/Get_SNGAO",	
                "Nh�n Si�u Nh�n M� B�/Get_SNMiBo",	
                "Nh�n Si�u Nh�n M� G�/Get_SNMiGa",	
                "Nh�n Si�u Nh�n M� T�m/Get_SNMiTom",	
                "Trang k�/Get_Danh_Hieu2",	
		"Ra kh�i/nothing",	
	};	
	SelectSay(szSay);	
end	
function Get_DuHiep()	
	AddTitle(65, 1)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Du Hi�p");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_UngDuong()	
	AddTitle(65, 2)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u �ng D��ng");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_ChienCuong()	
	AddTitle(65, 3)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Chi�n Cu�n");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_VLBHS()	
	AddTitle(63, 1)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u V� L�m B�ch Hi�u Sinh");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNVM()	
	AddTitle(62, 1)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n V�t Mu�i");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNGAO()	
	AddTitle(62, 2)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n Gao");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNMiBo()	
	AddTitle(62, 3)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� B�");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNMiGa()	
	AddTitle(62, 4)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� G�");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SNMiTom()	
	AddTitle(62, 5)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� T�m");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_Danh_Hieu2()	
	local szSay = {	
		g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",	
                "Nh�n Danh Hi�u S�ng kh�ng y�u/Get_DelYeu",	
                "Nh�n Danh Hi�u H�n ��i v� ��i/Get_HanDoi",	
                "Nh�n Danh Hi�u Bu�n V� ��p Trai/Get_SadDep",	
                "Nh�n Danh Hi�u Ng�o Th� V� Song/Get_NgaoTheVoSong",	
                "Nh�n Danh Hi�u B� V��ng/Get_BaVuong",	
                "Nh�n Danh Hi�u ��i Hi�p/Get_DaiHiep",	
                "Nh�n Danh Hi�u Tinh Anh ��/Get_TinhAnhDo",	
                "Nh�n Danh Hi�u Tinh Anh T�m/Get_TinhAnhTim",	
		"Ra kh�i/nothing",	
	};	
	SelectSay(szSay);	
end	
function Get_BaVuong()	
	AddTitle(66, 1)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Ch� T�n V��ng Gi�");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_DaiHiep()	
	AddTitle(66, 2)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u ��c B� Thi�n H�");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_TinhAnhDo()	
	AddTitle(66, 3)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u V� l�m h�o ki�t");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_TinhAnhTim()	
	AddTitle(66, 4)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Giang h� tinh anh");	
	PlaySound("\\sound\\sound_i016.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)	
end	
function Get_NgaoTheVoSong()	
	AddTitle(61, 7)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Ng�o Th� V� Song");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_SadDep()	
	AddTitle(62, 13)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Bu�n V� ��p Trai");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_DelYeu()	
	AddTitle(62, 6)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u S�ng kh�ng y�u");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end	
function Get_HanDoi()	
	AddTitle(62, 7)	
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u H�n ��i V� ��i");	
	PlaySound("\\sound\\sound_i017.wav");	
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)	
end