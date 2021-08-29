	object_const_def
	const STUMP_LAB

Stumpslab_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_STUMPSLAB_NOTHING
	scene_script .DummyScene1 ; SCENE_STUMPSLAB_STARTER

	db 0 ; callbacks
	
.DummyScene0:
	end
	
.DummyScene1:
	applymovement PLAYER, WALK_TO_STUMP
	setmapscene SHIZUOKA, SCENE_SHIZUOKA_CHRIS
	setmapscene STUMPSLAB, SCENE_STUMPSLAB_NOTHING
	clearevent EVENT_HIDE_CHRIS
	variablesprite SPRITE_NPC6, SPRITE_BUG_CATCHER
	variablesprite SPRITE_NPC3, SPRITE_CHRIS_CHAN
	variablesprite SPRITE_NPC1, SPRITE_KEKSANDRA
	special LoadUsedSpritesGFX
	opentext
	writetext Text_Stumpstarter
	waitbutton
	closetext
	pause 5
	opentext
	writetext Lab_GetStumpParcel
	playsound SFX_ITEM
	waitsfx
	pause 15
	waitbutton
	closetext
	opentext
	writetext Text_Stumpstarter2
	waitbutton
	closetext
	opentext
	writetext ReceivedStarterTextSneasel
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SNEASEL, 5, BERRY
	closetext
	opentext
	writetext Text_Stumpstarter3
	waitbutton
	closetext
	end
	
WALK_TO_STUMP:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end
	
Text_Stumpstarter:
	text "Now then."
	para "I have a favor to"
	line "ask you. Out of"
	para "all the candidates"
	line "in Shizouka you"
	para "were the one I"
	line "deemed most worthy"
	para "and by that you"
	line "were the only one"
	para "without a lawsuit"
	line "or restraining"
	para "order against me."
	line "Anyway To the west"
	para "there is the town"
	line "of Hamamatsu."
	para "They have a local"
	line "professor not"
	para "unlike me. Anyway"
	line "I need you to give"
	cont "this to him."
	done
	
Lab_GetStumpParcel:
	text "<PLAYER> received"
	line "Stump's Parcel!"
	done
	
Text_Stumpstarter2:
	text "And don't think"
	line "this is a"
	cont "thankless task."
	para "I've got your very"
    line "own Pokemon right"
	cont "here for you!" 
	done
	
ReceivedStarterTextSneasel:
	text "<PLAYER> received"
	line "Sneasel!"
	done
	
Text_Stumpstarter3:
	text "The little bastard"   
	line "was causing all"
	para "sorts of problems"
	line "around. Finally"
	para "caught em last"
	line "night. Anyways I'm"
	cont "counting on you!"
	done
	
StumpTextScript:
	jumptextfaceplayer StumpText
	
StumpText:
	text "Good luck out"
	line "there kid! I'm"
	cont "counting on you!"
	done
	
StumpComputer:
	jumptext StumpComputerText
	
StumpComputerText:
	text "Test"
	done
   


Stumpslab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  11, SHIZUOKA, 2
	warp_event  5,  11, SHIZUOKA, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event  0,  1, BGEVENT_READ, StumpComputer
	;bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	;bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 1 ; object events
	object_event  4, 2, SPRITE_STUMP, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, StumpTextScript, EVENT_HIDE_STUMP
