#if !defined(using_map_DATUM)
	#include "city22_areas.dm"
	#include "city22_define.dm"

	#include "city22.dmm"
	#include "z1_admin.dmm"
	#include "z2_transit.dmm"

	#define using_map_DATUM /datum/map/city22

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring City22

#endif
