function BuyPoisons_ShowUI()
	--BuyPoisonsFrame:Hide()
	BuyPoisonsFrame:Show()
	BuyPoisonsFrame_Update()
end

function BuyPoisons_OnShow()
end

function BuyPoisons_OnHide()
end

function BuyPoisonsFrame_Update()
	
	BuyPoisonsVersionText:SetText("BuyPoisons Ver."..BUYPOISONS_VERSION)
	SetPortraitTexture(BuyPoisonsFramePortrait, "NPC")

	BuyPoisonsPageText:SetText(format(TEXT(PAGE_NUMBER), BuyPoisonsFrame.page))
	local numBuyPoisonsItems = 21
	local name, texture, price, quantity, numAvailable, isUsable
	for i=1, MERCHANT_ITEMS_PER_PAGE, 1 do
		local index = (((BuyPoisonsFrame.page - 1) * MERCHANT_ITEMS_PER_PAGE) + i)
		local itemButton = getglobal("BuyPoisonsItem"..i.."ItemButton")
		local merchantButton = getglobal("BuyPoisonsItem"..i)
		
		if index <= numBuyPoisonsItems then
			getglobal("BuyPoisonsItem"..i.."Name"):SetText(BuyPoisonsItemInfo[index]["name"])
			SetItemButtonCount(itemButton, 5)
			SetItemButtonTexture(itemButton, BuyPoisonsItemInfo[index]["texture"])
			getglobal("BuyPoisonsItem"..i.."MoneyFrame"):Show()
			--MoneyFrame_Update("BuyPoisonsItem"..i.."MoneyFrame", price)
			BuyPoisons_PurchaseQuantity = 5
			MoneyFrame_Update("BuyPoisonsItem"..i.."MoneyFrame", BuyPoisons_GetPrice(index, BuyPoisons_PurchaseQuantity))
			itemButton:SetID(index)
			itemButton:Show()
			
			SetItemButtonNameFrameVertexColor(merchantButton, 0.5, 0.5, 0.5)
			SetItemButtonSlotVertexColor(merchantButton, 1.0, 1.0, 1.0)
			SetItemButtonTextureVertexColor(itemButton, 1.0, 1.0, 1.0)
			SetItemButtonNormalTextureVertexColor(itemButton, 1.0, 1.0, 1.0)			
		else
			itemButton:Hide()
			SetItemButtonNameFrameVertexColor(merchantButton, 0.5, 0.5, 0.5)
			SetItemButtonSlotVertexColor(merchantButton,0.4, 0.4, 0.4)
			getglobal("BuyPoisonsItem"..i.."Name"):SetText("")
			getglobal("BuyPoisonsItem"..i.."MoneyFrame"):Hide()
		end
	end
	
	-- Handle paging buttons
	if numBuyPoisonsItems > MERCHANT_ITEMS_PER_PAGE then
		if BuyPoisonsFrame.page == 1 then
			BuyPoisonsPrevPageButton:Disable()
		else
			BuyPoisonsPrevPageButton:Enable()
		end
		if BuyPoisonsFrame.page == ceil(numBuyPoisonsItems / MERCHANT_ITEMS_PER_PAGE) or numBuyPoisonsItems == 0 then
			BuyPoisonsNextPageButton:Disable()
		else
			BuyPoisonsNextPageButton:Enable()
		end
		BuyPoisonsPageText:Show()
		BuyPoisonsPrevPageButton:Show()
		BuyPoisonsNextPageButton:Show()
	else
		BuyPoisonsPageText:Hide()
		BuyPoisonsPrevPageButton:Hide()
		BuyPoisonsNextPageButton:Hide()
	end

end

function BuyPoisonsPrevPageButton_OnClick()
	PlaySound("igMainMenuOptionCheckBoxOn")
	BuyPoisonsFrame.page = BuyPoisonsFrame.page - 1
	BuyPoisonsFrame_Update()
end

function BuyPoisonsNextPageButton_OnClick()
	PlaySound("igMainMenuOptionCheckBoxOn")
	BuyPoisonsFrame.page = BuyPoisonsFrame.page + 1
	BuyPoisonsFrame_Update()
end

function BuyPoisonsItemButton_OnLoad()
	this:RegisterForClicks("LeftButtonUp","RightButtonUp")
	this:RegisterForDrag("LeftButton")
	
	this.SplitStack = function(button, split)
		if split > 0 then
			BuyMerchantItem(button:GetID(), split)
		end
	end
end

function BuyPoisonsItemButton_OnClick(button, ignoreModifiers)
	if button == "LeftButton" then
		if IsShiftKeyDown() and not ignoreModifiers then
			if ChatFrameEditBox:IsVisible() then
				ChatFrameEditBox:Insert(BuyPoisonsItemInfo[this:GetID()]["name"])
			end
		end
	else
		BuyPoisons_BuyQuantity(this:GetID(),5)
	end
end