--Ìå·þÖ¸Òý
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\system_switch_config.lua");
Include("\\settings\\static_script\\cheat\\list_gm.lua");

g_szTitle = "<color=green>GM: <color>"

nD1 = 0;
nD2 = 0;
nD3 = 0;
nIDOutfit = 0;
nIDOutfitType = 0;
IsTBPHP = 0;
nTBCT_ATT_A = 0;
nTBCT_ATT_TP = 0;
nTBCT_ATT_NB = 0;
nTBCT_ATT_VK = 0;

outfitSzSay = {
        g_szTitle.."H·y lùa chän thuéc tÝnh:",
"MÆc ®Þnh/#Mod_NTGetOutfits(0)", 
  "Bá qua tû lÖ gi·n c¸ch chiªu, néi lùc, phßng thñ ®èi ph­¬ng 100%/#Mod_NTGetOutfits(14636)",	
  "Tr¸nh mäi tr¹ng th¸i phô, néi ngo¹i phßng t¨ng 5000/#Mod_NTGetOutfits(14637)",	
  "MiÔn dÞch hçn lo¹n, ngñ, ®¸nh ng· 100%/#Mod_NTGetOutfits(14638)",	
  "MiÔn dÞch ®øng yªn, cho¸ng, ®¸nh lui 100%/#Mod_NTGetOutfits(14639)",	
  "Kh¸ng tÊt c¶ 3000, tèc ®é xuÊt chiªu t¨ng 500%, Gi¶m nöa mäi s¸t th­¬ng/#Mod_NTGetOutfits(14640)",	
  "Ngo¹i, néi phßng t¨ng 100%, sinh lùc v« ®Þch/#Mod_NTGetOutfits(14641)",	
  "Tèc ®é di chuyÓn t¨ng 100%, x¸c suÊt xuÊt chiªu t¨ng 100%, ®é bÒn vò khÝ 600s håi 100/#Mod_NTGetOutfits(14642)",	
  "Néi, ngo¹i c«ng t¨ng 9000%, hç trî mËt tÞch t¨ng 300%/#Mod_NTGetOutfits(14643)",
"Håi phôc sinh lùc mçi nöa gi©y 10%, Gi¶m thä th­¬ng 100%, Hç trî mËt tÞch 300%/#Mod_NTGetOutfits(14644)",
"Tèc ®é xuÊt chiªu t¨ng 1000%, thêi gian hç trî tÊn c«ng phßng thñ t¨ng 1000%/#Mod_NTGetOutfits(14645)",	
         "T¨ng tèc ®é xuÊt chiªu 85%, Kh¸ng tÊt c¶ 4xx/#Mod_NTGetOutfits(14487)",
         "T¨ng tèc ®é thi triÓn vâ c«ng 92%, kh¸ng tÊt c¶ 280, t¨ng tû lÖ chÞu ®ßn 55%/#Mod_NTGetOutfits(14524)",
        "Tèc ®é di chuyÓn t¨ng 140%/#Mod_NTGetOutfits(403)",
        "Gi¶m thä th­¬ng 165%, sinh lùc t¨ng 44000/#Mod_NTGetOutfits(14523)",
        "Gi·n c¸ch liªn hoa t©m kinh vÒ 0, Thêi gian hç trî tÊn c«ng phßng thñ t¨ng 140%/#Mod_NTGetOutfits(852)",
        "Néi lùc tiªu hao gi¶m 98%/#Mod_NTGetOutfits(14611)", 
        "Phßng ngù néi ngo¹i c«ng t¨ng 8%/#Mod_NTGetOutfits(495)",
        "Nãn, Y phôc, H¹ Y mçi 600s phôc håi ®é bÒn 7/#Mod_NTGetOutfits(405)",
        "§é bÒn vò khÝ mçi 600s phôc håi 7/#Mod_NTGetOutfits(43)",
        "Tr¸nh mäi tr¹ng th¸i phô 70%/#Mod_NTGetOutfits(406)",
        "MiÔn dÞch Lo¹n, Ngñ, §¸nh ng· 50%/#Mod_NTGetOutfits(13066)",
        "MiÔn dÞch §øng yªn, Cho¸ng, §¸nh lui 50%/#Mod_NTGetOutfits(13067)",
        "Mçi n÷a gi©y phôc håi sinh lùc ®ång ®éi 7%/#Mod_NTGetOutfits(416)",
        "Néi c«ng t¨ng 140%/#Mod_NTGetOutfits(14526)",
        "Ngo¹i c«ng t¨ng 140%/#Mod_NTGetOutfits(14525)",
        "Bá qua phßng ngù 35%/#Mod_NTGetOutfits(252)",
        "Kh¸ng tÊt c¶ 240, Néi ngo¹i phßng t¨ng 900 ®iÓm/#Mod_NTGetOutfits(13355)",
        "Phßng thñ néi c«ng ®èi ph­¬ng gi¶m 43%/#Mod_NTGetOutfits(846)",
        "Phßng thñ ngo¹i c«ng ®èi ph­¬ng gi¶m 43%/#Mod_NTGetOutfits(845)",
        "Sinh lùc t¨ng 45%/#Mod_NTGetOutfits(843)",
        "T¨ng tèc ®é xuÊt chiªu 24%, Hç trî mËt tÞch 20%, Kh¸ng tÊt c¶ 55/#Mod_NTGetOutfits(14118)",
        "Thêi gian hç trî t¨ng 140%, kh¸ng tÊt c¶ 30/#Mod_NTGetOutfits(838)",
        "Phßng ngù ngo¹i c«ng t¨ng 8%/#Mod_NTGetOutfits(493)",
        "Phßng ngù néi c«ng t¨ng 8%/#Mod_NTGetOutfits(494)",
        "X¸c suÊt xuÊt chiªu t¨ng 8%/#Mod_NTGetOutfits(491)",
        "Phßng ngù ngo¹i c«ng ®èi ph­¬ng gi¶m 15%/#Mod_NTGetOutfits(63)",
        "Phßng ngù néi c«ng ®èi ph­¬ng gi¶m 15%/#Mod_NTGetOutfits(64)",
        "Gi¶m phßng ngù néi ngo¹i c«ng ®èi ph­¬ng 14%/#Mod_NTGetOutfits(90)",    
        "Ra khái/nothing",
    };

function OnUse(nItem)	
	--print(GetPlayerRebornParam(0))
	--print(GetTranslifeCount())
	-------Chøc N¨ng Set Qu¶n TrÞ Viªn
	local nName = GetAccount();
	if CheckName(nName) == 0 then
		Talk(1,"","B¹n kh«ng ph¶i Qu¶n TrÞ Viªn");
	else
		Open();
	end
end

