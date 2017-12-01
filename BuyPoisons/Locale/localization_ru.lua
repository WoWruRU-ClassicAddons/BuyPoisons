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
	BUYPOISONS_COMPONENT_FLASH_POWDER = "Воспламеняющийся порошок"
	
	BUYPOISONS_COMPONENT_DEATHWEED = "Смерть-трава"
	BUYPOISONS_COMPONENT_DUST_OF_DECAY = "Пыль тления"
	BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION = "Пыль обветшания"
	BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY = "Субстанция агонии"
	BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN = "Субстанция боли"
	BUYPOISONS_COMPONENT_LETHARGY_ROOT = "Корень долгого сна"
	
	BUYPOISONS_VIAL_EMPTY = "Пустая колба"
	BUYPOISONS_VIAL_CRYSTAL = "Хрустальная колба"
	BUYPOISONS_VIAL_LEADED = "Освинцованная колба"
	
	
	BuyPoisonsItemInfo[1]["name"] = "Смертельный яд V"
	BuyPoisonsItemInfo[2]["name"] = "Быстродействующий яд VI"
	BuyPoisonsItemInfo[3]["name"] = "Нейтрализующий яд IV"
	BuyPoisonsItemInfo[4]["name"] = "Смертельный яд IV"
	BuyPoisonsItemInfo[5]["name"] = "Быстродействующий яд V"
	BuyPoisonsItemInfo[6]["name"] = "Дурманящий яд III"
	BuyPoisonsItemInfo[7]["name"] = "Калечащий яд II"
	BuyPoisonsItemInfo[8]["name"] = "Нейтрализующий яд III"
	BuyPoisonsItemInfo[9]["name"] = "Смертельный яд III"
	BuyPoisonsItemInfo[10]["name"] = "Быстродействующий яд IV"
	BuyPoisonsItemInfo[11]["name"] = "Нейтрализующий яд II"
	BuyPoisonsItemInfo[12]["name"] = "Смертельный яд II"
	BuyPoisonsItemInfo[13]["name"] = "Дурманящий яд II"
	BuyPoisonsItemInfo[14]["name"] = "Быстродействующий яд III"
	BuyPoisonsItemInfo[15]["name"] = "Нейтрализующий яд "
	BuyPoisonsItemInfo[16]["name"] = "Смертельный яд "
	BuyPoisonsItemInfo[17]["name"] = "Быстродействующий яд II"
	BuyPoisonsItemInfo[18]["name"] = "Дурманящий яд"
	BuyPoisonsItemInfo[19]["name"] = "Калечащий яд"
	BuyPoisonsItemInfo[20]["name"] = "Быстродействующий яд "
	BuyPoisonsItemInfo[21]["name"] = "Воспламеняющийся порошок"
end