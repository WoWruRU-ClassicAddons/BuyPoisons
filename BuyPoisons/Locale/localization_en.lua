function BUYPOISONS_EN()
	
	BUYPOISONS_HELP_MESSAGE = {
		"BUYPOISONS Usage:",
		"/bp <command> or /BUYPOISONS <command>",
		"",
		"Commands:",
		"/bp wpX Y 	Buy Components for Y Level X Wound Poison",
		"/bp cpX Y 	Buy Components for Y Level X Crippling Poison",
		"/bp dpX Y 	Buy Components for Y Level X Deadly Poison",
		"/bp mpX Y 	Buy Components for Y Level X Mind-numbing Poison",
		"/bp ipX Y 	Buy Components for Y Level X Instant Poison",
		"/bp fp Y Buy Y Flash Powder",
		"e.g. '/bp wp3 10' will buy all components needed for 10 lots of level 3 Wound Poison.",
		"Warning: Using anything but multiples of 5 will not handle Vial Numbers properly",
		"as they can only be bought in multiples of 5 from stores.",
		"",
		"Automaticly Purchase Flashpowder every time you are at a vendor: ",
		"/bp rfp 0    -Turns off FlashPowder Auto Restock",
		"/bp rfp Y    -Turns on FlashPowder Auto Restock for Y FlashPowder"
	}
	
	--UI labels and tooltips:
	BUYPOISONS_BP_ENABLED_CHECKBT_LABEL = "BUYPOISONS Enabled"
	BUYPOISONS_BP_ENABLED_CHECKBT_TOOLTIP = "Enable/Disable BUYPOISONS"
	
	--Vendor Item Names
	BUYPOISONS_COMPONENT_FLASH_POWDER ="Flash Powder"
	
	BUYPOISONS_COMPONENT_DEATHWEED ="Deathweed"
	BUYPOISONS_COMPONENT_DUST_OF_DECAY ="Dust of Decay"
	BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION ="Dust of Deterioration"
	BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY ="Essence of Agony"
	BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN ="Essence of Pain"
	BUYPOISONS_COMPONENT_LETHARGY_ROOT ="Lethargy Root"
	
	BUYPOISONS_VIAL_EMPTY ="Empty Vial"
	BUYPOISONS_VIAL_CRYSTAL ="Crystal Vial"
	BUYPOISONS_VIAL_LEADED ="Leaded Vial"
	
	
	BuyPoisonsItemInfo[1]["name"] = "Deadly Poison V"
	BuyPoisonsItemInfo[2]["name"] = "Instant Poison VI"
	BuyPoisonsItemInfo[3]["name"] = "Wound Poison IV"
	BuyPoisonsItemInfo[4]["name"] = "Deadly Poison IV"
	BuyPoisonsItemInfo[5]["name"] = "Instant Poison V"
	BuyPoisonsItemInfo[6]["name"] = "Mind-numbing Poison III"
	BuyPoisonsItemInfo[7]["name"] = "Crippling Poison II"
	BuyPoisonsItemInfo[8]["name"] = "Wound Poison III"
	BuyPoisonsItemInfo[9]["name"] = "Deadly Poison III"
	BuyPoisonsItemInfo[10]["name"] = "Instant Poison IV"
	BuyPoisonsItemInfo[11]["name"] = "Wound Poison II"
	BuyPoisonsItemInfo[12]["name"] = "Deadly Poison II"
	BuyPoisonsItemInfo[13]["name"] = "Mind-numbing Poison II"
	BuyPoisonsItemInfo[14]["name"] = "Instant Poison III"
	BuyPoisonsItemInfo[15]["name"] = "Wound Poison "
	BuyPoisonsItemInfo[16]["name"] = "Deadly Poison "
	BuyPoisonsItemInfo[17]["name"] = "Instant Poison II"
	BuyPoisonsItemInfo[18]["name"] = "Mind-numbing Poison"
	BuyPoisonsItemInfo[19]["name"] = "Crippling Poison"
	BuyPoisonsItemInfo[20]["name"] = "Instant Poison "
	BuyPoisonsItemInfo[21]["name"] = "Flash Powder"
end