treemon_map: MACRO
	map_id \1
	db \2 ; treemon set
ENDM

TreeMonMaps:
	;treemon_map ROUTE_41,                  TREEMON_SET_CITY
	;treemon_map ROUTE_42,                  TREEMON_SET_TOWN
	;treemon_map ROUTE_44,                  TREEMON_SET_CANYON
	treemon_map ROUTE_101,                 TREEMON_SET_CANYON
	;treemon_map MAHOGANY_TOWN,             TREEMON_SET_CITY
	db -1

RockMonMaps:
	treemon_map ROUTE_101,                 TREEMON_SET_ROCK
	db -1
