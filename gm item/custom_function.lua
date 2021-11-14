-- Main Custom Category
function Get_Custom_GM_Item()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn C¸c Lo¹i Trang BÞ/Get_All_TB",
		"NhËn Hoµng Kim LÖnh Bµi/Get_HKLB",
		"Thao T¸c CÊp §é/Get_Level_Custom",
		"Chøc n¨ng kh¸c/Get_Other_Custom",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_HKLB()
	AddItem(2,1,30284,1)
end

-- Tat Ca Trang Bi
function Get_All_TB()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn trang bÞ BHTA/Get_TB_BHTA",
		"NhËn trang bÞ ChiÕn Tr­êng/Get_TB_CT",
		"NhËn trang bÞ Phæ BiÕn/Get_TB_Phobien",
		"NhËn trang bÞ Viªm §Õ + Tö Quang/Get_TB_VD_TK",
		"NhËn trang bÞ Tµng KiÕm + S­ M«n/Get_TB_TK_SM",
		"NhËn trang bÞ Th«ng Dông/Get_TBThuong",
		"NhËn trang bÞ Tiªu Dïng/Get_TieuDung",
		"NhËn Danh HiÖu/Get_Danh_Hieu",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

-- TRANG BI BANG HOI TINH ANH
function Get_TB_BHTA()
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

function Get_HBVS()
	if 1 ~= gf_Judge_Room_Weight(30, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 20020 + GetBody() - 1;
	for i=1,10 do
		AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_VSCT()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30651 + GetBody() - 1;
	for i=1,10 do
		AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
		AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	end
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

--TRANG BI CHIEN TRUONG
function Get_TB_CT()
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

--Get Tong UH Soai
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

--Get Lieu UH Soai
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

--Get Tong TL Soai
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

--Trang bi HOA PHUNG
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

--Get Tong HP Soai
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

-- Trang bi LOI HO
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

--Get LH Dung Si
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

--Get Tong LH Tuong

--Get Tong LH Soai

--Get Lieu LH Tuong

--Get Lieu LH Soai

-- Trang bi THUONG UNG
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

--Get Tong TU Do Thong

--Get Tong TU Tuong

--Get Tong TU Soai

--Get Lieu TU Tuong

--Get Lieu TU Soai

--Trang bi Khac
function Get_CT_Khac()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ Ngù Long/Get_CT_NL",
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

--Trang Bi Ngu Long Tuong
function Get_CT_NL()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Ngù Long T­íng Phe Tèng/Get_T_NLT",
		"Trang phôc Ngù Long So¸i Phe Tèng/Get_T_NLS",
		"Trang phôc Ngù Long T­íng Phe Liªu/Get_L_NLT",
		"Trang phôc Ngù Long So¸i Phe Tèng/Get_L_NLS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

--Get Tong NLT
function Get_T_NLT()
	local ID1 = 30017; --ID Trang bÞ ®Çu tiªn NLT
	local ID2 = 30013; --ID Trang bÞ ®Çu tiªn ngäc béi NLT
	
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

--Get Lieu NLT

--Get Dai Nguyen Soai

--Get Tuong Quan Chien

--Get Chieu Thanh Soai

--Get Thieu Thanh Soai

--Get Ngu Long Soai

--Get Soai

--Get Tuong

--Get Do Thong

-- TRANG BI PHO BIEN
function Get_TB_Phobien()
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

function Get_LBSatTinh() 	
	AddItem(2, 1, 50000 ,1);	
	AddItem(2, 1, 50001 ,1);	
	AddItem(2, 1, 50002 ,1);	
	AddItem(2, 1, 50004 ,1);	
	AddItem(2, 1, 50003 ,1);	
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

-- TRANG BI VIEM DE + TU QUANG
function Get_TB_VD_TK()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ B¹ch Kim Viªm §Õ/Get_TB_BKVD",
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

-- TRANG BI TANG KIEM + SU MON
function Get_TB_TK_SM()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ Thiªn Chi Tµng KiÕm/Get_TB_TCTK",
		"Trang bÞ Tµng KiÕm 9x/Get_TB_TK9",
		"Trang bÞ Tµng KiÕm 7x/Get_TB_TK7",
		"Trang bÞ Tµng KiÕm 5x/Get_TB_TK5",
		"Trang bÞ S­ M«n 9x/Get_TB_SM9",
		"Trang bÞ S­ M«n 7x/Get_TB_SM7",
		"Trang bÞ S­ M«n 5x/Get_TB_SM5",
		"Trang bÞ S­ M«n 1x/Get_TB_SM1",
		"Ngäc béi Boss/Get_NB_Boss",
		"Ngäc béi Th¸i H­/Get_NB_ThaiHu",
		"Ngäc béi Cöu Thiªn/Get_NB_CuuThien",
		"Ra khái/nothing",
	};	
	SelectSay(szSay);	
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

