	object_const_def
	const HAKONE_SAILOR

Hakone_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	;callback MAPCALLBACK_OBJECTS, .InitializeHakoneSprites
	
;.InitializeHakoneSprites
	;variablesprite SPRITE_NPC6, SPRITE_SAILOR
	;special LoadUsedSpritesGFX
	;return

Hakone_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events
	;warp_event  0, 49,  REDS_HOUSE_1F, 1
	;warp_event  0, 48,  REDS_HOUSE_1F, 1

	db 0 ; coord events

	db 0 ; bg events
	;bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 1 ; object events
	object_event 31, 45, SPRITE_NPC6, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, -1