function Open()
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
			--"\nT¹o Boss/AddNPC",
			"Xãa kho ®å/ClearBagAllItem",
			format("%s/getTiLi", "Håi ThÓ Lùc"),
			format("%s/getShaQi", "Håi S¸t KhÝ"),
			"LÖnh GM Cò/Get_Custom_GM_Item",
			"Gäi Boss /BossTongHop",
			"NhËn ngo¹i trang /Mod_GetNgoaiTrang",
			"NhËn trang bÞ /GetTB",
			"NhËn thó c­ìi /Mod_GetThuCuoi",
			"NhËn vËt phÈm kh¸c/Get_TieuDung",
			"Chøc n¨ng më réng/Get_Orther",
			"Qu¶n lý trß ch¬i/Mod_GMActions",
		}
	end
	--tinsert(tSay, "Xãa kho ®å/ClearBagAllItem");
	tinsert(tSay, "Tho¸t/nothing");
	Say(g_szTitle.."Lùa chän chøc n¨ng", getn(tSay), tSay);
end
function Mod_GetThuCuoi()
	local szSay = {
        		g_szTitle.."Chän thó c­ìi:",
		"B¹ch M·/#Mod_GetThuCoi(34)",
		"Phiªu Vò/#Mod_GetThuCoi(15)",
		"B«n Tiªu/#Mod_GetThuCoi(16)",
		"Siªu Quang/#Mod_GetThuCoi(19)",
		"§»ng Vô/#Mod_GetThuCoi(20)",
		"ThiÕu D­¬ng ThÊt Tinh KiÕm/#Mod_GetThuCoi(10107)",
		"V¨n Sö ThÊt Qu©n KiÕm/#Mod_GetThuCoi(10108)",
		"Ngäc Kú L©n/#Mod_GetThuCoi(30003)",
		"Háa Kú L©n/#Mod_GetThuCoi(30004)",
		"B¹ch Hæ/#Mod_GetThuCoi(30009)",
		"Hoµng Hæ/#Mod_GetThuCoi(30010)",
		"B¸o Tr¾ng/#Mod_GetThuCoi(30012)",
		"B¸o §en/#Mod_GetThuCoi(30013)",
		"Thá ®en/#Mod_GetThuCoi(30039)",
		"Thá b«ng/#Mod_GetThuCoi(30040)",
        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 
end
function Mod_GetThuCoi(horseId)
	AddItem(0,105,horseId,1,1,-1,-1,-1,-1,-1,-1,-1,0)
end
function Mod_GMActions()
	local szSay = {
        		g_szTitle.."Chän chøc n¨ng:",
        		"Di chuyÓn tíi vÞ ttrÝ ng­êi ch¬i/teleportToPlayer",
		"TriÖu håi ng­êi ch¬i tíi vÞ trÝ cña m×nh/summonPlayer",
		"NhËn ph¸o chiÕn th¾ng (60 c¸i)/Mod_GetPhaoChienThang",
		"NhËn kim phiÕu/Mod_GetKimPhieu",
        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 
end
function Mod_GetKimPhieu()
	ModifyJinJuan(9999999,0)
end
function Mod_GetPhaoChienThang()
	AddItem(2,1,30297,60)
end
function teleportToPlayer()
	local tSay = {}
	local oldPlayerIndex = PlayerIndex;
	local totalOnlinePlayers = 0;
	local player = FirstPlayer()
	while (player > 0) do
	  if player ~= oldPlayerIndex then 
			totalOnlinePlayers = totalOnlinePlayers + 1;
			PlayerIndex = player;
			tinsert(tSay,""..GetName().."/#reallyTeleportToPlayer("..player..")");
		end
		player = NextPlayer(player)
	end
	PlayerIndex = oldPlayerIndex;


	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Found ".. totalOnlinePlayers .." players online. Who do you want to get to?", getn(tSay), tSay);
end


function reallyTeleportToPlayer(playerIndex)
	local mapId, nX, nY = gf_GetWorldPos(playerIndex);
	NewWorld(mapId, nX, nY);
end


function summonPlayer()
	local tSay = {}
	local oldPlayerIndex = PlayerIndex;
	local totalOnlinePlayers = 0;
	local player = FirstPlayer()
	while (player > 0) do
	  if player ~= oldPlayerIndex then 
			totalOnlinePlayers = totalOnlinePlayers + 1;
			PlayerIndex = player;
			tinsert(tSay,""..GetName().."/#reallySummonPlayer("..player..")");
			-- tinsert(tSay, format("%s/reallySummonPlayer", GetName()))
		end
		player = NextPlayer(player)
	end
	PlayerIndex = oldPlayerIndex;


	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Found ".. totalOnlinePlayers .." players online. Who do you want to summon?", getn(tSay), tSay);
end


function reallySummonPlayer(playerIndex)
	-- Msg2Player(playerIndex);
	local mapId, nX, nY = GetWorldPos();
	local oldPlayerIndex = PlayerIndex;
	PlayerIndex = playerIndex or PlayerIndex;
	NewWorld(mapId, nX, nY);
	PlayerIndex = oldPlayerIndex;
end
function Mod_GetNgoaiTrang()
	 local szSay = {
        		g_szTitle.."Chän ngo¹i trang",
        		"ChuyÓn sinh y/#Mod_NTSetID(514)",
		"Tø Linh ViÖt Phôc Y (Vµng)/#Mod_NTSetID(30001)",
		"Tø Linh ViÖt Phôc Y (TÝm)/#Mod_NTSetID(30005)",
		"Tø Linh ViÖt Phôc Y (Xanh)/#Mod_NTSetID(30009)",
		"Tuong Duong ngo¹i trang/#Mod_NTSetID(213)",
		"TuyÒn Ch©u ngo¹i trang/#Mod_NTSetID(217)",
		"Thµnh §« ngo¹i trang/#Mod_NTSetID(221)",
		"Ng¹o nghÔ ngo¹i trang/#Mod_NTSetID(1041)",
		"Song §¸n ngo¹i trang/#Mod_NTSetID(901)",
		"Khæng T­íc Minhn V­¬ng ngo¹i trang/#Mod_NTSetID(929)",
		"Tö D¹ ngo¹i trang/#Mod_NTSetID(825)",
		"C«ng Th­¬ng ngo¹i trang/#Mod_NTSetID(937)",
		"Thiªn Vò Cµ Sa ngo¹i trang/#Mod_NTSetID(713)",
		"DiÖp Th­îng Thu Phong ngo¹i trang/#Mod_NTSetID(953)",
		"TiÒn Long ngo¹i trang/#Mod_NTSetID(837)",
		"ChØ Thñy ngo¹i trang/#Mod_NTSetID(833)",
		"XÝch Viªn Léng H¹c ngo¹i trang/#Mod_NTSetID(985)",

        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 
end
function Mod_GetTBDC()
	 local szSay = {
        		g_szTitle.."Chän trang bÞ",
		"Thiªn Chi Viªm §Õ/#Mod_TBSetID(8051)",
		"B¹ch Kim Viªm §Õ/#Mod_TBSetID(30013)",
		"Tèng Ngù Long T­íng Qu©n/#Mod_TBSetID(30017)",
		"Liªu Ngù Long T­íng Qu©n/#Mod_TBSetID(30021)",
		"Long §»ng Tø H¶i Trang/#Mod_TBSetID(3056)",
		"Phông Vò Cöu Thiªn Trang/#Mod_TBSetID(3060)",
		"Ngù Long Nguyªn So¸i ChiÕn Phôc/#Mod_TBSetID(3000)",
		"ThiÖu Th¸nh Nguyªn So¸i ChiÕn Phôc/#Mod_TBSetID(3004)",
		"Tèng §« Thèng ChiÕn/#Mod_TBSetID(2231)",
		"Liªu §« Thèng ChiÕn/#Mod_TBSetID(2235)",
		"Tµng kiÕm 8x/#Mod_TBSetID(95)",
		"Tæng Qu¶n 7x/#Mod_TBSetID(91)",
        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 

end
function Mod_NTSetID(nidOutfits)
        	nIDOutfit = nidOutfits;
	 local szSay = {
        		g_szTitle.."Chän lo¹i:",
        		"Nãn/#Mod_NTGetOutfitType(108)",
		"Trang phôc/#Mod_NTGetOutfitType(109)",
		"H¹ y/#Mod_NTGetOutfitType(110)",
        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 
end

function Mod_TBSetID(nidOutfits)
	nIDOutfit = nidOutfits;
	local szSay = {
        		g_szTitle.."Chän lo¹i:",
        		"Nãn/#Mod_NTGetOutfitType(103)",
		"Trang phôc/#Mod_NTGetOutfitType(100)",
		"H¹ y/#Mod_NTGetOutfitType(101)",
		"Trang søc/#Mod_NTGetOutfitType(102)",
		"Vò khÝ/Mod_TBGetWaeponTypeList",
        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 
end
function Mod_TBGetWaeponTypeList()
	local szSay = {
        		g_szTitle.."Chän lo¹i:",
        		"G¨ng tay/#Mod_NTGetOutfitType(0)",
		"¸m khÝ/#Mod_NTGetOutfitType(1)",
		"KiÕm/#Mod_NTGetOutfitType(2)",
		"§ao/#Mod_NTGetOutfitType(3)",
		"Cung/#Mod_NTGetOutfitType(4)",
		"C«n/#Mod_NTGetOutfitType(5)",
		"Th­¬ng/#Mod_NTGetOutfitType(6)",
		"Song ®ao/#Mod_NTGetOutfitType(7)",
		"TÝch tr­îng/#Mod_NTGetOutfitType(8)",
		"Bót/#Mod_NTGetOutfitType(9)",
		"CÇm/#Mod_NTGetOutfitType(10)",
		"Tr¶o/#Mod_NTGetOutfitType(11)",
        		"Ra khái/nothing",
    	};
    	SelectSay(szSay); 

end
function Mod_NTGetOutfitType(nIdType)
	nIDOutfitType = nIdType
	IsTBPHP = 0
	nD1 = 0;
	nD2 = 0;
	nD3 = 0;
	SelectSay(outfitSzSay);  
end
function Mod_NTGetOutfits(nD)
	local att_type = 7
	if nD == 0 then
		nD1 = -1
		nD2 = -1
		nD = -1
		att_type = -1
	end

	if nD1 == 0 then
		nD1 = nD;
		SelectSay(outfitSzSay);  
    	else
		if nD2 == 0 then
			nD2 = nD;
			SelectSay(outfitSzSay);  
		else
			local nID = nIDOutfit + GetBody() - 1;
			if IsTBPHP == 1 then
				nID = tonumber(nIDOutfit);
			end
			
			if nIDOutfitType == 102 or nIDOutfitType == 108 or nIDOutfitType == 109 or nIDOutfitType == 110 then
				AddItem(0, nIDOutfitType, nID, 1, 1,att_type,nD1,att_type,nD2,att_type,nD,-1,0);
			else
				AddItem(0, nIDOutfitType, nID, 1, 1,att_type,nD1,att_type,nD2,att_type,nD,-1,15);
			end
		end
	end     
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


function AddNPC(nVar1)
	local map_ID,att_X,att_Y = GetWorldPos();
	
	local nNpcIndex = CreateNpc("WorldBoss_rwx", "BOSS ThÕ Giíi", map_ID, att_X, att_Y);
	SetNpcLifeTime(nNpcIndex,1000);
	--SetNpcDeathScript(nNpcIndex, );
end


--TRANG BI THONG THUONG
function GetTB()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Trang bÞ dïng chung/Mod_GetTBDC",
		"Trang bÞ Kim Xµ 6/Get_KimXa",
		"Trang bÞ V« Song ChiÕn ThÇn/Get_VSCT",
		"Trang bÞ H¾c B¹ch V« Song/Get_HBVS",
		"Trang bÞ V« H¹ Hµo HiÖp/Get_HHVH",
		"Trang bÞ ¢m HuyÕt/Get_AH",
		"Trang bÞ S¸t Tinh/Get_ST",
		"Trang bÞ ChiÕn Tr­êng/GetCT",
		"Trang bÞ Minh Tinh V« Cùc/Get_NgocBoi",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);	
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
function Get_VSCT()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30651 + GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
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

function Get_HHVH()
	AddItem(2, 1, 30947 ,1);
	AddItem(2, 1, 30948 ,1);
	AddItem(2, 1, 30949 ,1);
	AddItem(2, 1, 30977 ,2);
	AddItem(2, 1, 30976 ,1);
end

function Get_ST()
	AddItem(2, 1, 50000 ,1);
	AddItem(2, 1, 50001 ,1);
	AddItem(2, 1, 50002 ,1);
	AddItem(2, 1, 50004 ,2);
	AddItem(2, 1, 50003 ,1);
end

function Get_AH()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 20012 + GetBody() - 1;
	
	AddItem(0, 103, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 101, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0, 100, nBody, 1,1, -1,-1,-1,-1,-1,-1,1,15);
	
	AddItem(0, 102, 31414, 1,1, -1,-1,-1,-1,-1,-1,1,0);
	AddItem(0, 102, 31415, 1,1, -1,-1,-1,-1,-1,-1,1,0);
	
	local nVK = 30884;
	local ID = {
		[2] = 	{3, nVK},
		[3] = 	{8,nVK + 2},
		[4] = 	{0,nVK + 1},
		[6] = 	{1,nVK + 3},
		[8]= 	{2,nVK + 4},
		[9]= 	{10,nVK + 5},
		[11]=	{0,nVK + 6},
		[12]=	{5,nVK + 7},
		[14]=	{2,nVK + 8},
		[15]=	{9,nVK + 9},
		[17]=	{6,nVK + 10},
		[18]=	{4,nVK + 11},
		[20]=	{7,nVK + 12},
		[21]=	{11,nVK + 13},
		[23]=	{2,nVK + 14},
		[25]=	{3,nVK + 15},
		[26]=	{9,nVK + 16},
		[27]=	{11,nVK + 17},
		[29]=	{13,nVK + 18},
		[30]=	{12,nVK + 19},
	};
	
	for k, v in pairs(ID) do
		if nRoute == k then				
			AddItem(0, v[1], v[2], 1,1,-1,-1,-1,-1,-1,-1,1,15); 
		end
	end
end

function Get_NgocBoi()
	if 1 ~= gf_Judge_Room_Weight(2, 1, g_szTitle) then
		return 0;
	end

	AddItem(0,102,31130,1,1,-1,-1,-1,-1,-1,-1,1,0)
	AddItem(0,102,31131,1,1,-1,-1,-1,-1,-1,-1,1,0)
end


--TRANG BI CHIEN TRUONG
function GetCT()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn trang bÞ Háa Phông/Get_CT_HP",
		"NhËn trang bÞ Thanh Long/Get_CT_TL",
		"NhËn trang bÞ Uy Hæ/Get_CT_UH",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);	
end

--Trang bi UY HO
function Get_CT_UH()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Uy Hæ T­íng Phe Tèng/#Get_TP_CT_UH(1,1)",
		"Trang phôc Uy Hæ So¸i Phe Tèng/#Get_TP_CT_UH(1,2)",
		"Trang phôc Uy Hæ T­íng Phe Liªu/#Get_TP_CT_UH(2,1)",
		"Trang phôc Uy Hæ So¸i Phe Liªu/#Get_TP_CT_UH(2,2)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end

--Trang bi THANH LONG
function Get_CT_TL()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Thanh Long T­íng Phe Tèng/#Get_TP_CT_TL(1,1)",
		"Trang phôc Thanh Long So¸i Phe Tèng/#Get_TP_CT_TL(1,2)",
		"Trang phôc Thanh Long T­íng Phe Liªu/#Get_TP_CT_TL(2,1)",
		"Trang phôc Thanh Long So¸i Phe Liªu/#Get_TP_CT_TL(2,2)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end

--Trang bi Hoa Phung
function Get_CT_HP()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Háa Phông T­íng Phe Tèng/#Get_TP_CT_HP(1,1)",
		"Trang phôc Háa Phông So¸i Phe Tèng/#Get_TP_CT_HP(1,2)",
		"Trang phôc Háa Phông T­íng Phe Liªu/#Get_TP_CT_HP(2,1)",
		"Trang phôc Háa Phông So¸i Phe Liªu/#Get_TP_CT_HP(2,2)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end

--GET
function Get_TP_CT_UH(nPhe, nQH)
		if nPhe == 1 and nQH == 1 then
			local ID1 = 20556 --TP
			local ID2 = 10196 --NB
			local ID3 = 20556 --VK
			GetCTEnd(ID1, ID2, ID3, nQH);
		elseif nPhe == 1 and nQH == 2 then
			local ID1 = 20620 --TP
			local ID2 = 10388 --NB
			local ID3 = 20620 --VK
			GetCTEnd(ID1, ID2, ID3, nQH);
		elseif nPhe == 2 and nQH == 1 then
			local ID1 = 20684 --TP
			local ID2 = 10644 --NB
			local ID3 = 20684 --VK
			GetCTEnd(ID1, ID2, ID3, nQH);
		elseif nPhe == 2 and nQH == 2 then
			local ID1 = 20748 --TP
			local ID2 = 10836 --NB
			local ID3 = 20748 --VK
			GetCTEnd(ID1, ID2, ID3, nQH);
		end
end

function Get_TP_CT_TL(nPhe, nQH)
	if nPhe == 1 and nQH == 1 then
		local ID1 = 20300 --TP
		local ID2 = 9300 --NB
		local ID3 = 20300 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	elseif nPhe == 1 and nQH == 2 then
		local ID1 = 20364 --TP
		local ID2 = 9492 --NB
		local ID3 = 20364 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	elseif nPhe ==2  and nQH == 1 then
		local ID1 = 20428 --TP
		local ID2 = 9748 --NB
		local ID3 = 20428 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	elseif nPhe == 2 and nQH == 2 then
		local ID1 = 20492 --TP
		local ID2 = 9940 --NB
		local ID3 = 20492 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	end
end

function Get_TP_CT_HP(nPhe, nQH)
	if nPhe == 1 and nQH == 1 then
		local ID1 = 30311 --TP
		local ID2 = 30228 --NB
		local ID3 = 30328 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	elseif nPhe == 1 and nQH == 2 then
		local ID1 = 30375 --TP
		local ID2 = 30420 --NB
		local ID3 = 30432 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	elseif nPhe == 2 and nQH == 1 then
		local ID1 = 30439 --TP
		local ID2 = 30676 --NB
		local ID3 = 30536 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	elseif nPhe == 2 and nQH == 2 then
		local ID1 = 30503 --TP
		local ID2 = 30868 --NB
		local ID3 = 30640 --VK
		GetCTEnd(ID1, ID2, ID3, nQH);
	end
end

function GetCTEnd(ID1, ID2, ID3, nQH)
	local ID = {
		[2] = 	{3, ID1, ID2, ID3},
		[3] = 	{8,ID1 + 2,ID2 + 2,ID3 +2},
		[4] = 	{0,ID1 + 4,ID2 + 4,ID3 +4},
		[6] = 	{1,ID1 + 6,ID2 + 6,ID3 +6},
		[8]= 	{2,ID1 + 10,ID2 + 10,ID3 +10},
		[9]= 	{10,ID1 + 12,ID2 + 12,ID3 +12},
		[11]=	{0,ID1 + 14,ID2 + 14,ID3 +14},
		[12]=	{5,ID1 + 18,ID2 + 18,ID3 +18},
		[14]=	{2,ID1 + 22,ID2 + 22,ID3 +22},
		[15]=	{9,ID1 + 26,ID2 + 26,ID3 +26},
		[17]=	{6,ID1 + 30,ID2 + 30,ID3 +30},
		[18]=	{4,ID1 + 34,ID2 + 34,ID3 +34},
		[20]=	{7,ID1 + 38,ID2 + 38,ID3 +38},
		[21]=	{11,ID1 + 42,ID2 + 42,ID3 +42},
		[23]=	{2,ID1 + 46,ID2 + 46,ID3 +46},
		[25]=	{3,ID1 + 48,ID2 + 48,ID3 +48},
		[26]=	{9,ID1 + 52,ID2 + 52,ID3 +52},
		[27]=	{11,ID1 + 56,ID2 + 56,ID3 +56},
		[29]=	{13,ID1 + 60,ID2 + 60,ID3 +60},
		[30]=	{12,ID1 + 62,ID2 + 62,ID3 +62},
	};
	
	local nRoute = GetPlayerRoute();
	if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
		nBody = GetBody() - 3;
	else
		nBody = GetBody() - 1;
	end
	
	--local nA = 0;
	--local nTP = 0;
	--local nNB = 0;
	--local nVK = 0;

	nTBCT_ATT_A = 0;
	nTBCT_ATT_TP = 0;
	nTBCT_ATT_NB = 0;
	nTBCT_ATT_VK = 0;


	for k, v in pairs(ID) do
		if nRoute == k then
			--nA = v[1];
			--nTP = v[2] + nBody;
			--nNB = v[3] + nBody;
			--nVK = v[4] + nBody;

			nTBCT_ATT_A = v[1];
			nTBCT_ATT_TP = v[2] + nBody;
			nTBCT_ATT_NB = v[3] + nBody;
			nTBCT_ATT_VK = v[4] + nBody;


			--AddItem(0, 103, nTP, 1,1,-1,-1,-1,-1,-1,-1,1,15); --TP
			--AddItem(0, 101, nTP, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			--AddItem(0, 100, nTP, 1,1,-1,-1,-1,-1,-1,-1,1,15);
			
			--AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,0); -- NB
			--AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,0);
			--AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,0);
			
			--if nQH == 2 then
			--	AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,0); --NBS
			--end
					
			--AddItem(0, nA, nVK, 1,1,-1,-1,-1,-1,-1,-1,1,15); --VK
		end
	end

	local szSay = {
        			g_szTitle.."Chän lo¹i:",
        			"Nãn/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_TP,103)",
			"Trang phôc/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_TP, 100)",
			"H¹ y/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_TP, 101)",
			"Trang søc 1/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_NB,102)",
			"Trang søc 2/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_NB + 64,102)",
			"Trang søc 3/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_NB + 64 * 2,102)",
    		};
	if nQH == 2 then
		tinsert(szSay, "Trang søc 4/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_NB + 64 * 3,102)")
	end
	tinsert(szSay, "Vò khÝ/#Mod_GetTBCT_GetAttribute(nTBCT_ATT_VK,nTBCT_ATT_A)")
	tinsert(szSay, "Ra khái/nothing")
    	SelectSay(szSay); 
end

function Mod_GetTBCT_GetAttribute(nID, nTypeID)
	nIDOutfit = nID;
	nIDOutfitType = nTypeID;
	IsTBPHP = 1;
	nD1 = 0;
	nD2 = 0;
	nD3 = 0;
	SelectSay(outfitSzSay);  
end


--TRANG BI TIEU DUNG
function Mod_HCS_GetThaiDich()
	AddItem(2,0,1083,1)
end
function Mod_HCS_GetThiepDuTiecLongMon()
	AddItem(2,0,1037,1)
end

function Get_TieuDung()
	local nRoute = GetPlayerRoute();
	local tSay = {
		"NhËn Lac/GetLac",
		"NhËn 10000 vµng/Get_Money",
		"NhËn §¸ Quý/Get_Gem",
		"NhËn vËt phÈm Shop/Get_VPSHOP",
		"NhËn TMKL vµ TCL/Get_TMKL",
		"NhËn Thiªn Kiªu LÖnh/getTianJiaoLing",
		--"NhËn Nguyªn LiÖu ChÕ T¹o ChiÕn Tr­êng/Get_CTItem",
		"NhËn Th¸i DÞch Hçn Nguyªn C«ng Phæ/Mod_HCS_GetThaiDich",
		"NhËn ThiÖp mêi dù tiÖc Long M«n TrÊn/Mod_HCS_GetThiepDuTiecLongMon",

	};
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
	if 32 == nRoute then
		tinsert(tSay, "NhËn Linh KiÕm/ling_nv_xiaodiao)")
	end
	
	tinsert(tSay, "\nRa khái/nothing");
	Say(g_szTitle.."Lùa chän", getn(tSay), tSay);	
end

--TMKL + TCL + HCAH
function GetLac()
	for i = 30005,30011 do
		if i ~= 30008 then
			AddItem(1,0,i,999);
		end
	end
	for i = 261,265 do
		AddItem(1,0,i,999);
	end
end
function Get_TMKL()
	AddItem(2,1,30370,100);
	AddItem(2,95,204,100);
end
function Get_VPSHOP()
	AddItem(2,1,30499,1000);
	AddItem(2,1,30369,999);
	AddItem(2,1,30368,999);
end
function Get_CTItem()
	AddItem(2,1,30687,2000);
	AddItem(2,1,31324,50);
	AddItem(2,1,31325,500);
	AddItem(2,1,31223	,50);
	AddItem(2,1,31224	,500);
	AddItem(2,1,30769	,50);
	AddItem(2,1,30770	,500);
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

---Thiªn Khiªu LÖnh
function getTianJiaoLing()
	AddItem(2,97,236,999)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

---Håi thÓ lùc
function getTiLi()
	RestoreStamina()
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function getShaQi()
	SetMomentum(10);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

--Ên chuyÓn sinh
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
	WriteLogEx("Get_An","NhËn Ên:", 100, "Tö Ên");
end

--CHUC NANG KHAC
function Get_Orther()
	local szSay = {
		g_szTitle.."Lùa chän",
		"Th¨ng ChuyÓn Sinh 7 cÊp 99/UpSuper",
		"Thao t¸c MËt TÞch/Get_Book",
		"Thao t¸c Kinh M¹ch/GetJingMai",
		"Thao t¸c Thó C­ng/Pet_OP",
		"Kü n¨ng sèng/Life_Skill",
		"Thao t¸c Bang Héi/TongOperation",
		"Thao t¸c Vò KhÝ/PS_VK",
		"LuyÖn max skill trÊn ph¸i/maxtranphai",
		"Thay ®æi hÖ ph¸i kh¸c/JoinRoute_UpdateLevel",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);	
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
	end;
end
--VK
function PS_VK()
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
		"\nRa khái/nothing",
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

--Pet
function Pet_OP()
	local tSay = {}
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "KÝch ho¹t phôc sinh thó c­ng"))
	end
	tinsert(tSay, format("%s/getPetEgg", "NhËn Trøng Thó C­ng"))
	tinsert(tSay, format("%s/getLingLi", "NhËn ®iÓm linh lùc"))
	tinsert(tSay, "\nRa khái/nothing");
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
	AddItem(2,1,30601,10)
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

