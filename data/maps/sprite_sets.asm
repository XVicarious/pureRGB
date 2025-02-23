; PureRGBnote: CHANGED: to facilitate the additional new pokemon icons appearing in the overworld when the option is turned on
;                       some sprite sets were modified.

MapSpriteSets:
	table_width 1, MapSpriteSets
	db $01 ; PALLET_TOWN
	db $01 ; VIRIDIAN_CITY
	db $02 ; PEWTER_CITY
	db $02 ; CERULEAN_CITY
	db $03 ; LAVENDER_TOWN
	db $04 ; VERMILION_CITY
	db $05 ; CELADON_CITY
	db $07 ; SAFFRON_CITY
	db $0b ; FUCHSIA_CITY
	db $01 ; CINNABAR_ISLAND
	db $06 ; INDIGO_PLATEAU
	db $01 ; unused map ID
	db $01 ; ROUTE_1
	db $f1 ; ROUTE_2
	db $02 ; ROUTE_3
	db $02 ; ROUTE_4
	db $f9 ; ROUTE_5
	db $fa ; ROUTE_6
	db $fb ; ROUTE_7
	db $fc ; ROUTE_8
	db $02 ; ROUTE_9
	db $f2 ; ROUTE_10
	db $f3 ; ROUTE_11
	db $f4 ; ROUTE_12
	db $08 ; ROUTE_13
	db $08 ; ROUTE_14
	db $f5 ; ROUTE_15
	db $f6 ; ROUTE_16
	db $09 ; ROUTE_17
	db $f7 ; ROUTE_18
	db $0b ; ROUTE_19
	db $f8 ; ROUTE_20
	db $01 ; ROUTE_21
	db $01 ; ROUTE_22
	db $06 ; ROUTE_23
	db $02 ; ROUTE_24
	db $02 ; ROUTE_25
	assert_table_length FIRST_INDOOR_MAP

DEF EAST_WEST   EQU 1
DEF NORTH_SOUTH EQU 2

; Format:
; 00: determines whether the map is split EAST_WEST or NORTH_SOUTH
; 01: coordinate of dividing line
; 02: sprite set ID if in the West or North side
; 03: sprite set ID if in the East or South side
SplitMapSpriteSets:
	db NORTH_SOUTH, 37, $02, $01 ; $f1
	db NORTH_SOUTH, 50, $02, $03 ; $f2
	db EAST_WEST,   57, $04, $08 ; $f3
	db NORTH_SOUTH, 21, $03, $08 ; $f4
	db EAST_WEST,    8, $0b, $08 ; $f5
	db EAST_WEST,   24, $09, $05 ; $f6
	db EAST_WEST,   34, $09, $0b ; $f7
	db EAST_WEST,   53, $01, $0A ; $f8
	db NORTH_SOUTH, 33, $02, $07 ; $f9
	db NORTH_SOUTH,  2, $07, $04 ; $fa
	db EAST_WEST,   17, $05, $07 ; $fb
	db EAST_WEST,    3, $07, $03 ; $fc

SpriteSets:

; each sprite set has 9 walking sprites and 2 still sprites
DEF SPRITE_SET_LENGTH EQU 9 + 2

; sprite set $01
	table_width 1
	db SPRITE_BLUE
	db SPRITE_YOUNGSTER
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_GAMBLER
	db SPRITE_SEEL
	db SPRITE_OAK
	db SPRITE_SWIMMER
	db SPRITE_POKE_BALL
	db SPRITE_GAMBLER_ASLEEP
	assert_table_length SPRITE_SET_LENGTH

; sprite set $02
	table_width 1
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKET
	db SPRITE_SUPER_NERD
	db SPRITE_HIKER
	db SPRITE_MONSTER
	db SPRITE_BLUE
	db SPRITE_GUARD
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKE_BALL
	db SPRITE_MONSTER2_STILL
	assert_table_length SPRITE_SET_LENGTH

; sprite set $03
	table_width 1
	db SPRITE_LITTLE_GIRL
	db SPRITE_GIRL
	db SPRITE_SUPER_NERD
	db SPRITE_HIKER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_GUARD
	db SPRITE_POKE_BALL
	db SPRITE_GAMBLER_ASLEEP
	assert_table_length SPRITE_SET_LENGTH

; sprite set $04
	table_width 1
	db SPRITE_BEAUTY
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_FIGHTING
	db SPRITE_SAILOR
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKE_BALL
	db SPRITE_GAMBLER_ASLEEP
	assert_table_length SPRITE_SET_LENGTH

; sprite set $05
	table_width 1
	db SPRITE_LITTLE_GIRL
	db SPRITE_FIGHTING
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_MIDDLE_AGED_MAN
	db SPRITE_GRAMPS
	db SPRITE_MONSTER
	db SPRITE_GUARD
	db SPRITE_ROCKET
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX
	assert_table_length SPRITE_SET_LENGTH

; sprite set $06
	table_width 1
	db SPRITE_YOUNGSTER
	db SPRITE_GYM_GUIDE
	db SPRITE_MONSTER
	db SPRITE_BLUE
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER
	db SPRITE_GUARD
	db SPRITE_GAMBLER
	db SPRITE_POKE_BALL
	db SPRITE_GAMBLER_ASLEEP
	assert_table_length SPRITE_SET_LENGTH

; sprite set $07
	table_width 1
	db SPRITE_ROCKET
	db SPRITE_SCIENTIST
	db SPRITE_SILPH_WORKER
	db SPRITE_ERIKA
	db SPRITE_GENTLEMAN
	db SPRITE_BIRD
	db SPRITE_ROCKER
	db SPRITE_COOLTRAINER_M
	db SPRITE_MONSTER
	db SPRITE_POKE_BALL
	db SPRITE_GAMBLER_ASLEEP
	assert_table_length SPRITE_SET_LENGTH

; sprite set $08
	table_width 1
	db SPRITE_BIKER
	db SPRITE_SUPER_NERD
	db SPRITE_MIDDLE_AGED_MAN
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_BEAUTY
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_MONSTER
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX
	assert_table_length SPRITE_SET_LENGTH

; sprite set $09
	table_width 1
	db SPRITE_BIKER
	db SPRITE_COOLTRAINER_M
	db SPRITE_SILPH_WORKER
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_HIKER
	db SPRITE_GAMBLER
	db SPRITE_MIDDLE_AGED_MAN
	db SPRITE_SUPER_NERD
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX
	assert_table_length SPRITE_SET_LENGTH

; sprite set $0a
	table_width 1
	db SPRITE_BIRD
	db SPRITE_COOLTRAINER_M
	db SPRITE_FAIRY
	db SPRITE_FISHER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_SEEL
	db SPRITE_SWIMMER
	db SPRITE_YOUNGSTER
	db SPRITE_POKE_BALL
	db SPRITE_FOSSIL
	assert_table_length SPRITE_SET_LENGTH

; sprite set $0b
	table_width 1
	db SPRITE_MONSTER2
	db SPRITE_COOLTRAINER_M
	db SPRITE_FAIRY
	db SPRITE_FISHER
	db SPRITE_GAMBLER
	db SPRITE_MONSTER
	db SPRITE_SEEL
	db SPRITE_SWIMMER
	db SPRITE_YOUNGSTER
	db SPRITE_POKE_BALL
	db SPRITE_FOSSIL
	assert_table_length SPRITE_SET_LENGTH
