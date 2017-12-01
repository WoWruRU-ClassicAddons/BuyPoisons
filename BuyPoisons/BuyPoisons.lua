--Version
BUYPOISONS_VERSION = GetAddOnMetadata("BuyPoisons", "Version")

BuyPoisons_Is_UI_Open = 0
loaded = 0

function bp_print(msg)
  DEFAULT_CHAT_FRAME:AddMessage(msg,1,1,1)
end

function BuyPoisons_OnLoad()
	local _, englishClass = UnitClass("player")
	if englishClass ~= "ROGUE" then return end
	
	--Load Poison List
	getglobal("BUYPOISONS_LOADPOISONS")()
	
	this:RegisterForDrag("LeftButton")
	this.page = 1
	-- Register for Merchant Open events.
	this:RegisterEvent("MERCHANT_SHOW")
	this:RegisterEvent("MERCHANT_CLOSED")
	
	-- add our very first chat command!
	SLASH_BUYPOISONS1 = "/buypoisons"
	SLASH_BUYPOISONS2 = "/bp"
	SlashCmdList["BUYPOISONS"] = BuyPoisons_command
	
	BuyPoisons_Verify_Saved_Data()
	
	bp_print("BuyPoisons Remixed and loaded")
end

function BuyPoisons_OnEvent(event)
	BuyPoisons_Verify_Saved_Data()
	if event == "MERCHANT_SHOW" then
		is_a_poison_vendor = Index_merchant(BUYPOISONS_COMPONENT_FLASH_POWDER)
		if is_a_poison_vendor then	
			if BuyPoisonsData["Restock"]["FlashPowder"] and BuyPoisonsData["Restock"]["FlashPowder"] > 0 then
				BuyPoisons_RestockItem(BUYPOISONS_COMPONENT_FLASH_POWDER, BuyPoisonsData["Restock"]["FlashPowder"])
			elseif BuyPoisonsData["Use_UI"] == 1 then
				BuyPoisons_ShowUI()
			end	
		end
	elseif event == "MERCHANT_CLOSED" then
		BuyPoisonsFrame:Hide()
	end
end

function BuyPoisons_command(msg)
	-- this function handles our chat command
	if not msg or msg == "" then
		if not MerchantFrame:IsVisible() then
			for i = 1, table.getn(BUYPOISONS_HELP_MESSAGE) do
				bp_print(BUYPOISONS_HELP_MESSAGE[i])
			end
		else
			local poisontype, poisonamount
			poisontype = string.sub(msg, 1, 3)
			if string.sub(poisontype, 3) == ' ' then
				poisontype = string.sub(poisontype, 1,2)..'1'
				poisonamount = tonumber(string.sub(msg, 4))
			else
				poisonamount = tonumber(string.sub(msg, 5))		
			end
			if not poisonamount then
				poisonamount = 10
			end
			if poisontype then
				if poisontype == "rfp" and poisonamount then
					BuyPoisonsData["Restock"]["FlashPowder"] = poisonamount
					bp_print("BuyPoisons stocking " .. poisonamount .. " FlashPowder")
				end
			end	
		end
		if MerchantFrame:IsVisible() then
			if poisontype then
				for i = 1 , 21 do
					if poisontype == BuyPoisonsItemInfo[i]["shortkey"] then
						BuyPoisons_BuyQuantity(i , poisonamount)
					end
				end
			else
				BuyPoisons_ShowUI()
			end
		end
	elseif msg == "force" and MerchantFrame:IsVisible() then
		is_a_poison_vendor = Index_merchant(BUYPOISONS_COMPONENT_FLASH_POWDER)
		if is_a_poison_vendor == nil then
		  bp_print("Flash powder index: nil")
		else
			bp_print("Flash powder index: "..is_a_poison_vendor)
		end
		BuyPoisons_ShowUI()
	end
end 

function BuyPoisons_Verify_Saved_Data()
	if not BuyPoisonsData then
		BuyPoisonsData = {}
		BuyPoisonsData["Use_UI"] = 1
		BuyPoisonsData["Restock"] = {}
		if GetLocale() == "frFR" then
			BuyPoisonsData["Lang"] = "FR"
		elseif GetLocale() == "deDE" then
			BuyPoisonsData["Lang"] = "DE"
		elseif GetLocale() == "ruRU" then
			BuyPoisonsData["Lang"] = "RU"
		else
			BuyPoisonsData["Lang"] = "EN"
		end
	elseif BuyPoisonsData["Restock"] == nil or BuyPoisonsData["Restock"] == {} then
		BuyPoisonsData["Restock"] = {}
		BuyPoisonsData["Restock"]["FlashPowder"] = 0
	elseif BuyPoisonsData["Restock"]["FlashPowder"] == nil then
		BuyPoisonsData["Restock"]["FlashPowder"] = 0
	end
end

