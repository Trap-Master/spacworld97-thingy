; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Johto landmarks
	const SPECIAL_MAP       ; 00
	const SHIZUOKA          ; 01
	const ROUTE_101         ; 02
	const FOREST_PARK       ; 03
	const HAMAMATSU         ; 04
	const TOYOHASHI         ; 05
	const MINABE            ; 06
	const NARA              ; 05
	const KYOTO             ; 04
	const ROUTE_102         ; 05
	const OSAKA             ; 06
	const RADIO_TOWER       ; 07
	const ROUTE_103         ; 08
	const KOBE              ; 09
	const TOTTORI           ; 05
	const SLOWPOKE_WELL     ; 05
	const ROUTE_116         ; 05
	const ROUTE_117         ; 05
	const ENDON_CAVE        ; 05
	const HIROSHIMA         ; 05
	const RUINS_OF_ALPH     ; 05
	const TIDAL_GROTTO     ; 05
	const ROUTE_118         ; 05
	const KITAKYUSHU         ; 05
	const MAGMA_SHAFT         ; 05
	const KITAKYUSHU_DOCKS         ; 05
	const ROUTE_119         ; 08
	const BOULDER_MINES         ; 08
	const ROUTE_120         ; 08
	const KOCHI             ; 07
	const BOARDWALK         ; 07
	const ROUTE_104         ; 07
	const ROUTE_105         ; 07
	const JADE_FOREST       ; 07
	const ROUTE_106         ; 07
	const NIIGATA       ; 07
	const ROUTE_107       ; 07
	const SADO       ; 07
	const DRAGONS_MAW       ; 07
	const ROUTE_108       ; 07
	const ROUTE_109       ; 07
	const AMPARE_CAVERN       ; 07
	const ROUTE_110       ; 07
	const AOMORI       ; 07
	const DEPPWATER_PASSAGE       ; 07
	const ROUTE_111       ; 07
	const WHIRL_ISLAND       ; 07
	const HAKODATE       ; 07
	const ROUTE_112       ; 07
	const SENDAI       ; 07
	const NATIONAL_PARK       ; 07
	const ROUTE_113       ; 07
	const ROUTE_114       ; 07
	const TOKYO             ; 07
	const ROUTE_115         ; 07
	const CROWN_PASS         ; 07
	const FUJI         ; 07
	const VICTORY_ROAD         ; 07
	const NIHON_LEAGUE         ; 07

KANTO_LANDMARK EQU const_value
	const PALLET_TOWN       ; 2f
	const ROUTE_1           ; 30
	const VIRIDIAN_CITY     ; 31
	const ROUTE_2           ; 32
	const PEWTER_CITY       ; 33
	const ROUTE_3           ; 34
	const MT_MOON           ; 35
	const ROUTE_4           ; 36
	const CERULEAN_CITY     ; 37
	const ROUTE_24          ; 38
	const ROUTE_25          ; 39
	const ROUTE_5           ; 3a
	const UNDERGROUND_PATH  ; 3b
	const ROUTE_6           ; 3c
	const VERMILION_CITY    ; 3d
	const DIGLETTS_CAVE     ; 3e
	const ROUTE_7           ; 3f
	const ROUTE_8           ; 40
	const ROUTE_9           ; 41
	const ROCK_TUNNEL       ; 42
	const ROUTE_10          ; 43
	const POWER_PLANT       ; 44
	const LAVENDER_TOWN     ; 45
	const LAV_RADIO_TOWER   ; 46
	const CELADON_CITY      ; 47
	const SAFFRON_CITY      ; 48
	const ROUTE_11          ; 49
	const ROUTE_12          ; 4a
	const ROUTE_13          ; 4b
	const ROUTE_14          ; 4c
	const ROUTE_15          ; 4d
	const ROUTE_16          ; 4e
	const ROUTE_17          ; 4f
	const ROUTE_18          ; 50
	const FUCHSIA_CITY      ; 51
	const ROUTE_19          ; 52
	const ROUTE_20          ; 53
	const SEAFOAM_ISLANDS   ; 54
	const CINNABAR_ISLAND   ; 55
	const ROUTE_21          ; 56
	const ROUTE_22          ; 57
	const ROUTE_23          ; 59
	const INDIGO_PLATEAU    ; 5a
	const TOHJO_FALLS       ; 5d
	const ROUTE_28          ; 5e
	const FAST_SHIP         ; 5f

; used in CaughtData
GIFT_LOCATION  EQU $7e
EVENT_LOCATION EQU $7f

; Regions
	const_def
	const JOHTO_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
