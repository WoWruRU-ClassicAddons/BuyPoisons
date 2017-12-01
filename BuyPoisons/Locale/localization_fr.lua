function BUYPOISONS_FR()
	
	-- French translation by Sasmira ( Cosmos Team )
	-- Updated : 13/04/2006
	
	BUYPOISONS_HELP_MESSAGE = {
		"Utilisation de BUYPOISONS:",
		"/bp ou /BUYPOISONS - Ouvre la fen\195\170tre de configuration.",
		"/bp <command> ou /BUYPOISONS <command>",
		"",
		"Commande: (Please excuse English.)",
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
		"/bp rfp 0  -Turns off FlashPowder Auto Restock",
		"/bp rfp Y  -Turns on FlashPowder Auto Restock for Y FlashPowder"
	}

	--UI labels and tooltips:
	BUYPOISONS_BP_ENABLED_CHECKBT_LABEL = "BUYPOISONS Activ\195\169"
	BUYPOISONS_BP_ENABLED_CHECKBT_TOOLTIP = "[ON/OFF] BUYPOISONS"
	
	--Vendor Item Names
	BUYPOISONS_COMPONENT_FLASH_POWDER = "Poudre \195\169clipsante"
	
	BUYPOISONS_COMPONENT_DEATHWEED = "Herbe mortelle"
	BUYPOISONS_COMPONENT_DUST_OF_DECAY = "Poudre de d\195\169labrement"
	BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION = "Poussi\195\168re de d\195\169t\195\169rioration"
	BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY = "Essence d\'agonie"
	BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN = "Essence de douleur"
	BUYPOISONS_COMPONENT_LETHARGY_ROOT = "Poudre l\195\169thargique"
	
	BUYPOISONS_VIAL_EMPTY = "Fiole vide"
	BUYPOISONS_VIAL_CRYSTAL = "Fiole de cristal"
	BUYPOISONS_VIAL_LEADED = "Fiole plomb\195\169e"
	
	
	BuyPoisonsItemInfo[1]["name"] = "Poison mortel V"
	BuyPoisonsItemInfo[2]["name"] = "Poison instantan\195\169 VI"
	BuyPoisonsItemInfo[3]["name"] = "Poison douloureux IV"
	BuyPoisonsItemInfo[4]["name"] = "Poison mortel IV"
	BuyPoisonsItemInfo[5]["name"] = "Poison instantan\195\169 V"
	BuyPoisonsItemInfo[6]["name"] = "Distraction mentale III"
	BuyPoisonsItemInfo[7]["name"] = "Poison affaiblissant II"
	BuyPoisonsItemInfo[8]["name"] = "Poison douloureux III"
	BuyPoisonsItemInfo[9]["name"] = "Poison mortel III"
	BuyPoisonsItemInfo[10]["name"] = "Poison instantan\195\169 IV"
	BuyPoisonsItemInfo[11]["name"] = "Poison douloureux II"
	BuyPoisonsItemInfo[12]["name"] = "Poison mortel II"
	BuyPoisonsItemInfo[13]["name"] = "Distraction mentale II"
	BuyPoisonsItemInfo[14]["name"] = "Poison instantan\195\169 III"
	BuyPoisonsItemInfo[15]["name"] = "Poison douloureux "
	BuyPoisonsItemInfo[16]["name"] = "Poison mortel "
	BuyPoisonsItemInfo[17]["name"] = "Poison instantan\195\169 II"
	BuyPoisonsItemInfo[18]["name"] = "Distraction mentale "
	BuyPoisonsItemInfo[19]["name"] = "Poison affaiblissant "
	BuyPoisonsItemInfo[20]["name"] = "Poison instantan\195\169 "
	BuyPoisonsItemInfo[21]["name"] = "Poudre \195\169clipsante"
end