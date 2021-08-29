; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4

MapGroupRoofs:
; entries correspond to map groups
; values are indexes for Roofs (see below)
	db -1             ;  0
	db -1             ;  6
	db -1             ;  7
	db -1             ; 12
	db -1             ; 13
	db -1             ; 14
	db -1             ; 15
	db -1             ; 16
	db -1             ; 17
	db -1             ; 18
	db -1             ; 20
	db -1             ; 21
	db ROOF_OLIVINE   ; 22 (Cianwood)
	db -1             ; 23
	db -1             ; 25
	db -1  ; 27       ; 27 Shizuoka
	db -1  ; 27       ; 27 Kyoto
	db -1  ; 27       ; 27 Osaka
	db -1  ; 27       ; 27 Kochi
	db -1  ; 27       ; 27 TOTTORI
	db -1  ; 27       ; 27 HIROSHIMA
	db -1  ; 27       ; 27 Kitakyushu
	db -1  ; 27       ; 27 NIIGATA
	db -1  ; 27       ; 27 Sado
	db -1  ; 27       ; 27 Aomori

Roofs:
; entries correspond to ROOF_* constants
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
