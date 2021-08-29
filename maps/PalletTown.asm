	object_const_def ; object_event constants
	const PALLETTOWN_TEACHER
	const PALLETTOWN_FISHER
	const PALLETTOWN_TEACHER2
	const PALLETTOWN_GARY
	const PALLETTOWN_ASH

PalletTown_MapScripts:
	db 3 ; scene scripts
	scene_script  .MeetAssholeGary ; SCENE_DEFAULT
	scene_script  .DummyScene0 ; SCENE_PALLET_NOTHING
	scene_script  .DummyScene1 ;  SCENE_PALLET_STOP

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	;callback MAPCALLBACK_OBJECTS, .Gary
	
.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	return
	
.MeetAssholeGary:
	prioritysjump .WalkUpToGary
	end
	
.WalkUpToGary:
	disappear PALLETTOWN_ASH
	applymovement PLAYER, Gary_WalkMovement
	special FadeOutMusic
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext Text_GaryStart
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PALLETTOWN_GARY, 15
	applymovement PALLETTOWN_GARY, Gary_WalkMovement2
	opentext
	writetext Text_GaryStart2
	waitbutton
	closetext
	playsound SFX_TACKLE
	applymovement PLAYER, Movement_GaryPushesYouAway_NBT
	appear PALLETTOWN_ASH
	applymovement PALLETTOWN_ASH, Movement_AshRunsIn
	opentext
	writetext Text_GaryStart3
	waitbutton
	closetext
	applymovement PALLETTOWN_GARY, Movement_GaryWalksLeave
	disappear PALLETTOWN_GARY
	special FadeOutMusic
	opentext
	writetext Text_GaryStart4
	waitbutton
	closetext
	applymovement PALLETTOWN_ASH, Movement_AshWalksLeave
	disappear PALLETTOWN_ASH
	special RestartMapMusic
	setevent EVENT_FUCK_OFF_GARY
	setscene SCENE_PALLET_STOP
	end
	
Gary_WalkMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step_end
	
Gary_WalkMovement2:
	step LEFT
	step LEFT
	step_end
	
Movement_GaryPushesYouAway_NBT:
	turn_head LEFT
	jump_step LEFT
	step_end
	
Movement_AshRunsIn:
	step DOWN
	step DOWN
	step_end
	
Movement_GaryWalksLeave
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
Movement_AshWalksLeave:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end
	
Text_GaryStart:
	text "Gary: Citizens of"
	line "Pallet Town!"

	para "I Gary Oak, have"
	line "been entrusted"
	
	para "with a Pokemon"
	line "by my own grandpa"
	
	para "The one and only"
	line "Professor Oak."
	
	para "I promise you this"
	line "I will make Pallet"
	
	para "proud! Now I am"
	line "off to learn the"
	
	para "ways of the"
	line "Pokemon master!"
	done
	
Text_GaryStart2:
	text "And you are...?"
	line "Wait I know you!"

	para "You're that creep"
	line "of the town."
	
	para "The mute."
	line "What could you"
	
	para "want? My grandpa"
	line "is out of Pokemon"
	
	para "Not like he'd give"
	line "one to a loser"
	
	para "like you."
	done
	
Text_GaryStart3:
	text "Oh and look who"
	line "decided to join"
	
	para "us! What's the"
	line "matter Ashey boy?"
	
	para "Sorry to say but"
	line "there's no more"
	
	para "Pokemon left. You"
	line "and that mute"
	
	para "are out of luck!"
	line "See ya later"
	cont "losers!"
	done
	
Text_GaryStart4:
	text "Ash: Grrr, that"
	line "Gary! There has"
	
	para "to be some Pokemon"
	line "left. There's has"
	cont "to..."
	done


PalletTownTeacherScript:
	jumptextfaceplayer PalletTownTeacherText

PalletTownFisherScript:
	jumptextfaceplayer PalletTownFisherText
	
PalletTownTeacherScript2:
	jumptextfaceplayer PalletTownTeacherText2

PalletTownSign:
	jumptext PalletTownSignText

RedsHouseSign:
	jumptext RedsHouseSignText

OaksLabSign:
	jumptext OaksLabSignText

BluesHouseSign:
	jumptext BluesHouseSignText

PalletTownTeacherText:
	text "I'm raising #-"
	line "MON too."

	para "They serve as my"
	line "private guards."
	done

PalletTownFisherText:
	text "Technology is"
	line "incredible!"

	para "You can now trade"
	line "#MON across"
	cont "time like e-mail."
	done

PalletTownSignText:
	text "Pallet Town"

	para "A Tranquil Setting"
	line "of Peace & Purity"
	done
	