--TRANG BI THONG THUONG
function Get_TBThuong()
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

-- Danh Hieu
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
		"NhËn §u«i Thá/Get_DuoiTho",
		format("%s/getTianJiaoLing", "NhËn Thiªn Kiªu LÖnh"),
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

-- Custom Category
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

function Get_DuoiTho()
	AddItem(2, 1, 2, 10)
end

-- Other Custom
function Get_Other_Custom()
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

-- Level Custom
function Get_Level_Custom()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Lªn CÊp 50/Get_Level_50",
		"Lªn CÊp 73/Get_Level_73",
		"Lªn CÊp 99/Get_Level_99",
		"NhËn 2 tØ kinh nghiÖm/Get_Exp_Custom",
		"NhËn 10.000 ®iÓm danh väng/Get_Rep_Custom",
		"NhËn 10.000 ®iÓm s­ m«n/Get_Fac_Custom",
		"NhËn qu©n hµm Nguyªn So¸i vµ c«ng tr¹ng/Get_Mer_Custom",
		"NhËn Max ChuyÓn Sinh 1/Get_Max_CS_1",
		"NhËn Max ChuyÓn Sinh 7/Get_Max_CS_7",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_Max_CS_1()
	Get_Level_99();
	Get_Exp_Custom();
	Get_Rep_Custom();
	Get_Fac_Custom();
	Get_Mer_Custom();

	--Hieu Bang
	AddTitle(69,1);
	AddTitle(69,2);
	AddTitle(72,10);
	
	-- Hieu CS
	AddTitle(61,5);
	AddTitle(71,1);
	AddTitle(73,1);
	AddTitle(76,1);
	
	--Hieu New
	AddTitle(70,1);
	AddTitle(74,1);
	AddTitle(74,2);
	AddTitle(74,3);
	AddTitle(75,1);
	AddTitle(75,2);
end

function Get_Max_CS_7()
	PlayerReborn(2, random(4));
	Get_Level_99();
	Get_Exp_Custom();
	Get_Rep_Custom();
	Get_Fac_Custom();
	Get_Mer_Custom();
	gf_SetTaskByte(1538, 1, 5);

	--Hieu Bang
	AddTitle(69,1);
	AddTitle(69,2);
	AddTitle(72,10);
	
	-- Hieu CS
	AddTitle(61,5);
	AddTitle(71,1);
	AddTitle(73,1);
	AddTitle(76,1);
	
	--Hieu New
	AddTitle(70,1);
	AddTitle(74,1);
	AddTitle(74,2);
	AddTitle(74,3);
	AddTitle(75,1);
	AddTitle(75,2);
end

function Get_Level_50()
	SetLevel(50, 1)
end

function Get_Level_73()
	SetLevel(73, 1)
end

function Get_Level_99()
	SetLevel(99, 1)
end

function Get_Exp_Custom()
	ModifyExp(2000000000);
end

function Get_Rep_Custom()
	ModifyReputation(10000,0);
end

function Get_Fac_Custom()
	SetTask(336, 10000);
end

function Get_Mer_Custom()
	SetTask(704, 6)
	SetTask(701, 5000000);
end