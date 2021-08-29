	object_const_def

KeksandrasHouse1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	;callback MAPCALLBACK_NEWMAP, .InitializeRoom
	;callback MAPCALLBACK_TILES, .SetSpawn

KeksandrasHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  7,  SHIZUOKA, 3
	warp_event  5,  7, SHIZUOKA, 3
	warp_event 10,  0, KEKSANDRAS_HOUSE_2F, 1

	db 0 ; coord events

	db 0 ; bg events
	;bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 0 ; object events
	;object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
