	object_const_def
	const SHIZOUKA_TEACHER
	const SHIZOUKA_TEACHER2
	const SHIZOUKA_STUMP
	const SHIZOUKA_CWC
	const SHIZOUKA_KEKSANDRA
	;const SHIZOUKA_FRUIT_TREE
	;const SHIZOUKA_FRUIT_TREE_ROCK1

Shizuoka_MapScripts:
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_SHIZUOKA_CHRIS
	scene_script .DummyScene2 ; SCENE_SHIZUOKA_NOTHING

	db 3 ; callbacks
	;callback MAPCALLBACK_NEWMAP, .InitializeRoom
	callback MAPCALLBACK_TILES, .ClearRocks
	callback MAPCALLBACK_OBJECTS, .Stump
	callback MAPCALLBACK_NEWMAP, .FlyPoint
	
.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
	end
	
.FlyPoint:
	setflag ENGINE_FLYPOINT_SHIZUOKA
	return
	
.ClearRocks:
	checkevent EVENT_ROUTE_115_ROCKS_DEMOLISHED
	iftrue .ShizuokaRocksDone
	changeblock  19, 15, $7A ; rock
	return

	
.ShizuokaRocksDone
	return
	
.Stump:
	disappear SHIZOUKA_STUMP
	disappear SHIZOUKA_CWC
	disappear SHIZOUKA_KEKSANDRA
	return
	
;VioletCityFruitTree:
	;fruittree FRUITTREE_VIOLET_CITY
	
PalletTownTeacherScript2:
	jumptextfaceplayer PalletTownTeacherText
	
PalletTownTeacherText:
	text "I'm raising #-"
	line "MON too."

	para "They serve as my"
	line "private guards."
	done
	
GivemndebugScript:
	opentext
	writetext Text_debugstarter
	waitbutton
	closetext
	opentext
	writetext ReceivedStarterTextClefairy
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke EEVEE, 5, BERRY
	closetext
	end
	
Text_debugstarter:
	text "Here have a"
	line "starter"
	done

ReceivedStarterTextClefairy:
	text "<PLAYER> received"
	line "a starter!"
	done
	
ShizuokaSign:
	jumptext ShizuokaSignText
	
ShizuokaSignText:
	text "City of World"
	line "Standards"
	para "Shizuoka"
	done
	
StumpLabSign:
	jumptext StumpLabSignText
	
	
StumpLabSignText:
	text "Stump Labs"
	line "IRS fuck off"
	done
	
PlayerHouseSign:
	jumptext PlayerHouseSignText
	
PlayerHouseSignText:
	text "<PLAY_G>'s house"
	;line ""
	done

StumpStopsYou1:
	playmusic MUSIC_PROF_OAK
	setevent EVENT_MEET_STUMP
	clearevent EVENT_HIDE_STUMP
	setmapscene STUMPSLAB, SCENE_STUMPSLAB_STARTER
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	appear SHIZOUKA_STUMP
	applymovement SHIZOUKA_STUMP, Movement_StumpRunsToYou1_NBT
	opentext
	writetext Text_StumpWildMon
	waitbutton
	closetext
	follow SHIZOUKA_STUMP, PLAYER
	applymovement SHIZOUKA_STUMP, StumpTakesYouToLab
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear SHIZOUKA_STUMP
	applymovement PLAYER, PlayerEntersLab
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	pause 15
	warpfacing UP, STUMPSLAB, 4, 11
	end
	
PlayerEntersLab:
	step UP
	step_end
	
Text_WaitPlayer:
	text "WAIT!"
	done
	
Movement_StumpRunsToYou1_NBT:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step_end

Text_StumpWildMon:
	text "That was a close "
	line "one. Wild Pokemon"
	
	para "live in the tall"
	line "grass. You need"
	
	para "your own for"
	line "protection. Here"
	line "follow me."
	done
	
