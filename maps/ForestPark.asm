	object_const_def

ForestPark_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks
	;callback MAPCALLBACK_NEWMAP, .InitializeRoom
	;callback MAPCALLBACK_TILES, .SetSpawn
	
;trainers 
TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	closetext
	end
	
LassCarrieSeenText:
	text "EEK!"
	line "Did you touch me?"
	done

LassCarrieBeatenText:
	text "Wow!"
	done

LassCarrieAfterBattleText:
	text "The brochure said"
	line "this was a nice"
	para "national park but"
	line "its so dark."
	done
	
TrainerBugDon:
	trainer BUG_CATCHER, DON, EVENT_BEAT_BUG_CATCHER_DON, DonSeenText, DonBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext DonAfterBattleText
	waitbutton
	closetext
	end
	
DonSeenText:
	text "Did you know?"
	line "Bugs evolve fast!"
	done

DonBeatenText:
	text "Not fast enough."
	done

DonAfterBattleText:
	text "They evolve fast"
	line "but I am kinda"
	cont "shit as a trainer."
	done
	
TrainerSamurai:
	trainer SAMURAI, SAMURAI1, EVENT_BEAT_SAMURAI, SamuraiSeenText, SamuraiBeatenText, 0, .Script
	
.Script:
	endifjustbattled
	opentext
	writetext SamuraiAfterBattleText
	waitbutton
	closetext
	end
	
SamuraiSeenText:
	text "HALT NOVICE!"
	para "YOU CANNOT PASS"
	line "UNTIL YOU HAVE"
	cont "PROVEN YOUR WORTH!"
	done

SamuraiBeatenText:
	text "NO!"
	done

SamuraiAfterBattleText:
	text "I'LL RETREAT BACK"
	line "TO MY CABIN!"
	para "AND YOU CAN'T"
	line "COME! ITS MINE!"
	para "MY CABIN!"
	done

ForestPark_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 49, 30, ROUTE_101, 1
	warp_event 49, 31, ROUTE_101, 2
	warp_event  6,  0, ROUTE_101, 3
	warp_event  7,  0, ROUTE_101, 4

	db 0 ; coord events

	db 0 ; bg events
	;bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 3 ; object events
	object_event 41, 28, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerLassCarrie, -1
	object_event 41, 17, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBugDon, -1
	object_event  5, 3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerSamurai, -1
