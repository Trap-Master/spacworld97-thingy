spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn REDS_HOUSE_2F,               3,  3
	spawn CINNABAR_ISLAND,            11, 12
	spawn ROUTE_23,                    9,  6

	spawn SHIZUOKA,                    5, 13
	spawn KYOTO,                      27, 29
	spawn OSAKA,                      25, 15
	spawn KOCHI,                      31, 12
	spawn TOTTORI,                    15, 6
	spawn HIROSHIMA,                   3, 14
	spawn KITAKYUSHU,                 33, 17
	spawn NIIGATA,                     7,  9
	spawn SADO,                        9, 11
	spawn AOMORI,                     13, 19
	spawn HAKODATE,                   13, 16
	spawn SENDAI,                     13, 16
	spawn TOKYO,                       9, 46
	spawn FUJI,                        9, 46
	spawn NIHON_LEAGUE,                9, 46
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2
	spawn N_A,                        -1, -1
