landmark: MACRO
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	dbbw       0,   0, SpecialMapName
	landmark  92, 116, ShizuokaName
	landmark  84, 116, Route101Name
	landmark  76, 116, ForestParkName
	landmark  74, 108, HamamatsuName
	landmark  72, 108, ToyohashiName
	landmark  68, 108, MinabeName
	landmark  76, 100, NaraName
	landmark  68,  92, KyotoName
	landmark  68, 100, Route102Name
	landmark  60, 100, OsakaName
	landmark  59,  99, RadioTowerName
	landmark  60,  84, Route103Name
	landmark  58,  84, KobeName
	landmark  60,  68, TottoriName
	landmark  59,  67, SlowpokeWellName
	landmark  60,  60, Route116Name
	landmark  56,  60, Route117Name
	landmark  52,  60, EndonCaveName
	landmark  44,  60, HiroshimaName
	landmark  44,  52, RuinsOfAlphName
	landmark  50,  48, TidalGrottoName
	landmark  32,  60, Route118Name
	landmark  20,  60, KitakyushuName
	landmark  19,  59, MagmaShaftName
	landmark  20,  52, KitakyushuDocksName
	landmark  20,  76, Route119Name
	landmark  28,  92, BoulderMinesName
	landmark  36,  92, Route120Name
	landmark  44,  92, KochiName
	landmark  44,  76, BoardwalkName
	landmark  76,  68, Route104Name
	landmark  92,  68, Route105Name
	landmark  92,  76, JadeForestName
	landmark 100,  76, Route106Name
	landmark 108,  76, NiigataName
	landmark 108,  64, Route107Name
	landmark 108,  52, SadoName
	landmark 107,  51, DragonsMawName
	landmark 116,  76, Route108Name
	landmark 124,  68, Route109Name
	landmark 124,  60, AmpareCavernName
	landmark 128,  52, Route110Name
	landmark 140,  52, AomoriName
	landmark 136,  46, DeepwaterPassageName
	landmark 140,  40, Route111Name
	landmark 132,  36, WhirlIslandName
	landmark 140,  28, HakodateName
	landmark 140,  68, Route112Name
	landmark 140,  84, SendaiName
	landmark 132,  84, NationalParkName
	landmark 140, 100, Route113Name
	landmark 132, 116, Route114Name
	landmark 124, 116, TokyoName
	landmark 108, 116, Route115Name
	landmark  92, 108, CrownPassName
	landmark  92, 100, FujiName
	landmark  96,  96, VictoryRoadName
	landmark  92,  92, NihonLeagueName
	landmark  52, 108, PalletTownName
	landmark  52,  92, Route1Name
	landmark  52,  76, ViridianCityName
	landmark  52,  64, Route2Name
	landmark  52,  52, PewterCityName
	landmark  64,  52, Route3Name
	landmark  76,  52, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  52, CeruleanCityName
	landmark 100,  44, Route24Name
	landmark 108,  36, Route25Name
	landmark 100,  60, Route5Name
	landmark 108,  76, UndergroundName
	landmark 100,  76, Route6Name
	landmark 100,  84, VermilionCityName
	landmark  88,  60, DiglettsCaveName
	landmark  88,  68, Route7Name
	landmark 116,  68, Route8Name
	landmark 116,  52, Route9Name
	landmark 132,  52, RockTunnelName
	landmark 132,  56, Route10Name
	landmark 132,  60, PowerPlantName
	landmark 132,  68, LavenderTownName
	landmark 140,  68, LavRadioTowerName
	landmark  76,  68, CeladonCityName
	landmark 100,  68, SaffronCityName
	landmark 116,  84, Route11Name
	landmark 132,  80, Route12Name
	landmark 124, 100, Route13Name
	landmark 116, 112, Route14Name
	landmark 104, 116, Route15Name
	landmark  68,  68, Route16Name
	landmark  68,  92, Route17Name
	landmark  80, 116, Route18Name
	landmark  92, 116, FuchsiaCityName
	landmark  92, 128, Route19Name
	landmark  76, 132, Route20Name
	landmark  68, 132, SeafoamIslandsName
	landmark  52, 132, CinnabarIslandName
	landmark  52, 120, Route21Name
	landmark  36,  68, Route22Name
	landmark  28,  44, Route23Name
	landmark  28,  36, IndigoPlateauName
	landmark  12, 100, TohjoFallsName
	landmark  20,  68, Route28Name
	landmark 140, 116, FastShipName

ShizuokaName:        db "Shizuoka@"
Route101Name:        db "Route 101@"
ForestParkName:      db "Forest Park@"
HamamatsuName:       db "Hamamatsu@"
ToyohashiName:       db "Toyohashi@"
MinabeName:          db "Minabe@"
NaraName:            db "Nara@"
KyotoName:           db "Kyoto@"
Route102Name:        db "Route 102@"
OsakaName:           db "Osaka@"
RadioTowerName:      db "Radio Tower@"
Route103Name:        db "Route 103@"
KobeName:            db "Kobe@"
TottoriName:         db "Tottori@"
SlowpokeWellName:    db "Slowpoke¯Well@"
Route116Name:        db "Route 116@"
Route117Name:        db "Route 117@"
EndonCaveName:       db "Endon Cave@"
HiroshimaName:       db "Hiroshima@"
RuinsOfAlphName:     db "Ruins of¯Alph@"
TidalGrottoName:     db "Tidal¯Grotto@"
Route118Name:        db "Route 118@"
KitakyushuName:      db "Kitakyushu@"
MagmaShaftName:      db "Magma Shaft@"
KitakyushuDocksName: db "Kitakyushu¯Docks@"
Route119Name         db "Route 119@"
BoulderMinesName:    db "Boulder¯Mines@"
Route120Name:        db "Route 120@"
KochiName:           db "Kochi@"
BoardwalkName:       db "Boardwalk@"
Route104Name:        db "Route 104@"
Route105Name:        db "Route 105@"
JadeForestName:      db "Jade Forest@"
Route106Name:        db "Route 106@"
NiigataName:         db "Niigata@"
Route107Name:        db "Route 107@"
SadoName:            db "Sado@"
DragonsMawName:      db "Dragon's Maw@"
Route108Name:        db "Route 108@"
Route109Name:        db "Route 109@"
AmpareCavernName:    db "Ampare¯Cavern@"
Route110Name:        db "Route 110@"
AomoriName:          db "Aomori@"
DeepwaterPassageName:db "Deepwater¯Passage@"
Route111Name:        db "Route 111@"
WhirlIslandName:     db "Whirl¯Island@"
HakodateName:        db "Hakodate@"
Route112Name:        db "Route 112@"
SendaiName:          db "Sendai@"
NationalParkName:    db "National¯Park@"
Route113Name:        db "Route 113@"
Route114Name:        db "Route 114@"
TokyoName:           db "Tokyo@"
Route115Name:        db "Route 115@"
CrownPassName:       db "Crown Pass@"
FujiName:            db "Fuji@"
NihonLeagueName:     db "Nihon¯League@"
PowerPlantName:      db "POWER PLANT@"
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "Victory¯Road@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "LAV¯RADIO TOWER@"
SilphCoName:         db "SILPH CO.@"
SafariZoneName:      db "SAFARI ZONE@"
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@"
CeruleanCaveName:    db "CERULEAN¯CAVE@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "ROUTE 19@"
Route20Name:         db "ROUTE 20@"
Route21Name:         db "ROUTE 21@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route28Name:         db "ROUTE 28@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@"
DiglettsCaveName:    db "DIGLETT'S¯CAVE@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "BATTLE¯TOWER@"
SpecialMapName:      db "SPECIAL@"
