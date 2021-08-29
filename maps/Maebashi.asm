	object_const_def

Maebashi_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	;callback MAPCALLBACK_NEWMAP, .InitializeRoom
	;callback MAPCALLBACK_TILES, .SetSpawn

Maebashi_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 44, 15, MOUNT_MOON, 1

	db 0 ; coord events

	db 0 ; bg events
	;bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 0 ; object events
	;object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
