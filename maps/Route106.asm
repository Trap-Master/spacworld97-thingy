	object_const_def

Route106_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	;callback MAPCALLBACK_NEWMAP, .InitializeRoom
	;callback MAPCALLBACK_TILES, .SetSpawn

Route106_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 15, 12, JADE_FOREST, 1
	warp_event 15, 13, JADE_FOREST, 2
	warp_event 24,  8, JADE_FOREST, 3
	warp_event 24,  9, JADE_FOREST, 4

	db 0 ; coord events

	db 0 ; bg events
	;bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 0 ; object events
	;object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