--Gia nhËp Ph¸i
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
		"\nRa khái/nothing",
	};
	Say("Ng­¬i muèn gia nhËp l­u ph¸i g×?", getn(tMenu), tMenu);
end

function join_mgb()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Minh Gi¸o Th¸nh ChiÕn/#enter_mp(25)",
		"Minh Gi¸o TrËn Binh/#enter_mp(26)",
		"Minh Gi¸o HuyÕt Nh©n/#enter_mp(27)",
		"\nRa khái/nothing",
	};

	SelectSay(szSay);
end;

function join_sl()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"ThiÕu L©m vâ t«ng/#enter_mp(4)",
		"ThiÕu L©m thiÒn t«ng/#enter_mp(3)",
		"ThiÕu L©m tôc gia/#enter_mp(2)",
		"\nRa khái/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Vâ §ang ®¹o gia/#enter_mp(14)",
		"Vâ §ang tôc gia/#enter_mp(15)",
		"\nRa khái/nothing",
	};

	SelectSay(szSay);
end;

function join_em()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Nga My phËt gia/#enter_mp(8)",
		"Nga My tôc gia/#enter_mp(9)",
		"\nRa khái/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C¸i Bang TÜnh y/#enter_mp(11)",
		"C¸i Bang ¤ Y/#enter_mp(12)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"§­êng M«n Ch©m/#enter_mp(6)",
		"§­êng M«n NhËm HiÖp/#enter_mp(31)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"D­¬ng M«n th­¬ng Kþ/#enter_mp(17)",
		"D­¬ng M«n Cung Kþ/#enter_mp(18)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"HiÖp §éc/#enter_mp(20)",
		"Tµ §éc/#enter_mp(21)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C«n L«n Thiªn S­/#enter_mp(23)",
		"C«n L«n KiÕm T«n/#enter_mp(32)",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Thóy Yªn Vò Tiªn/#enter_mp(29)",
		"Thóy Yªn Linh N÷/#enter_mp(30)",
		"\nRa khái/nothing",
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
	elseif nRoute == 31 then					--´äÑÌÎèÏÉ
		LearnSkill(17);
		LearnSkill(1883);
		nBegin = 1872 ;
		nEnd = 1882;
	elseif nRoute == 32 then					--´äÑÌÁéÅ®
		LearnSkill(4);
		LearnSkill(1897);
		nBegin = 1885 ;
		nEnd = 1896;
	else
		return
	end;

	LearnSkill(20);

	for i = nBegin, nEnd do
		LearnSkill(i);
		while LevelUpSkill(i) == 1 do
		end
	end;

	--FullSkill20()
	ModifyJinJuan(9999999,0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	Msg2Player("Gia nhËp m«n ph¸i thµnh c«ng")
	Msg2Player("B¹n nhËn ®­îc 9,999,999 Kim PhiÕu hç trî phiªu l­u !!! Loli iz da bezt")
	Talk(1,"","Gia nhËp m«n ph¸i thµnh c«ng")
end

function UpSuper()
	PlayerReborn(2, random(4));			--ChuyÓn sinh
	SetLevel(99, 1);								--CÊp
	ModifyExp(2000000000);
	ModifyReputation(1000000,0);			--Danh väng
	SetTask(336, 1000000);  --S­ M«n
	SetTask(704, 6)  --Nguyªn So¸i
	SetTask(701, 5000000); --C«ng tr¹ng
	gf_SetTaskByte(1538, 1, 5);
	--ModifyJinJuan(9999999,1); --Kim PhiÕu
	
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


--Mat Tich
function Get_Book()
	local szSay = {
		g_szTitle.."NhËn L­u Ph¸i Ch©n QuyÓn vµ QuyÕt YÕu!",
		"NhËn Ch©n QuyÓn/Get_Book_ZhenJuan",
		"NhËn QuyÕt YÕu/Get_Book_JueYao",
		"Th¨ng cÊp mËt tÞch ®· trang bÞ/Get_Book_Update",
		"T¨ng chØ sè lªn 250%/Get_250book",
		"T¨ng chØ sè lªn 150%/Get_150book",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end

function Get_150book()
	CastState("state_add_book_attribute_value", 150, -1, -1);
	
end

function Get_250book()
	CastState("state_add_book_attribute_value", 250, -1, -1);
	
end

function Get_Book_ZhenJuan()
	local nRoute	= GetPlayerRoute();
	
	if nRoute == 2 then
		AddItem(0, 107, 30001,2)
	end
	
	if nRoute == 3 then
		AddItem(0, 107, 30003,2)
	end
	
	if nRoute == 4 then
		AddItem(0, 107, 30002,2)
	end
	
	if nRoute == 6 then
		AddItem(0, 107, 30004,2)
	end
	
		if nRoute == 8 then
		AddItem(0, 107, 30005,2)
	end
	
		if nRoute == 9 then
		AddItem(0, 107, 30006,2)
	end
	
		if nRoute == 11 then
		AddItem(0, 107, 30007,2)
	end
	
		if nRoute == 12 then
		AddItem(0, 107, 30008,2)
	end
	
		if nRoute == 14 then
		AddItem(0, 107, 30009,2)
	end
	
		if nRoute == 15 then
		AddItem(0, 107, 30010,2)
	end
	
		if nRoute == 17 then
		AddItem(0, 107, 30011,2)
	end
	
		if nRoute == 18 then
		AddItem(0, 107, 30012,2)
	end
	
		if nRoute == 20 then
		AddItem(0, 107, 30013,2)
	end
	
		if nRoute == 21 then
		AddItem(0, 107, 30014,2)
	end
	
	if nRoute == 23 then
		AddItem(0, 107, 30015,2)
	end
	
	if nRoute == 25 then
		AddItem(0, 107, 30035,2)
	end
	
	if nRoute == 26 then
		AddItem(0, 107, 30036,2)
	end
	
	if nRoute == 27 then
		AddItem(0, 107, 30037,2)
	end
	
	if nRoute == 29 then
		AddItem(0, 107, 30016,2)
	end
	
	if nRoute == 30 then
		AddItem(0, 107, 30017,2)
	end

	if nRoute == 31 then
		AddItem(0, 107, 231,2)
	end

	if nRoute == 32 then
		AddItem(0, 107, 235,2)
	end
	
	gf_AddItemEx({0,112,158,1,4}, "L¨ng Ba Vi Bé toµn tËp");
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
		[11]		={71,79},
		[12]		={80,88},
		[14]		={89,108},
		[15]		={109,119},
		[17]		={120,130},
		[18]		={131,141},
		[20]		={142,154},
		[21]		={155,168},
		[23]		={169,182},
		[25]		={183,194},
		[26]		={195,206},
		[27]		={207,218},
		[29]		={219,229},
		[30]		={230,240},
		[31]		={241,250},
		[32]		={251,260},
	};

	local nRoute = GetPlayerRoute();
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
	AddItem(0,105,38,1,1,7,101,7,101,7,101);
end

function Give_Jiancu()
	if gf_Judge_Room_Weight(2, 100) ~= 1 then
		return 0;
	end
	AddItem(2, 15, 10, 2000);
	AddItem(0,105,38,1,1,7,101,7,101,7,101);
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
	szSay[getn(szSay) + 1] = "\nRa khái/nothing";
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
	--if GetItemCount(2,1,30045) < 1 and GetFreeItemRoom() > 0 then
		--AddItem(2,1,30045,1)
	--end
end


--Bang Hoi
function TongOperation()
	local szSay = {
		g_szTitle.."Thao t¸c bang héi",
		"Ta muèn nhËn vËt phÈm bang héi/TongOperation_Create",
		"Ta muèn t¹o bang héi/CreateTongDialog",
		"Ta muèn th¨ng cÊp bang héi/TongOperation_update",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end

function TongOperation_Create()
	if IsTongMember() ~= 0 then
		Talk(1,"","Ng­¬i ®· cã bang héi");
		return
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
		format("%s/getJingMaiTongRen", "NhËn Kinh M¹ch §ång Nh©n"),
		"\nRa khái/nothing",
	};
	if MeridianGetLevel() < 6 then
		tinsert(szSay, 2, "Th¨ng cÊp c¶nh giíi Vâ Th¸nh/GetJingMai_Update")
	end
	SelectSay(szSay);
end

function getZhenqi()
	AwardGenuineQi(180000);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function getJingMaiTongRen()
	AddItem(2, 1,30730, 99)
	AddItem(2, 1,30731, 99)
	AddItem(2, 1,30732, 99)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function GetJingMai_Update()
	local nLevel = MeridianGetLevel()
	for i = nLevel + 1, 6 do
		MeridianUpdateLevel()
	end
	local nNum = 1200000 - (MeridianGetDanTian() + MeridianGetQiHai());
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

function FullSkill20()
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
		while LevelUpSkill(1066) == 1 do
		end
		while LevelUpSkill(1096) == 1 do
		end
		while LevelUpSkill(1213) == 1 do
		end
		while LevelUpSkill(1897) == 1 do
		end
		while LevelUpSkill(1883) == 1 do
		end
	end;
end


-- Main Custom Category
function Get_Custom_GM_Item()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn C¸c Lo¹i Trang BÞ/Get_All_TB",
		"NhËn Hoµng Kim LÖnh Bµi/Get_HKLB",
		"Thao T¸c CÊp §é/Get_Level_Custom",
		"VËt PhÈm NhiÖm Vô/Get_Mission_Item",
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
		"NhËn trang bÞ Tiªu Dïng/Get_TieuDung_Custom",
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
		"Trang bÞ Thµnh Chñ QuËn Chóa/Get_TB_TCQC",
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

	if nRoute == 31 then --DMNH
		local nA = 14;
		local nB = 20020;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end

	if nRoute == 32 then --CLKT
		local nA = 2;
		local nB = 20021;
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

function Get_TB_TCQC()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 8013 + GetBody() - 1;
	
	AddItem(0,103,nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101,nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100,nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102,nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102,nBody+4,1,1, -1,-1,-1,-1,-1,-1,1,15);
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

function Get_CT_LH()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc L«i Hæ Dòng SÜ Phe Tèng/Get_T_LHDS",
		"Trang phôc L«i Hæ T­íng Phe Tèng/Get_T_LHT",
		"Trang phôc L«i Hæ So¸i Phe Tèng/Get_T_LHS",
		"Trang phôc L«i Hæ Dòng SÜ Phe Liªu/Get_L_LHDS",
		"Trang phôc L«i Hæ T­íng Phe Liªu/Get_L_LHT",
		"Trang phôc L«i Hæ So¸i Phe Liªu/Get_L_LHS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

--Get Tong LH Dung Si
function Get_T_LHDS()
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
end

--Get Tong LH Tuong
function Get_T_LHT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30215 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-58,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-54,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-50,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Tong LH Soai
function Get_T_LHS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30219 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-50,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-46,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-42,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-38,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu LH Dung Si
function Get_L_LHDS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30223 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-38,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-34,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu LH Tuong
function Get_L_LHT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30227 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-34,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-30,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-26,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu LH Soai
function Get_L_LHS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30231 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-26,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-22,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-18,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-14,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

-- Trang bi THUONG UNG
function Get_CT_TU()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc Th­¬ng ¦ng §« Thèng Phe Tèng/Get_T_TUDT",
		"Trang phôc Th­¬ng ¦ng T­íng Phe Tèng/Get_T_TUT",
		"Trang phôc Th­¬ng ¦ng So¸i Phe Tèng/Get_T_TUS",
		"Trang phôc Th­¬ng ¦ng §« Thèng Phe Liªu/Get_L_TUDT",
		"Trang phôc Th­¬ng ¦ng T­íng Phe Liªu/Get_L_TUT",
		"Trang phôc Th­¬ng ¦ng So¸i Phe Liªu/Get_L_TUS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

--Get Tong TU Do Thong
function Get_T_TUDT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end
	
	local nRoute	= GetPlayerRoute();
	local nBody 	= 30029 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+15,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+19,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Tong TU Tuong
function Get_T_TUT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30033 + GetBody() - 1;

	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+19,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+23,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+27,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Tong TU Soai
function Get_T_TUS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30037 + GetBody() - 1;

	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+27,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+31,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+35,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+39,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu TU Do Thong
function Get_L_TUDT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end
	
	local nRoute	= GetPlayerRoute();
	local nBody 	= 30041 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+39,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+43,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu TU Tuong
function Get_L_TUT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30045 + GetBody() - 1;

	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+43,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+47,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+51,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu TU Soai
function Get_L_TUS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30049 + GetBody() - 1;

	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+51,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+55,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+59,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+63,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Trang bi Khac
function Get_CT_Khac()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ §¹i Nguyªn So¸i/Get_CT_DNS",
		"Trang bÞ Ngù Long T­íng/Get_CT_NL",
		"Trang bÞ Nguyªn So¸i N©ng CÊp 2/Get_CT_NSNC2",
		"Trang bÞ Nguyªn So¸i N©ng CÊp 1/Get_CT_NSNC1",
		"Trang bÞ T­íng Qu©n N©ng CÊp/Get_CT_TQNC",
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
		"Trang phôc Ngù Long T­íng Phe Liªu/Get_L_NLT",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

--Get Tong NLT
function Get_T_NLT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30017 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody-4,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+4,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu NLT
function Get_L_NLT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 30021 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+4,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+8,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Dai Nguyen Soai
function Get_CT_DNS()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc §¹i Nguyªn So¸i Phe Tèng/Get_T_DNS",
		"Trang phôc §¹i Nguyªn So¸i Phe Liªu/Get_L_DNS",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

--Get Tong DNS
function Get_T_DNS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3024 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+32,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+36,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+40,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+44,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu DNS
function Get_L_DNS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3028 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+44,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+50,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+54,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+58,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Tuong Quan Nang Cap
function Get_CT_TQNC()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang phôc T­íng Qu©n ChiÕn Phe Tèng/Get_T_TQNC",
		"Trang phôc T­íng Qu©n ChiÕn Phe Liªu/Get_L_TQNC",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

--Get Tong TQNC
function Get_T_TQNC()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3016 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+16,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+20,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+24,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu TQNC
function Get_L_TQNC()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3020 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+24,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+28,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+32,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

-- Trang bi NS Nang Cap 2
function Get_CT_NSNC2()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ Ngù Long So¸i Phe Tèng/Get_T_NLS2",
		"Trang bÞ Chiªu Th¸nh So¸i Phe Liªu/Get_L_CTS",
	};
	SelectSay(szSay);
