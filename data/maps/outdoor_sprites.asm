; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw CinnabarGroupSprites
	dw CeruleanGroupSprites
	dw PalletGroupSprites
	dw PewterGroupSprites
	dw FastShipGroupSprites
	dw IndigoGroupSprites
	dw FuchsiaGroupSprites
	dw LavenderGroupSprites
	dw CableClubGroupSprites
	dw CeladonGroupSprites
	dw CianwoodGroupSprites
	dw ViridianGroupSprites
	dw SaffronGroupSprites
	dw ShizoukaGroupSprites
	dw KyotoGroupSprites
	dw OsakaGroupSprites
	dw KochiGroupSprites
	dw TottoriGroupSprites
	dw HiroshimaGroupSprites
	dw KitakyushuGroupSprites
	dw NiigataGroupSprites
	dw SadoGroupSprites
	dw AomoriGroupSprites

; Route1 and ViridianCity are connected
; Route2 and PewterCity are connected
; PalletTown and Route21 are connected
PalletGroupSprites:
ViridianGroupSprites:
PewterGroupSprites:
CinnabarGroupSprites:
CeruleanGroupSprites:
SaffronGroupSprites:
VermilionGroupSprites:
CeladonGroupSprites:
LavenderGroupSprites:
FuchsiaGroupSprites:
IndigoGroupSprites:
CianwoodGroupSprites:
FastShipGroupSprites:
CableClubGroupSprites:
ShizoukaGroupSprites:
KyotoGroupSprites:
OsakaGroupSprites:
KochiGroupSprites:
TottoriGroupSprites:
HiroshimaGroupSprites:
KitakyushuGroupSprites:
NiigataGroupSprites:
SadoGroupSprites:
AomoriGroupSprites:
	db SPRITE_NPC1
	db SPRITE_NPC2
	db SPRITE_NPC3
	db SPRITE_NPC4
	db SPRITE_NPC5
	db SPRITE_NPC6
	db SPRITE_NPC7
	db SPRITE_NPC8
	db SPRITE_NPC9
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db 0 ; end

