map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if "\1" == "north"
_blk = \3_WIDTH * (\3_HEIGHT + -3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "south"
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif "\1" == "west"
_blk = (\3_WIDTH * _src) + \3_WIDTH + -3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 + -6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif "\1" == "east"
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM

	map_attributes CinnabarIsland, CINNABAR_ISLAND, $2b, 0
	;connection north, Route21, ROUTE_21, 0
	;connection east, Route20, ROUTE_20, 

	map_attributes SeafoamGym, SEAFOAM_GYM, $09, 0
	map_attributes RedsHouse1F, REDS_HOUSE_1F, $00, 0
	map_attributes RedsHouse2F, REDS_HOUSE_2F, $00, 0
	map_attributes KeksandrasHouse1F, KEKSANDRAS_HOUSE_1F, $00, 0
	map_attributes KeksandrasHouse2F, KEKSANDRAS_HOUSE_2F, $00, 0
	map_attributes Stumpslab, STUMPSLAB, $00, 0
	map_attributes FastShip1F, FAST_SHIP_1F, $00, 0
	map_attributes FastShipCabins_NNW_NNE_NE, FAST_SHIP_CABINS_NNW_NNE_NE, $00, 0
	map_attributes FastShipCabins_SW_SSW_NW, FAST_SHIP_CABINS_SW_SSW_NW, $00, 0
	map_attributes FastShipCabins_SE_SSE_CaptainsCabin, FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN, $00, 0
	map_attributes FastShipB1F, FAST_SHIP_B1F, $00, 0
	map_attributes MountMoonSquare, MOUNT_MOON_SQUARE, $2d, 0
	map_attributes MountMoonGiftShop, MOUNT_MOON_GIFT_SHOP, $00, 0
	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0
	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0
	map_attributes MobileTradeRoom, MOBILE_TRADE_ROOM, $00, 0
	map_attributes MobileBattleRoom, MOBILE_BATTLE_ROOM, $00, 0
	map_attributes IndigoPlateau, INDIGO_PLATEAU, $00, 0
	
	map_attributes Shizuoka, SHIZUOKA, $87, NORTH | WEST | EAST
	connection north, Fuji, FUJI, 0
	connection west, Route101, ROUTE_101, -6
	connection east, Route115, ROUTE_115, 4
	
	map_attributes Hamamatsu, HAMAMATSU, $87, WEST | EAST
	connection west, Toyohashi, TOYOHASHI, 1
	connection east, Route101, ROUTE_101, -5
	
	map_attributes Toyohashi, TOYOHASHI, $43, WEST | EAST
	connection west, Minabe, MINABE, 0
	connection east, Hamamatsu, HAMAMATSU, -1
	
	map_attributes Minabe, MINABE, $87, NORTH | EAST
	connection north, OsakaDowntown, OSAKA_DOWNTOWN, -7
	connection east, Toyohashi, TOYOHASHI, 0
	
	map_attributes Route101, ROUTE_101, $87, NORTH | WEST | EAST
	connection north, Nara, NARA, -3
	connection west, Hamamatsu, HAMAMATSU, 5
	connection east, Shizuoka, SHIZUOKA, 6
	
	map_attributes Nara, NARA, $87, SOUTH | WEST
	connection south, Route101, ROUTE_101, 3
	connection west, Route102, ROUTE_102, -1
	
	map_attributes ForestPark, FOREST_PARK, $00, 0
	
	map_attributes MountMoon, MOUNT_MOON, $09, 0
	
	map_attributes JadeForest, JADE_FOREST, $00, 0
	
	map_attributes Kyoto, KYOTO, $87, SOUTH | EAST
	connection south, Route102, ROUTE_102, 0
	connection east, KyotoEast, KYOTO_EAST, 0
	
	map_attributes KyotoEast, KYOTO_EAST, $87, WEST
	connection west, Kyoto, KYOTO, 0
	
	map_attributes Route102, ROUTE_102, $87, NORTH | WEST | EAST
	connection north, Kyoto, KYOTO, 0
	connection west, Osaka, OSAKA, -6
	connection east, Nara, NARA, 1
	
	
	map_attributes Osaka, OSAKA, $43, NORTH | SOUTH | EAST
	connection north, Route103, ROUTE_103, 5
	connection south, OsakaDowntown, OSAKA_DOWNTOWN, 2
	connection east, Route102, ROUTE_102, 6
	
	map_attributes OsakaDowntown, OSAKA_DOWNTOWN, $43, NORTH | SOUTH
	connection north, Osaka, OSAKA, -2
	connection south, Minabe, MINABE, 7
	
	map_attributes Route103, ROUTE_103, $71, NORTH | SOUTH | WEST
	connection north, Tottori, TOTTORI, 0
	connection south, Osaka, OSAKA, -5
	connection west, Kobe, KOBE, 5
	
	map_attributes Kobe, KOBE, $43, EAST
	connection east, Route103, ROUTE_103, -5
	
	map_attributes Kochi, KOCHI, $43, NORTH | WEST
	connection north, Boardwalk, BOARDWALK, 8
	connection west, Route120, ROUTE_120, 0
	
	map_attributes Route120, ROUTE_120, $87, WEST | EAST
	connection west, Route119, ROUTE_119, -18
	connection east, Kochi, KOCHI, 0
	
	map_attributes Boardwalk, BOARDWALK, $43, NORTH | SOUTH
    connection north, Hiroshima, HIROSHIMA, 3
	connection south, Kochi, KOCHI, -8
	
	map_attributes Tottori, TOTTORI, $71, NORTH | SOUTH | EAST
	connection north, Route116, ROUTE_116, 0
	connection south, Route103, ROUTE_103, 0
	connection east, Route104, ROUTE_104, 0
	
	map_attributes Route104, ROUTE_104, $71, WEST | EAST
	connection west, Tottori, TOTTORI, 0
	connection east, Route105, ROUTE_105, 0
	
	map_attributes Route105, ROUTE_105, $71, SOUTH | WEST
	connection south, Route106, ROUTE_106, 0
	connection west, Route104, ROUTE_104, 0
	
	map_attributes Route106, ROUTE_106, $87, NORTH | EAST
	connection north, Route105, ROUTE_105, 0
	connection east, Niigata, NIIGATA, 0
	
	map_attributes Niigata, NIIGATA, $87, NORTH | WEST | EAST
	connection north, Route107, ROUTE_107, 5
	connection west, Route106, ROUTE_106, 0
	connection east, Route108, ROUTE_108, 9
	
	map_attributes Route108, ROUTE_108, $87, WEST | EAST
	connection west, Niigata, NIIGATA, -9
	connection east, Route109, ROUTE_109, -36
	
	map_attributes Route109, ROUTE_109, $87, NORTH | WEST
	connection north, Route110, ROUTE_110, 1
	connection west, Route108, ROUTE_108, 36
	
	map_attributes Route110, ROUTE_110, $8B, SOUTH | EAST
	connection south, Route109, ROUTE_109, -1
	connection east, Aomori, AOMORI, -9
	
	map_attributes Aomori, AOMORI, $8B, NORTH | SOUTH | WEST
	connection north, Route111, ROUTE_111, 5
	connection south, Route112, ROUTE_112, 5
	connection west, Route110, ROUTE_110, 9
	
	map_attributes Route111, ROUTE_111, $43, NORTH | SOUTH
	connection north, Hakodate, HAKODATE, 0
	connection south, Aomori, AOMORI, -5
	
	map_attributes Route112, ROUTE_112, $8B, NORTH | SOUTH
	connection north, Aomori, AOMORI, -5
	connection south, Sendai, SENDAI, -10
	
	map_attributes Sendai, SENDAI, $87, NORTH | SOUTH
	connection north, Route112, ROUTE_112, 10
	connection south, Route113, ROUTE_113, 10
	
	map_attributes Route113, ROUTE_113, $87, NORTH | SOUTH
	connection north, Sendai, SENDAI, -10
	connection south, Route114, ROUTE_114, -10
	
	map_attributes Route114, ROUTE_114, $87, NORTH | WEST
	connection north, Route113, ROUTE_113, 10
	connection west, Sakura, SAKURA, -18
	
	map_attributes Hakodate, HAKODATE, $8B, SOUTH
	connection south, Route111, ROUTE_111, 0
	
	map_attributes Route107, ROUTE_107, $43, NORTH | SOUTH
	connection north, Sado, SADO, 0
	connection south, Niigata, NIIGATA, -5
	
	map_attributes Sado, SADO, $43, SOUTH
	connection south, Route107, ROUTE_107, 0
	
	map_attributes Route116, ROUTE_116, $71, SOUTH | WEST
	connection south, Tottori, TOTTORI, 0
	connection west, Route117, ROUTE_117, 0
	
	map_attributes Route117, ROUTE_117, $71, WEST | EAST
	connection west, Hiroshima, HIROSHIMA, 0
	connection east, Route116, ROUTE_116, 0
	
	map_attributes Hiroshima, HIROSHIMA, $43, NORTH | SOUTH | WEST | EAST
	connection north, RuinsOfAlph, RUINS_OF_ALPH, 0
	connection south, Boardwalk, BOARDWALK, -3
	connection west, Route118, ROUTE_118, 0
	connection east, Route117, ROUTE_117, 0
	
	map_attributes RuinsOfAlph, RUINS_OF_ALPH, $87, SOUTH
	connection south, Hiroshima, HIROSHIMA, 0
	
	map_attributes Route118, ROUTE_118, $87, WEST | EAST
	connection west, Kitakyushu, KITAKYUSHU, 0
	connection east, Hiroshima, HIROSHIMA, 0
	
	map_attributes Kitakyushu, KITAKYUSHU, $71, SOUTH | EAST
	connection south, Route119, ROUTE_119, 10
	connection east, Route118, ROUTE_118, 0
	
	map_attributes Route119, ROUTE_119, $87, NORTH | EAST
	connection north, Kitakyushu, KITAKYUSHU, -10
	connection east, Route120, ROUTE_120, 18
	
	map_attributes Route115, ROUTE_115, $87, WEST | EAST
	connection west, Shizuoka, SHIZUOKA, -4
	connection east, Hakone, HAKONE, -19
	
	map_attributes Hakone, HAKONE, $0F, NORTH | SOUTH | WEST
	connection north, Maebashi, MAEBASHI, 9
	connection south, Shimoda, SHIMODA, 20
	connection west, Route115, ROUTE_115, 19
	
	map_attributes Shimoda, SHIMODA, $0F, NORTH | SOUTH
	connection north, Hakone, HAKONE, -20
	connection south, IzuIsland, IZU_ISLAND, -11
	
	map_attributes IzuIsland, IZU_ISLAND, $43, NORTH
	connection north, Shimoda, SHIMODA, 11
	
	map_attributes Maebashi, MAEBASHI, $0F, SOUTH | EAST
	connection south, Hakone, HAKONE, -9
	connection east, Tsuchiura, TSUCHIURA, -10
	
	map_attributes Tsuchiura, TSUCHIURA, $0F, SOUTH | WEST
	connection south, Tokyo, TOKYO, 6
	connection west, Maebashi, MAEBASHI, 10
	
	map_attributes Tokyo, TOKYO, $87, NORTH | SOUTH | WEST | EAST
	connection north, Tsuchiura, TSUCHIURA, -6
	connection south, Yokohama, YOKOHAMA, 0
	connection west, Akihabara, AKIHABARA, 15
	connection east, Sakura, SAKURA, 8
	
	map_attributes Akihabara, AKIHABARA, $87, SOUTH | EAST 
	connection south, Tateyama, TATEYAMA, 1
	connection east, Tokyo, TOKYO, -15
	
	map_attributes Tateyama, TATEYAMA, $87, NORTH | EAST 
	connection north, Akihabara, AKIHABARA, -1
	connection east, KantoBattleClub, KANTO_BATTLE_CLUB, -12
	
	map_attributes KantoBattleClub, KANTO_BATTLE_CLUB, $43, NORTH | WEST
	connection north, Sakura, SAKURA, -1
	connection west, Tateyama, TATEYAMA, 12
	
	map_attributes Yokohama, YOKOHAMA, $87, NORTH
	connection north, Tokyo, TOKYO, 0
	
	map_attributes Sakura, SAKURA, $43, SOUTH | WEST | EAST
	connection south, KantoBattleClub, KANTO_BATTLE_CLUB, 1
	connection west, Tokyo, TOKYO, -8
	connection east, Route114, ROUTE_114, 18
	
	map_attributes Fuji, FUJI, $87, SOUTH
	connection south, Shizuoka, SHIZUOKA, 0
	
	map_attributes NihonLeague, NIHON_LEAGUE, $87, 0
