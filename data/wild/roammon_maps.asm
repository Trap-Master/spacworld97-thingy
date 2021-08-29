; Maps that roaming monsters can be on, and possible maps they can jump to.
; Notably missing are Route 40 and Route 41, which are water routes.

roam_map: MACRO
	map_id \1
	db _NARG - 1
rept _NARG + -1
	map_id \2
	shift
endr
	db 0
ENDM

RoamMaps:
; there are NUM_ROAMMON_MAPS entries
	; start map, ...other maps
	roam_map ROUTE_101, ROUTE_115
	roam_map ROUTE_101, ROUTE_102
	roam_map ROUTE_102, ROUTE_101, ROUTE_103, ROUTE_104
	roam_map ROUTE_103, ROUTE_104, ROUTE_102, ROUTE_103
	roam_map ROUTE_103, ROUTE_103, ROUTE_105
	roam_map ROUTE_105, ROUTE_103, ROUTE_106
	roam_map ROUTE_106, ROUTE_105, ROUTE_104
	roam_map ROUTE_104, ROUTE_106, ROUTE_102, ROUTE_103, ROUTE_107
	roam_map ROUTE_107, ROUTE_104, ROUTE_108, ROUTE_110
	roam_map ROUTE_108, ROUTE_107, ROUTE_109, ROUTE_110
	roam_map ROUTE_109, ROUTE_108
	roam_map ROUTE_110, ROUTE_111, ROUTE_112, ROUTE_107, ROUTE_108
	roam_map ROUTE_111, ROUTE_110, ROUTE_112
	roam_map ROUTE_112, ROUTE_110, ROUTE_111, ROUTE_113
	roam_map ROUTE_113, ROUTE_112, ROUTE_115
	roam_map ROUTE_115, ROUTE_113, ROUTE_101
	db -1 ; end
