function BUYPOISONS_RU()
	
	BUYPOISONS_HELP_MESSAGE = {
		"Использование BUYPOISONS:",
		"/bp <команда> или /BUYPOISONS <команда>",
		"Команды:",
		"",
		"/bp wpX Y 	покупка компонентов для X шт. Нейтрализующего яда Y уровня",
		"/bp cpX Y 	покупка компонентов для X шт. Калечащего яда Y уровня",
		"/bp dpX Y 	покупка компонентов для X шт. Смертельного яда Y уровня",
		"/bp mpX Y 	покупка компонентов для X шт. Дурманящего яда Y уровня",
		"/bp ipX Y 	покупка компонентов для X шт. Быстродействующего яда Y уровня",
		"/bp fp Y покупка Y Воспламеняющегося порошка",
		"Например '/bp wp3 10' будут куплены все компоненты, необходимые для 10 шт. Нейтрализующего яда 3 уровня.",
		"Предупреждение: При значениях НЕ кратных 5 будет неправильная обработка покупки колб",
		"так как их можно купить только по 5 шт.",
		"",
		"Автоматическая покупка Воспламеняющегося порошка каждый раз, когда вы находитесь у торговца:",
		"/bp rfp 0  -Отключает автоматическую покупку Воспламеняющегося порошка",
		"/bp rfp Y  -Включает автоматическую покупку Воспламеняющегося порошка для Y шт."
	}
	
	--UI labels and tooltips:
	BUYPOISONS_BP_ENABLED_CHECKBT_LABEL = "BUYPOISONS включен"
	BUYPOISONS_BP_ENABLED_CHECKBT_TOOLTIP = "Включить/Отключить BUYPOISONS"
	
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