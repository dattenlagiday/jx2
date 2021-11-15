Include("\\settings\\static_script\\cheat\\gm_item_tifuzhiyin.lua");
Include("\\settings\\static_script\\cheat\\task\\list.lua");

g_szTitle = "<color=green>Th� T�n Th�: <color>"

NewPlayerItem = {
	{"C�u Thi�n V� C�c ��n", {2,1,1006,1}},
	{"Th� Thi�n H�t", {2,1,30740,1}},
	{"Ti�u Dao Ng�c", {2,1,30603,1000}},
}

function OnUse(nItem)	
	local tSay = {}
	local nRoute = GetPlayerRoute();
	
	if nRoute <= 0 then
		tSay = {
			"Gia nh�p m�n ph�i/JoinRoute_UpdateLevel",
		}
	else
		tSay = {
			"Nh�n v�t ph�m H� Tr� T�n Th�/GetNewPlayer",
			"Nh�n M�t T�ch v� Y�u Quy�t h� ph�i/GetMT",
			"Mua v�t ph�m Th�nh l�p Bang H�i (500 Xu v�t ph�m)/GetTongItem",
			"Tho�t/nothing"
		}
	end
	Say(g_szTitle.."L�a ch�n ch�c n�ng", getn(tSay), tSay);
end

function GetNewPlayer()
	if TASK_MOD:GetTask(TASK_MOD.GET_ITEM_NEW_PLAYER) == 1 then
		Talk(1,"","B�n �� nh�n ph�n tr��ng n�y r�i");
		return
	end

	if gf_Judge_Room_Weight(4, 1, " ") ~= 1 then
		Talk(1,"","H�nh trang kh�ng �� 4 ch� tr�ng");
		return
	end
	
	for k, v in pairs(NewPlayerItem) do
		gf_AddItemEx2(v[2], v[1])
	end
	
	Earn(5000000); --500v
	
	--Nh�n Ng�a
	if GetPlayerRoute() == 17 or GetPlayerRoute() == 18 then
		AddItem(0,105,38,1,1,-1,-1,-1,-1,-1,-1,1,0);
	end
	AddItem(0,105,19,1,1,-1,-1,-1,-1,-1,-1,1,0);
	
	TASK_MOD:SetTask(TASK_MOD.GET_ITEM_NEW_PLAYER, 1);
end

function GetTongItem()
	if TASK_MOD:GetTask(TASK_MOD.GET_TONG_NEW_PLAYER) == 1 then
		Talk(1,"","M�i t�i kho�n ch� ���c mua 1 l�n duy nh�t");
		return
	end

	if GetItemCount(2,1,30230) < 500 then
		Talk(1,"","B�n kh�ng c� �� 500 Xu");
		return
	end
	
	if gf_Judge_Room_Weight(2, 100, " ") ~= 1 then
		Talk(1,"","H�nh trang kh�n �� 2 ch� tr�ng");
		return
	end
	
	TongOperation_Create();
	
	TASK_MOD:SetTask(TASK_MOD.GET_TONG_NEW_PLAYER, 1);
end

function GetMT()
	if TASK_MOD:GetTask(TASK_MOD.GET_BOOK_NEW_PLAYER) == 1 then
		Talk(1,"","B�n �� nh�n ph�n tr��ng n�y r�i");
		return
	end

	if gf_Judge_Room_Weight(25, 1, " ") ~= 1 then
		Talk(1,"","H�nh trang c�n t�i thi�u 25 ch� tr�ng");
		return
	end
	
	Get_Book_ZhenJuan();
	Get_Book_JueYao();
	
	TASK_MOD:SetTask(TASK_MOD.GET_BOOK_NEW_PLAYER, 1);
end