StumpTakesYouToLab:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
StumpStopsYou2:
	playmusic MUSIC_PROF_OAK
	setevent EVENT_MEET_STUMP
	clearevent EVENT_HIDE_STUMP
	setmapscene STUMPSLAB, SCENE_STUMPSLAB_STARTER
	opentext
	writetext Text_WaitPlayer
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	appear SHIZOUKA_STUMP
	applymovement SHIZOUKA_STUMP, Movement_StumpRunsToYou2_NBT
	opentext
	writetext Text_StumpWildMon
	waitbutton
	closetext
	follow SHIZOUKA_STUMP, PLAYER
	applymovement SHIZOUKA_STUMP, StumpTakesYouToLab2
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear SHIZOUKA_STUMP
	applymovement PLAYER, PlayerEntersLab
	playsound SFX_ENTER_DOOR
	special FadeOutPalettes
	pause 15
	warpfacing UP, STUMPSLAB, 4, 11
	end
	
Movement_StumpRunsToYou2_NBT:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end
	
StumpTakesYouToLab2:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end
	
VirginRage1:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playmusic MUSIC_KEKSANDRA
	appear SHIZOUKA_KEKSANDRA
	applymovement SHIZOUKA_KEKSANDRA, KeksandraMovement1
	turnobject SHIZOUKA_KEKSANDRA, UP
	turnobject PLAYER, DOWN
	opentext
	writetext KeksandraGreeting
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	showemote EMOTE_SHOCK, SHIZOUKA_KEKSANDRA, 15
	turnobject PLAYER, LEFT
	turnobject SHIZOUKA_KEKSANDRA, LEFT
	special FadeOutMusic
	playmusic MUSIC_CHRIS_ENCOUNTER
	appear SHIZOUKA_CWC
	applymovement SHIZOUKA_CWC, CWCMovement1
	turnobject SHIZOUKA_CWC, RIGHT
	opentext
	writetext KeksandraGreeting2
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .VirginRageFemale
	iffalse .VirginRageMale
	end
	
.VirginRageFemale:
	opentext
	writetext ShizCWCBeforeTextFemale
	waitbutton
	closetext
	winlosstext ShizCWCWinText, ShizCWCLossText
	setlasttalked SHIZOUKA_CWC
	loadtrainer AUTIST, CHRISCHAN_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	end
	
.VirginRageMale:
	opentext
	writetext ShizCWCBeforeText
	waitbutton
	closetext
	winlosstext ShizCWCWinText, ShizCWCLossText
	setlasttalked SHIZOUKA_CWC
	loadtrainer AUTIST, CHRISCHAN_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle
	end
	
.AfterBattle:
	opentext
	writetext ShizCWCAfterText
	waitbutton
	closetext
	applymovement SHIZOUKA_KEKSANDRA, KekKickMovement
	turnobject SHIZOUKA_KEKSANDRA, UP
	playsound SFX_TACKLE
	applymovement SHIZOUKA_CWC, Movement_KickedInTheNuts
	opentext
	writetext LeaveCreep
	waitbutton
	closetext
	applymovement SHIZOUKA_CWC, ShizCWCLeaveMovement
	disappear SHIZOUKA_CWC
	applymovement SHIZOUKA_KEKSANDRA, KekWalkUp
	turnobject SHIZOUKA_KEKSANDRA, RIGHT
	opentext
	writetext KekLeave
	waitbutton
	closetext
	applymovement SHIZOUKA_KEKSANDRA, KekLeaveMovement
	disappear SHIZOUKA_KEKSANDRA
	setscene SCENE_SHIZUOKA_NOTHING
	variablesprite SPRITE_NPC3, SPRITE_YOUNGSTER
	variablesprite SPRITE_NPC1, SPRITE_TEACHER
	special LoadUsedSpritesGFX
	waitsfx
	playmapmusic
	setevent EVENT_HIDE_CHRIS
	end

KeksandraMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end
	
KekKickMovement:
	step LEFT
	step_end
	
Movement_KickedInTheNuts:
	turn_head UP
	jump_step UP
	step_end
	
KekWalkUp:
	step UP
	step_end
	
KekLeaveMovement:
	step LEFT
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

CWCMovement1:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step_end
	
ShizCWCLeaveMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step LEFT
	step_end
	
KeksandraGreeting:
	text "Howdy neighbor!"
	line "Name's Cass-"
	para "I mean Keksandra."
	line "I just moved in"
	para "next door. And was"
	line "told to git gud"
	para "by mom. There's"
	line "not much to do"
	para "here though. The"
	line "professor wasn't"
	para "in his lab when I"
	line "went there, the"
	para "lady in the park"
	line "was boring and"
	para "there's this creep"
	line "I keep seeing"
	para "sulking around."
	done
	
