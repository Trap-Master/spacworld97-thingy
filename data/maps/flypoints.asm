flypoint: MACRO
	const FLY_\1
	db \2, SPAWN_\1
ENDM

Flypoints:
; landmark, spawn point
	const_def
; Johto
	flypoint SHIZUOKA,     SHIZUOKA
	flypoint KYOTO,        KYOTO
	flypoint OSAKA,        OSAKA
	flypoint KOCHI,        KOCHI
	flypoint TOTTORI,      TOTTORI
	flypoint HIROSHIMA,    HIROSHIMA
	flypoint KITAKYUSHU,   KITAKYUSHU
	flypoint NIIGATA,      NIIGATA
	flypoint SADO,         SADO
	flypoint AOMORI,       AOMORI
	flypoint HAKODATE,     HAKODATE
	flypoint SENDAI,       SENDAI
	flypoint TOKYO,        TOKYO
	flypoint FUJI,         FUJI
	flypoint NIHON_LEAGUE, NIHON_LEAGUE

; Kanto
KANTO_FLYPOINT EQU const_value
	flypoint CINNABAR,     CINNABAR_ISLAND
	flypoint INDIGO,       INDIGO_PLATEAU
	db -1
