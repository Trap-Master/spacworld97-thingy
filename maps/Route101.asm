	object_const_def
	const YOUNGSTER_JOEY

Route101_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	;callback MAPCALLBACK_NEWMAP, .InitializeRoom
	;callback MAPCALLBACK_TILES, .SetSpawn

;trainers 
TrainerYoungsterJoey:
	trainer YOUNGSTER, JOEY1, EVENT_BEAT_YOUNGSTER_JOEY, YoungsterJoeySeenText, YoungsterJoeyBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext YoungsterJoeyAfterBattleText
	waitbutton
	closetext
	end
	
YoungsterJoeySeenText:
	text "I'll have you know"
	line "my Rattata is in"

	para "the top"
	line "percentage!"
	done

YoungsterJoeyBeatenText:
	text "You're strong!"
	done

YoungsterJoeyAfterBattleText:
	text "Even when its top"
	line "percentage"
	para "admittedly that is"
	line "not saying much"
	para "when its Rattata."
	done

Route101_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 30, 28, FOREST_PARK, 1
	warp_event 30, 29, FOREST_PARK, 2
	warp_event  8, 27, FOREST_PARK, 3
	warp_event  9, 27, FOREST_PARK, 4

	db 0 ; coord events

	db 0 ; bg events
	;bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 1 ; object events
	object_event  45, 27, SPRITE_NPC3, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerYoungsterJoey, -1