end

--Get Ngu Long Soai 2
function Get_T_NLS2()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3008 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+80,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+84,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+88,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+92,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Chieu Thanh Soai
function Get_L_CTS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3012 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+92,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+96,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+100,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+104,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

-- Trang bi NS Nang Cap 1
function Get_CT_NSNC1()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ Ngù Long So¸i Phe Tèng/Get_T_NLS1",
		"Trang bÞ ThiÖu Th¸nh So¸i Phe Liªu/Get_L_TTS",
	};
	SelectSay(szSay);
end

--Get Ngu Long Soai 1
function Get_T_NLS1()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3000 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+4,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+8,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Thieu Thanh Soai
function Get_L_TTS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 3004 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+12,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+16,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+20,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+24,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Trang bi Nguyen Soai
function Get_CT_NS()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ Nguyªn So¸i Phe Tèng/Get_T_NS",
		"Trang bÞ Nguyªn So¸i Phe Liªu/Get_L_NS",
	};
	SelectSay(szSay);
end

--Get Tong Nguyen Soai
function Get_T_NS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2251 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+50,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+54,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+250,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+254,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu Nguyen Soai
function Get_L_NS()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2255 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+54,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+58,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+254,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+258,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Trang bi Tuong Quan
function Get_CT_TQ()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ T­íng Qu©n Phe Tèng/Get_T_TQ",
		"Trang bÞ T­íng Qu©n Phe Liªu/Get_L_TQ",
	};
	SelectSay(szSay);
