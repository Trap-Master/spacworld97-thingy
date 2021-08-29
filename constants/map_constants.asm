newgroup: MACRO
const_value = const_value + 1
	enum_start 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
	enum MAP_\1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	
	newgroup                                                      ;  2
	map_const SEAFOAM_GYM,                                  5,  4 ;  4
	map_const CINNABAR_ISLAND,                             26, 20 ;  8
	map_const IZU_ISLAND,                                  27, 30 ;  8

	newgroup                                                      ;  3

	map_const TSUCHIURA,                                   30, 29 ; 17                                                    ; 5

	newgroup                                                      ; 7
	
	map_const YOKOHAMA,                                    20, 18 ;  3
 
	newgroup                                                      ; 8

	map_const SHIMODA,                                     10, 10 ;  7
	map_const HAKODATE,                                 10, 10 ; 1

	newgroup                                                      ; 14

	map_const MAEBASHI,                                    24, 18 ;  8
	map_const MOUNT_MOON,                                  15,  9 ; 85

	newgroup                                                      ; 15

	map_const OLIVINE_PORT,                                10, 18 ;  1
	map_const VERMILION_PORT,                              10, 18 ;  2
	map_const FAST_SHIP_1F,                                16,  9 ;  3
	map_const FAST_SHIP_CABINS_NNW_NNE_NE,                  4, 16 ;  4
	map_const FAST_SHIP_CABINS_SW_SSW_NW,                   4, 16 ;  5
	map_const FAST_SHIP_CABINS_SE_SSE_CAPTAINS_CABIN,       5, 17 ;  6
	map_const FAST_SHIP_B1F,                               16,  8 ;  7
	map_const OLIVINE_PORT_PASSAGE,                        10,  9 ;  8
	map_const VERMILION_PORT_PASSAGE,                      10,  9 ;  9
	map_const MOUNT_MOON_SQUARE,                           15,  9 ; 10
	map_const MOUNT_MOON_GIFT_SHOP,                         4,  4 ; 11
	map_const TIN_TOWER_ROOF,                              10,  9 ; 12

	newgroup                                                      ; 16

	map_const ROUTE_23,                                    10, 72 ; $22;10,  9 ;  1
	map_const INDIGO_PLATEAU,                              12, 13 ;  2
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  2
	map_const WILLS_ROOM,                                   5,  9 ;  3
	map_const KOGAS_ROOM,                                   5,  9 ;  4
	map_const BRUNOS_ROOM,                                  5,  9 ;  5
	map_const KARENS_ROOM,                                  5,  9 ;  6
	map_const LANCES_ROOM,                                  5, 12 ;  7
	map_const HALL_OF_FAME,                                 5,  7 ;  8

	newgroup                                                      ; 17

	map_const TATEYAMA,                                    29, 18 ;  5
	map_const KANTO_BATTLE_CLUB,                           20, 27 ;  5

	newgroup                                                      ; 18
	
	map_const SAKURA,                                      27, 29 ;  4
	map_const NARA,                                        20, 18 ;  4

	newgroup                                                      ; 20

	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	map_const MOBILE_TRADE_ROOM,                            5,  4 ;  5
	map_const MOBILE_BATTLE_ROOM,                           5,  4 ;  6

	newgroup                                                      ; 21

	map_const AKIHABARA,                                   30, 28 ;  4

	newgroup                                                      ; 22

	map_const NIHON_LEAGUE,                                11, 14 ; 16

	newgroup                                                      ; 23

	map_const HAKONE,                                      30, 30 ; 15
	map_const HAMAMATSU,                                   10, 9 ; 15
	map_const SENDAI,                                      20, 18 ; 15
	map_const ROUTE_113,                                   10, 27 ; 15
	map_const ROUTE_114,                                   20,  9 ; 15
	map_const FUJI,                                        10, 13 ; 15

	newgroup                                                      ; 25

	
	map_const TOKYO,                                       20, 26 ; 1
	
	newgroup

	map_const SHIZUOKA,                                    10,  13 ; 1
	map_const REDS_HOUSE_1F,                                6,  4  ; 2
	map_const REDS_HOUSE_2F,                                4,  4  ; 3
	map_const STUMPSLAB,                                    5,  6  ; 4
	map_const ROUTE_101,                                   26,  19 ; 5
	map_const FOREST_PARK,                                 25,  18 ; 6
	map_const ROUTE_115,                                   30,   9 ; 7
	map_const KEKSANDRAS_HOUSE_1F,                          6,  4  ; 8
	map_const KEKSANDRAS_HOUSE_2F,                          5,  4  ; 8
	
	newgroup

	map_const KYOTO,                                       16,  18 ; 1
	map_const KYOTO_EAST,                                  20,  16 ; 1
	map_const MINABE,                                      20,   9 ; 1
	map_const ROUTE_102,                                   30,   9 ; 2
	
	newgroup

	map_const OSAKA,                                       20,  19 ; 1
	map_const OSAKA_DOWNTOWN,                              20,  18 ; 2
	map_const ROUTE_103,                                   10,  27 ; 3
	
	newgroup

	map_const KOCHI,                                       20,  18 ; 1
	map_const TOYOHASHI,                                   20,   9 ;
	map_const ROUTE_120,                                   25,   9 ; 2
	map_const ROUTE_119,                                   10,  27 ; 2
	map_const BOARDWALK,                                   10,  27 ; 2
	
	newgroup

	map_const TOTTORI,                                     10,  9 ; 1
	map_const ROUTE_116,                                   10, 18 ; 1
	map_const ROUTE_104,                                   50,  9 ; 1
	map_const ROUTE_105,                                   10, 18 ; 1
	map_const ROUTE_106,                                   30,  9 ; 1
	map_const JADE_FOREST,                                 25, 32 ; 1
	
	
	newgroup
	map_const HIROSHIMA,                                   10,  9 ; 1
	map_const RUINS_OF_ALPH,                               12, 18 ; 1
	map_const ROUTE_117,                                   30,  9 ; 1
	map_const ROUTE_118,                                   35,  9 ; 1
	
	newgroup
	map_const KITAKYUSHU,                                  22, 19 ; 1
	map_const MAHOGANY_RED_GYARADOS_SPEECH_HOUSE,           4,  4 ;  1
	map_const MAHOGANY_GYM,                                 5,  9 ;  2
	map_const MAHOGANY_POKECENTER_1F,                       5,  4 ;  3
	map_const ROUTE_42_ECRUTEAK_GATE,                       5,  4 ;  4
	map_const ROUTE_42,                                    30,  9 ;  5
	map_const ROUTE_44,                                    30,  9 ;  6
	map_const MAHOGANY_TOWN,                               10,  9 ;  7
	
	newgroup
	map_const NIIGATA,                                  20, 18 ; 1
	map_const KOBE,                                     20, 18 ; 1
	map_const ROUTE_108,                                15,  9 ; 1
	
	newgroup
	map_const ROUTE_107,                                10, 27 ; 1
	map_const SADO,                                     12,  9 ; 1
	map_const ROUTE_109,                                10, 45 ; 1
	
	newgroup
	map_const ROUTE_110,                                25, 9 ; 1
	map_const AOMORI,                                   20, 18 ; 1
	map_const ROUTE_111,                                10, 27 ; 1
	map_const ROUTE_112,                                10, 27 ; 1
	
	
	
	
	
