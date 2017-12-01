function BUYPOISONS_LOADPOISONS()
	
	BuyPoisonsItemInfo = {}
	
	for i=1, 21, 1 do
		BuyPoisonsItemInfo[i] = {}
		BuyPoisonsItemInfo[i]["Components"] = {}
		BuyPoisonsItemInfo[i]["Components"][1] = {}
		BuyPoisonsItemInfo[i]["Components"][2] = {}
	end
	
--Load language:
if GetLocale() == "frFR" then
	getglobal("BUYPOISONS_FR")()
elseif GetLocale() == "deDE" then
	getglobal("BUYPOISONS_DE")()
elseif GetLocale() == "ruRU" then
	getglobal("BUYPOISONS_RU")()
else
	getglobal("BUYPOISONS_EN")()
end

--Flash Powder
	BuyPoisonsItemInfo[21]["texture"] = "Interface\\Icons\\INV_Misc_Ammo_Gunpowder_03"
	BuyPoisonsItemInfo[21]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_FLASH_POWDER
	BuyPoisonsItemInfo[21]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[21]["Vial_Type"] = nil
	BuyPoisonsItemInfo[21]["shortkey"] = "fp1"
	
	--IP6
	BuyPoisonsItemInfo[2]["texture"] = "Interface\\Icons\\Ability_Poisons"
	BuyPoisonsItemInfo[2]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION
	BuyPoisonsItemInfo[2]["Components"][1]["Quantity"] = 4
	BuyPoisonsItemInfo[2]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[2]["shortkey"] = "ip6"
	--IP5
	BuyPoisonsItemInfo[5]["texture"] = "Interface\\Icons\\Ability_Poisons"
	BuyPoisonsItemInfo[5]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION
	BuyPoisonsItemInfo[5]["Components"][1]["Quantity"] = 3
	BuyPoisonsItemInfo[5]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[5]["shortkey"] = "ip5"
	--IP4
	BuyPoisonsItemInfo[10]["texture"] = "Interface\\Icons\\Ability_Poisons"
	BuyPoisonsItemInfo[10]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION
	BuyPoisonsItemInfo[10]["Components"][1]["Quantity"] = 2
	BuyPoisonsItemInfo[10]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[10]["shortkey"] = "ip4"
	--IP3
	BuyPoisonsItemInfo[14]["texture"] = "Interface\\Icons\\Ability_Poisons"
	BuyPoisonsItemInfo[14]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION
	BuyPoisonsItemInfo[14]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[14]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[14]["shortkey"] = "ip3"
	--IP2
	BuyPoisonsItemInfo[17]["texture"] = "Interface\\Icons\\Ability_Poisons"
	BuyPoisonsItemInfo[17]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DECAY
	BuyPoisonsItemInfo[17]["Components"][1]["Quantity"] = 3
	BuyPoisonsItemInfo[17]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[17]["shortkey"] = "ip2"
	--IP1
	BuyPoisonsItemInfo[20]["texture"] = "Interface\\Icons\\Ability_Poisons"
	BuyPoisonsItemInfo[20]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DECAY
	BuyPoisonsItemInfo[20]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[20]["Vial_Type"] = BUYPOISONS_VIAL_EMPTY
	BuyPoisonsItemInfo[20]["shortkey"] = "ip1"
	
	
	--CP2
	BuyPoisonsItemInfo[7]["texture"] = "Interface\\Icons\\INV_Potion_19"
	BuyPoisonsItemInfo[7]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY
	BuyPoisonsItemInfo[7]["Components"][1]["Quantity"] = 3
	BuyPoisonsItemInfo[7]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[7]["shortkey"] = "cp2"
	--CP1
	BuyPoisonsItemInfo[19]["texture"] = "Interface\\Icons\\Ability_PoisonSting"
	BuyPoisonsItemInfo[19]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN
	BuyPoisonsItemInfo[19]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[19]["Vial_Type"] = BUYPOISONS_VIAL_EMPTY
	BuyPoisonsItemInfo[19]["shortkey"] = "cp1"
	
	--WP4
	BuyPoisonsItemInfo[3]["texture"] = "Interface\\Icons\\Spell_Nature_NullifyDisease"
	BuyPoisonsItemInfo[3]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY
	BuyPoisonsItemInfo[3]["Components"][1]["Quantity"] = 2
	BuyPoisonsItemInfo[3]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[3]["Components"][2]["Quantity"] = 2
	BuyPoisonsItemInfo[3]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[3]["shortkey"] = "wp4"
	--WP3
	BuyPoisonsItemInfo[8]["texture"] = "Interface\\Icons\\Ability_PoisonSting"
	BuyPoisonsItemInfo[8]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY
	BuyPoisonsItemInfo[8]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[8]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[8]["Components"][2]["Quantity"] = 2
	BuyPoisonsItemInfo[8]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[8]["shortkey"] = "wp3"
	--WP2
	BuyPoisonsItemInfo[11]["texture"] = "Interface\\Icons\\Ability_PoisonSting"
	BuyPoisonsItemInfo[11]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN
	BuyPoisonsItemInfo[11]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[11]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[11]["Components"][2]["Quantity"] = 2
	BuyPoisonsItemInfo[11]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[11]["shortkey"] = "wp2"
	--WP
	BuyPoisonsItemInfo[15]["texture"] = "Interface\\Icons\\Ability_PoisonSting"
	BuyPoisonsItemInfo[15]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN
	BuyPoisonsItemInfo[15]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[15]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[15]["Components"][2]["Quantity"] = 1
	BuyPoisonsItemInfo[15]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[15]["shortkey"] = "wp1"
	
	
	--DP5 
	BuyPoisonsItemInfo[1]["texture"] = "Interface\\Icons\\Ability_Rogue_DualWeild"
	BuyPoisonsItemInfo[1]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[1]["Components"][1]["Quantity"] = 7
	BuyPoisonsItemInfo[1]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[1]["shortkey"] = "dp5"
	--DP4
	BuyPoisonsItemInfo[4]["texture"] = "Interface\\Icons\\Ability_Rogue_DualWeild"
	BuyPoisonsItemInfo[4]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[4]["Components"][1]["Quantity"] = 5
	BuyPoisonsItemInfo[4]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[4]["shortkey"] = "dp4"
	--DP3
	BuyPoisonsItemInfo[9]["texture"] = "Interface\\Icons\\Ability_Rogue_DualWeild"
	BuyPoisonsItemInfo[9]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[9]["Components"][1]["Quantity"] = 3
	BuyPoisonsItemInfo[9]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[9]["shortkey"] = "dp3"
	--DP2
	BuyPoisonsItemInfo[12]["texture"] = "Interface\\Icons\\Ability_Rogue_DualWeild"
	BuyPoisonsItemInfo[12]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[12]["Components"][1]["Quantity"] = 2
	BuyPoisonsItemInfo[12]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[12]["shortkey"] = "dp2"
	--DP
	BuyPoisonsItemInfo[16]["texture"] = "Interface\\Icons\\Ability_Rogue_DualWeild"
	BuyPoisonsItemInfo[16]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DEATHWEED
	BuyPoisonsItemInfo[16]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[16]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[16]["shortkey"] = "dp1"
	
	--MP3
	BuyPoisonsItemInfo[6]["texture"] = "Interface\\Icons\\Spell_Nature_NullifyDisease"
	BuyPoisonsItemInfo[6]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DETERIORATION
	BuyPoisonsItemInfo[6]["Components"][1]["Quantity"] = 2
	BuyPoisonsItemInfo[6]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_AGONY
	BuyPoisonsItemInfo[6]["Components"][2]["Quantity"] = 2
	BuyPoisonsItemInfo[6]["Vial_Type"] = BUYPOISONS_VIAL_CRYSTAL
	BuyPoisonsItemInfo[6]["shortkey"] = "mp3"
	--MP2
	BuyPoisonsItemInfo[13]["texture"] = "Interface\\Icons\\Spell_Nature_NullifyDisease"
	BuyPoisonsItemInfo[13]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DECAY
	BuyPoisonsItemInfo[13]["Components"][1]["Quantity"] = 4
	BuyPoisonsItemInfo[13]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN
	BuyPoisonsItemInfo[13]["Components"][2]["Quantity"] = 4
	BuyPoisonsItemInfo[13]["Vial_Type"] = BUYPOISONS_VIAL_LEADED
	BuyPoisonsItemInfo[13]["shortkey"] = "mp2"
	--MP1
	BuyPoisonsItemInfo[18]["texture"] = "Interface\\Icons\\Spell_Nature_NullifyDisease"
	BuyPoisonsItemInfo[18]["Components"][1]["Item"] = BUYPOISONS_COMPONENT_DUST_OF_DECAY
	BuyPoisonsItemInfo[18]["Components"][1]["Quantity"] = 1
	BuyPoisonsItemInfo[18]["Components"][2]["Item"] = BUYPOISONS_COMPONENT_ESSENCE_OF_PAIN
	BuyPoisonsItemInfo[18]["Components"][2]["Quantity"] = 1
	BuyPoisonsItemInfo[18]["Vial_Type"] = BUYPOISONS_VIAL_EMPTY
	BuyPoisonsItemInfo[18]["shortkey"] = "mp1"
end