end

--Get Tong Tuong Quan
function Get_T_TQ()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2241 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+40,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+44,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+280,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu Tuong Quan
function Get_L_TQ()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2245 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+44,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+48,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+284,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Trang bi Do Thong
function Get_CT_DT()
	local szSay = {
		g_szTitle.."Lùa chän trang bÞ",
		"Trang bÞ §« Thèng Phe Tèng/Get_T_DT",
		"Trang bÞ §« Thèng Phe Liªu/Get_L_DT",
	};
	SelectSay(szSay);
end

--Get Tong Do Thong
function Get_T_DT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2231 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+30,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+34,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

--Get Lieu Do Thong
function Get_L_DT()
	if 1 ~= gf_Judge_Room_Weight(6, 1, g_szTitle) then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	local nBody 	= 2235 + GetBody() - 1;
	
	AddItem(0,103, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,101, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,100, nBody,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+34,1,1, -1,-1,-1,-1,-1,-1,1,15);
	AddItem(0,102, nBody+40,1,1, -1,-1,-1,-1,-1,-1,1,15);
end

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

	if nRoute == 31 then --DMNH
		local nA = 14;
		local nB = 32164;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end

	if nRoute == 32 then --CLKT
		local nA = 2;
		local nB = 32192;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
end

function Get_TB_HHVH()
	AddItem(2, 1, 30947 ,1);
	AddItem(2, 1, 30948 ,1);
	AddItem(2, 1, 30949 ,1);
	AddItem(2, 1, 30977 ,1);
	AddItem(2, 1, 30976 ,1);

	local nRoute = GetPlayerRoute();

	if nRoute == 31 then --DMNH
		local nA = 14;
		local nB = 32163;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end

	if nRoute == 32 then --CLKT
		local nA = 2;
		local nB = 32191;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end
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

	if nRoute == 31 then --DMNH
		local nA = 14;
		local nB = 32162;
		AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
	end

	if nRoute == 32 then --CLKT
		local nA = 2;
		local nB = 32190;
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
		if nRoute == 31 then --DMNH
			local nA = 14;
			local nB = 32161;
			AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
		end
		if nRoute == 32 then --CLKT
			local nA = 2;
			local nB = 32189;
			AddItem(0, nA, nB, 1,1,-1,-1,-1,-1,-1,-1,1,15);
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
		"Trang bÞ Tµng KiÕm 8x/Get_TB_TK8",
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