function BuyPoisons_BuyQuantity(i , BuyPoisons_Purchase_Quantity)
	for j=1, 2 do	
		if BuyPoisonsItemInfo[i]["Components"][j]["Quantity"] then
			BuyPoisons_NumberToBuy = BuyPoisonsItemInfo[i]["Components"][j]["Quantity"] * BuyPoisons_Purchase_Quantity
			for k = 1, 10 do
				if BuyPoisons_NumberToBuy > 20 then
					Buy_Item(BuyPoisonsItemInfo[i]["Components"][j]["Item"], 20)
					BuyPoisons_NumberToBuy = BuyPoisons_NumberToBuy - 20
				elseif BuyPoisons_NumberToBuy > 0 then
					Buy_Item(BuyPoisonsItemInfo[i]["Components"][j]["Item"], BuyPoisons_NumberToBuy)
					BuyPoisons_NumberToBuy = 0 
				end
			end		
		end
	end
	BuyPoisons_VialsOnHand = 0
	--BuyPoisons_VialsOnHand = BuyPoisons_CountMy(BuyPoisonsItemInfo[i]["Vial_Type"])
	
	BuyPoisons_VialCount = (BuyPoisons_Purchase_Quantity - BuyPoisons_VialsOnHand)/5
	if BuyPoisons_VialCount > 0 then
		Buy_Item(BuyPoisonsItemInfo[i]["Vial_Type"], BuyPoisons_VialCount)
	end	
end

function Buy_Item(poison, quantity)
	item_index = Index_merchant(poison)
	if item_index then
		BuyMerchantItem(item_index, quantity)
	end
end

function Index_merchant(item_name)
	--GetMerchantNumItems()
	--name, texture, price, quantity, numAvailable, isUsable = GetMerchantItemInfo(index)
	item_index = nil
	for i = 1, GetMerchantNumItems() do
		name, texture, price, quantity, numAvailable, isUsable = GetMerchantItemInfo(i)
		if name == item_name then
			item_index = i
		end
	end
	if not item_index and not item_name == BUYPOISONS_COMPONENT_FLASH_POWDER then
		DEFAULT_CHAT_FRAME:AddMessage("Can't find: "..item_name,1,1,1)
	end
	return item_index
end

function BuyPoisons_RestockItem(item, BuyPoisons_RestockQuantity)
	item_index = Index_merchant(item)	
	if item_index then
		DEFAULT_CHAT_FRAME:AddMessage("Vendor Sells:"..item.."["..item_index.."]",1,1,1)
		local BuyPoisons_ItemsOnHand = BuyPoisons_CountMy(item)
		DEFAULT_CHAT_FRAME:AddMessage("You Currently Have "..BuyPoisons_ItemsOnHand.." "..item,1,1,1)
		for k = 1, 21 do
			if BuyPoisons_RestockQuantity - BuyPoisons_ItemsOnHand > 20 then
				Buy_Item(item, 20)
				BuyPoisons_ItemsOnHand = BuyPoisons_ItemsOnHand + 20 
			elseif BuyPoisons_RestockQuantity - BuyPoisons_ItemsOnHand > 0 then
				Buy_Item(item, (BuyPoisons_RestockQuantity - BuyPoisons_ItemsOnHand) )
				BuyPoisons_ItemsOnHand = BuyPoisons_ItemsOnHand + (BuyPoisons_RestockQuantity - BuyPoisons_ItemsOnHand)
			else
				k = 21
			end
		end
		
	end
end

function BuyPoisons_CountMy(item)
	local texture, itemCount
	local total_itemCount = 0
	
	for i = 0,4 do
		for j = 1, GetContainerNumSlots(i) do
			if BuyPoisons_GetContainerItemName(i,j) == item then
				_, itemCount = GetContainerItemInfo(i,j)
				if itemCount then
					total_itemCount = total_itemCount + itemCount
				end
			end
		end
	end
	
	return total_itemCount
end

function BuyPoisons_GetContainerItemName(bag, slot)
	-- This is pulled from the AutoPotions AddOn
	-- AutoPotion by Jooky.
	-- Download the latest version at:
	-- http://www.curse-gaming.com/mod.php?addid=9
	
	local link = nil
	
	if bag == -1 then
		link = GetInventoryItemLink("player", slot)
	else
		link = GetContainerItemLink(bag, slot)
	end
	
	if link then
		local _,_,name = string.find(link, "^.*%[(.*)%].*$")
		return name
	else
		return ""
	end
end

function BuyPoisons_GetPrice(i, BuyPoisons_PurchaseQuantity)
	-- bp_print(" "..i.." "..BuyPoisonsItemInfo[i]["Components"][1]["Item"])
	name, texture, price, quantity, numAvailable, isUsable = GetMerchantItemInfo(Index_merchant(BuyPoisonsItemInfo[i]["Components"][1]["Item"]))
	BuyPoisons_Item_price = price * (BuyPoisonsItemInfo[i]["Components"][1]["Quantity"]) * BuyPoisons_PurchaseQuantity
	if BuyPoisonsItemInfo[i]["Components"][2]["Item"] then
		name, texture, price, quantity, numAvailable, isUsable = GetMerchantItemInfo(Index_merchant(BuyPoisonsItemInfo[i]["Components"][2]["Item"] ))
		BuyPoisons_Item_price = BuyPoisons_Item_price + (price * BuyPoisonsItemInfo[i]["Components"][2]["Quantity"]*BuyPoisons_PurchaseQuantity)
	end
	
	if i < 21 then
		name, texture, price, quantity, numAvailable, isUsable = GetMerchantItemInfo(Index_merchant(BuyPoisonsItemInfo[i]["Vial_Type"] ))
		BuyPoisons_Item_price = BuyPoisons_Item_price + (price * ((BuyPoisons_PurchaseQuantity/ 5 )))
	end
	return BuyPoisons_Item_price
end