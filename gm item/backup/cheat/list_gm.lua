--Thªm tµi kho¶n GM d­íi d¹ng
--[Tªn tµi kho¶n] = 1
--Tªn tµi kho¶n, kh«ng ph¶i tªn nh©n vËt trong game

List_GM_Account = {
	["test"] = 1,
	["insac96"] = 1,
	["vietasoft"] = 1,
	["anhsinfb"] = 1,
["shlove021"] = 1,
["shlove022"] = 1,
["shlove023"] = 1,
["shlove024"] = 1,
["shlove025"] = 1,
["anhsonfbj"] = 1,
["admin"] = 1,
["dat1"] = 1,
["dat2"] = 1,
["dat3"] = 1,
["dat4"] = 1,
["dat5"] = 1,
["dat6"] = 1,
["dat7"] = 1,
}

function CheckName(nName) 
	if not List_GM_Account[nName]  or List_GM_Account[nName] == 0 then return 0 end
	return 1
end