function Get_TB_TK8()
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
	for i=1,3 do
		AddItem(2, 1, 31286,1);	
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
function Get_TieuDung_Custom()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn 10000 vµng/Get_Money",
		"NhËn ThÇn Hµnh/Get_ThanHanh",
		"NhËn §Êu Hån/Get_DauHon",
		"NhËn D­îc PhÈm/Get_DuocPham",
		"NhËn §¸ Quý/Get_Gem",
		"Trang bÞ TÈy Kim Xµ/Get_TKX",
		"NhËn §u«i Thá/Get_DuoiTho",
		"NhËn Cöu ChuyÓn/Get_9Chuyen",
		format("%s/getTianJiaoLing", "NhËn Thiªn Kiªu LÖnh"),
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
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

function Get_TKX()
	AddItem(2, 1, 30525,100);
	AddItem(2, 1, 30526,100);
	AddItem(2, 1, 30531,100);
	AddItem(2, 1, 30532,100);
end

function Get_DuoiTho()
	AddItem(2, 1, 2, 10)
end

function Get_9Chuyen()
	AddItem(1, 0, 32, 100)
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

-- Other Custom
function Get_Other_Custom()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn C¸c Lo¹i MËt TÝch/Get_Other_Book",
		"NhËn BÉy Ch©m/Get_Bay_Cham",
		"NhËn Cæ/Get_Co_5D",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_Other_Book()
	if 1 ~= gf_Judge_Room_Weight(25, 1, g_szTitle) then
		return 0;
	end

	for i=51,66 do
		AddItem(0, 107, i, 1);
	end

	AddItem(0, 107, 157, 1);

	for i=159,165 do
		AddItem(0, 107, i, 1);
	end
end

function Get_Bay_Cham()
	if 1 ~= gf_Judge_Room_Weight(25, 1, g_szTitle) then
		return 0;
	end

	for i=0,9 do
		AddItem(2, 11, i, 2000);
	end

	AddItem(2, 3, 6, 999);
end

function Get_Co_5D()
	if 1 ~= gf_Judge_Room_Weight(31, 1, g_szTitle) then
		return 0;
	end

	for i=1,31 do
		AddItem(2, 17, i, 999);
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

function Get_Mission_Item()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhiÖm vô Ph­îng T­êng/Get_PT_Item",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_PT_Item()
	for i=686,688 do
		AddItem(2, 0, i, 1);
	end

	AddItem(2, 0, 689, 10);

	for i=690,691 do
		AddItem(2, 0, i, 1);
	end

	for i=695,696 do
		AddItem(2, 0, i, 10);
	end

	-- for i=697,707 do
	-- 	AddItem(2, 0, i, 1);
	-- end

	-- AddItem(2, 0, 708, 10);
	-- AddItem(2, 0, 710, 10);
	-- AddItem(2, 0, 722, 10);
	
end