PalletTownTeacherText2:
	text "Oh what am I"
	line "doing? Standing"

	para "guard of course!"
	line "Did you know a bit"
	
	para "ago a new couple"
	line "moved into town?"
	
	para "Well a single now."
	line "The damn idiot"
	
	para "walked straight"
	line "into Route 1"
	
	para "without a Pokemon."
	line "became chow for"
	
	para "the Spearow. Damn"
	line "shame as the women"
	
	para "had a child too."
	line "Family name was"
	
	para "Ketchum or"
	line "something."
	done	

RedsHouseSignText:
	text "<PLAYER>'s House"
	done

OaksLabSignText:
	text "Oak Pokemon"
	line "research lab"
	done

BluesHouseSignText:
	text "Green's House"
	done
	
Text_WaitPlayer2:
	text "Wait, <PLAY_G>!"
	done
	
PalletTown_TeacherStopsYouScene1:
	playmusic MUSIC_MOM
	turnobject PALLETTOWN_TEACHER2, LEFT
	opentext
	writetext Text_WaitPlayer2
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	;applymovement PALLETTOWN_TEACHER2, Movement_PalletTeacherRunsToYou1_NBT
	opentext
	writetext Text_WhatDoYouThinkYoureDoingRetard
	waitbutton
	closetext
	;follow PALLETTOWN_TEACHER2, PLAYER
	;applymovement PALLETTOWN_TEACHER2, Movement_PalletTeacherBringsYouBack1_NBT
	;stopfollow
	opentext
	writetext Text_ItsDangerousToGoAloneRetard
	waitbutton
	closetext
	applymovement PLAYER, Movement_PlayerDown
	special RestartMapMusic
	end

Movement_PlayerDown:
	step DOWN
	step_end
	
;PalletTown_TeacherStopsYouScene2:
;	playmusic MUSIC_MOM
;	turnobject PALLETTOWN_TEACHER2, LEFT
;	opentext
;	writetext Text_WaitPlayer2
;	waitbutton
;	closetext
;	turnobject PLAYER, DOWN
;	applymovement PALLETTOWN_TEACHER2, Movement_PalletTeacherRunsToYou2_NBT
;	opentext
;	writetext Text_WhatDoYouThinkYoureDoingRetard
;	waitbutton
;	closetext
;	follow PALLETTOWN_TEACHER2, PLAYER
;	applymovement PALLETTOWN_TEACHER2, Movement_PalletTeacherBringsYouBack2_NBT
;	stopfollow
;	opentext
;	writetext Text_ItsDangerousToGoAloneRetard
;	waitbutton
;	closetext
;	special RestartMapMusic
;	end
	
Movement_PalletTeacherRunsToYou1_NBT:
	step LEFT
	;step RIGHT
	;step LEFT
	;turn_head LEFT
	step_end
	
Movement_PalletTeacherRunsToYou2_NBT:
	step LEFT
	turn_head UP
	step_end
	
Text_WhatDoYouThinkYoureDoingRetard:
	text "What do you think"
	line "you're doing"
	done
	
Movement_PalletTeacherBringsYouBack1_NBT:
	;step DOWN
	step RIGHT
	;step RIGHT
	turn_head LEFT
	step_end
	
Movement_PalletTeacherBringsYouBack2_NBT:
	;step DOWN
	step RIGHT
	turn_head LEFT
	step_end
	
Text_ItsDangerousToGoAloneRetard:
	text "It's dangerous to"
	line "go out without a"
	cont "Pokemon!"

	para "Only a retard"
	line "would jump in"

	para "the way of"
	line "creatures that"
	
	para "could kill you!"
	line "Think <PLAY_G>, think!"
	done


PalletTown_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 17, 11, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 1
	warp_event 15,  5,  GREENS_HOUSE_1F, 1
	warp_event 11,  1,  ROUTE_1, 1
	;warp_event  5,  2,  ROUTE_1, 2

	db 1 ; coord events
	coord_event 11,  2,  SCENE_PALLET_STOP, PalletTown_TeacherStopsYouScene1
	;coord_event 11,  2, SCENE_DEFAULT, PalletTown_TeacherStopsYouScene2

	db 4 ; bg events
	bg_event  7,  9, BGEVENT_READ, PalletTownSign
	bg_event  3,  5, BGEVENT_READ, RedsHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 13,  5, BGEVENT_READ, BluesHouseSign

	db 5 ; object events
	object_event  3,  8, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownFisherScript, -1
	object_event 12,  2, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, -1
	object_event 12, 12, SPRITE_GARY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, EVENT_FUCK_OFF_GARY
	object_event  9,  9, SPRITE_ASH, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, EVENT_FUCK_OFF_GARY