KeksandraGreeting2:
	text "Fug! There he is"
	line "now!"
	done
	
LeaveCreep:
	text "Get lost creep!"
	done
	
KekLeave:
	text "Well that was odd."
	line "Wut the fug was"
	cont "that all about?"
	para "Anyway what was"
	line "your name?"
	para "..."
	line "..."
	para "So <PLAY_G>?"
	line "Ok I'll member"
	cont "that"
	para "I'll see you" 
	line "around <PLAY_G>!" 
	cont "Good luck!"
	done

ShizCWCBeforeTextFemale:
	text "Salutations and"
	line "greetings my fine"
	cont "ladies!" 
	para "Allow me to"
	line "introduce myself."
	para "I am the one and"
	line "only Christian"
	para "Weston Chandler or"
	line "CWC, the mayor of"
	para "CWCville and"
	line "currently on two"
	para "quests. One is to"
	line "be a Pokemon"
	para "master like most" 
	line "but the other one "
	para "is much more"
	line "important."
	para "MY LOVE QUEST!"
	para "I am searching for"
	line "a virgin"
	cont "boy-friend free"
	para "girl and I could"
	line "not help but"
	para "notice you two"
	line "from the distance"
	para "and I- What?"
	para "Why are you"
	line "backing away? I"
	para "know you two"
	line "are boyfriend free"
	cont "girls!"
	para "Fine then I'll"
	line "just have to show"
	para "why you should be"
	line "my sweetheart."
	done
	
ShizCWCBeforeText:
	text "HEY!"
	para "Yeah you."
	line "Who do you think"
	cont "you are?"
	para "Allow me to"
	line "introduce myself."
	para "I am the one and"
	line "only Christian"
	para "Weston Chandler or"
	line "CWC, the mayor of"
	para "CWCville and"
	line "currently on two"
	para "quests. One is to"
	line "be a Pokemon"
	para "master like most" 
	line "but the other one"
	para "is much more"
	line "important."
	para "MY LOVE QUEST!"
	para "I am looking for a"
	line "virgin boyfriend"
	para "free girl. A task"
	line "hard due to the"
	para "infinitely high"
	line "boyfriend factor."
	para "AND YOU!"
	para "Walking out here"
	line "all cool and all"
	cont "with a Pokemon."
	para "I bet you'll snap"
	line "up all the girls." 
	para "I'll show you the"
	line "power of a virgin"
	cont "with rage!"
	done
	
ShizCWCWinText:
	text "What?! But my love"
	line "quest!"
	done
	
ShizCWCLossText:
	text "Don't mess with a"
	line "virgin with rage!"
	done
	
ShizCWCAfterText:
	text "ACK."
	para "This can't be!"
	line "Me and Sonichu, we"
	para "were going to zap"
	line "to the extreme."
	para "How can this be?"
	para "..." 
	para "..."
	para "I won't forget"
	line "this!"
	para "I'll show you." 
	para "Never mess with" 
	line "the God Chandler!"
	done
	
VirginRage2:
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playmusic MUSIC_KEKSANDRA
	appear SHIZOUKA_KEKSANDRA
	applymovement SHIZOUKA_KEKSANDRA, KeksandraMovement2
	turnobject SHIZOUKA_KEKSANDRA, DOWN
	turnobject PLAYER, UP
	opentext
	writetext KeksandraGreeting
	waitbutton
	closetext
	showemote EMOTE_SHOCK, PLAYER, 15
	showemote EMOTE_SHOCK, SHIZOUKA_KEKSANDRA, 15
	turnobject PLAYER, LEFT
	turnobject SHIZOUKA_KEKSANDRA, LEFT
	special FadeOutMusic
	playmusic MUSIC_CHRIS_ENCOUNTER
	appear SHIZOUKA_CWC
	applymovement SHIZOUKA_CWC, CWCMovement2
	turnobject SHIZOUKA_CWC, RIGHT
	opentext
	writetext KeksandraGreeting2
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .VirginRageFemale2
	iffalse .VirginRageMale2
	
.VirginRageFemale2:
	opentext
	writetext ShizCWCBeforeTextFemale
	waitbutton
	closetext
	winlosstext ShizCWCWinText, ShizCWCLossText
	setlasttalked SHIZOUKA_CWC
	loadtrainer AUTIST, CHRISCHAN_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle2
	
.VirginRageMale2:	
	opentext
	writetext ShizCWCBeforeText
	waitbutton
	closetext
	winlosstext ShizCWCWinText, ShizCWCLossText
	setlasttalked SHIZOUKA_CWC
	loadtrainer AUTIST, CHRISCHAN_1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle2
	
.AfterBattle2:
	opentext
	writetext ShizCWCAfterText
	waitbutton
	closetext
	applymovement PLAYER, MoveForKek
	turnobject PLAYER, LEFT
	applymovement SHIZOUKA_KEKSANDRA, KekKickMovement2
	turnobject SHIZOUKA_KEKSANDRA, LEFT
	playsound SFX_TACKLE
	applymovement SHIZOUKA_CWC, Movement_KickedInTheNuts2
	opentext
	writetext LeaveCreep
	waitbutton
	closetext
	applymovement SHIZOUKA_CWC, ShizCWCLeaveMovement2
	disappear SHIZOUKA_CWC
	turnobject SHIZOUKA_KEKSANDRA, RIGHT
	opentext
	writetext KekLeave
	waitbutton
	closetext
	applymovement SHIZOUKA_KEKSANDRA, KekLeaveMovement2
	disappear SHIZOUKA_KEKSANDRA
	setscene SCENE_SHIZUOKA_NOTHING
	variablesprite SPRITE_NPC3, SPRITE_YOUNGSTER
	variablesprite SPRITE_NPC1, SPRITE_TEACHER
	special LoadUsedSpritesGFX
	waitsfx
	playmapmusic
	setevent EVENT_HIDE_CHRIS
	end

KeksandraMovement2:
	step RIGHT
	step RIGHT
	step UP
	step RIGHT
	step RIGHT
	step_end
	
MoveForKek:
	step RIGHT
	step_end
	
KekKickMovement2:
	step DOWN
	step_end
	
Movement_KickedInTheNuts2:
	turn_head LEFT
	jump_step LEFT
	step_end

KekLeaveMovement2:
	step LEFT
	step LEFT
	step UP
	step UP
	step LEFT
	step UP
	step UP
	step_end

CWCMovement2:
	step DOWN
	step DOWN
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step_end
	
ShizCWCLeaveMovement2:
	step UP
	step UP
	step UP
	step LEFT
	step UP
	step UP
	step LEFT
	step_end
	
;CianwoodCityRock:
	;jumpstd smashrock

Shizuoka_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  5, 12,  REDS_HOUSE_1F, 1
	warp_event  14, 19, STUMPSLAB, 1
	warp_event  3, 20, KEKSANDRAS_HOUSE_1F, 1

	db 4 ; coord events
	coord_event  0, 16, SCENE_SHIZUOKA_STUMP, StumpStopsYou1
	coord_event  0, 17, SCENE_SHIZUOKA_STUMP, StumpStopsYou2
	coord_event 10, 20, SCENE_SHIZUOKA_CHRIS, VirginRage1
	coord_event 10, 21, SCENE_SHIZUOKA_CHRIS, VirginRage2

	db 3 ; bg events
	bg_event 17, 13, BGEVENT_READ, ShizuokaSign
	bg_event 11, 19, BGEVENT_READ, StumpLabSign
	bg_event  8, 12, BGEVENT_READ, PlayerHouseSign

	db 5 ; object events
	object_event 8,  15, SPRITE_NPC7, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, -1
	object_event  9, 10, SPRITE_NPC5, SPRITEMOVEDATA_SPINRANDOM_SLOW, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GivemndebugScript, -1
	object_event  5, 17, SPRITE_NPC6, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, EVENT_MEET_STUMP
	object_event 10, 16, SPRITE_NPC3, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, EVENT_HIDE_CHRIS
	object_event  6, 21, SPRITE_NPC1, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript2, EVENT_HIDE_CHRIS
	;object_event  7, 17, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletCityFruitTree, -1
	;object_event 15, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
