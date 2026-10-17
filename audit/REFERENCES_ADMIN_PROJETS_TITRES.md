# Références partagées — Administratif, projets et titres

Extraits de fichiers vanilla partagés (CK3 1.20.0.3). **NE PAS** copier les fichiers entièrement dans Diwan. Extraits à consulter pour les points de raccord, sans écraser le vanilla.

## common/subject_contracts/contracts/celestial.txt

Occurrences : 6.

```text
248: 				trigger_if = {
249: 					limit = {
250: 						exists = situation:dynastic_cycle
251: 					}
252: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_metropolitan_limit }
--
250: 						exists = situation:dynastic_cycle
251: 					}
252: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_metropolitan_limit }
253: 				}
254: 				#situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
--
252: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_metropolitan_limit }
253: 				}
254: 				#situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
255: 				# Only the hegemon can appoint these
256: 				scope:liege = {
--
549: 			is_valid = {
550: 				# Only available in the Expansion phase of the Dynastic Cycle
551: 				#situation:dynastic_cycle ?= { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_protectorate_limit }
552: 				trigger_if = {
553: 					limit = {
--
552: 				trigger_if = {
553: 					limit = {
554: 						exists = situation:dynastic_cycle
555: 					}
556: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_protectorate_limit }
--
554: 						exists = situation:dynastic_cycle
555: 					}
556: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_protectorate_limit }
557: 				}
558: 				# Only the hegemon can appoint these
```

## common/factions/00_peasant_faction_new.txt

Occurrences : 8.

```text
26: 		modifier = {
27: 			faction_target = {
28: 				top_participant_group:dynastic_cycle ?= {
29: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
30: 				}
--
27: 			faction_target = {
28: 				top_participant_group:dynastic_cycle ?= {
29: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
30: 				}
31: 			}
--
338: 		# TGP Dynastic Cycle in Instability phase
339: 		modifier = {
340: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
341: 			add = 25
342: 			county_opinion < 0
--
342: 			county_opinion < 0
343: 			scope:faction.faction_target = {
344: 				top_participant_group:dynastic_cycle ?= {
345: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
346: 				}
--
343: 			scope:faction.faction_target = {
344: 				top_participant_group:dynastic_cycle ?= {
345: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
346: 				}
347: 			}
--
517: 		# TGP Dynastic Cycle in Instability phase
518: 		modifier = {
519: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
520: 			add = 25
521: 			county_opinion < 0
--
521: 			county_opinion < 0
522: 			scope:target = {
523: 				top_participant_group:dynastic_cycle ?= {
524: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
525: 				}
--
522: 			scope:target = {
523: 				top_participant_group:dynastic_cycle ?= {
524: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
525: 				}
526: 			}
```

## common/factions/00_populist_faction.txt

Occurrences : 17.

```text
32: 		modifier = {
33: 			faction_target = {
34: 				top_participant_group:dynastic_cycle ?= {
35: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
36: 				}
--
33: 			faction_target = {
34: 				top_participant_group:dynastic_cycle ?= {
35: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
36: 				}
37: 			}
--
389: 		# TGP Dynastic Cycle in Instability phase
390: 		modifier = {
391: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
392: 			add = 25
393: 			scope:target = {
--
392: 			add = 25
393: 			scope:target = {
394: 				top_participant_group:dynastic_cycle ?= {
395: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
396: 				}
--
393: 			scope:target = {
394: 				top_participant_group:dynastic_cycle ?= {
395: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
396: 				}
397: 			}
--
596: 		# TGP Dynastic Cycle in Instability phase
597: 		modifier = {
598: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
599: 			add = 25
600: 			scope:faction.faction_target = {
--
599: 			add = 25
600: 			scope:faction.faction_target = {
601: 				top_participant_group:dynastic_cycle ?= {
602: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
603: 				}
--
600: 			scope:faction.faction_target = {
601: 				top_participant_group:dynastic_cycle ?= {
602: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
603: 				}
604: 			}
--
843: 		# TGP Dynastic Cycle in Instability phase
844: 		modifier = {
845: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
846: 			add = 25
847: 			scope:faction.faction_target = {
--
846: 			add = 25
847: 			scope:faction.faction_target = {
848: 				top_participant_group:dynastic_cycle ?= {
849: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
850: 				}
--
847: 			scope:faction.faction_target = {
848: 				top_participant_group:dynastic_cycle ?= {
849: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
850: 				}
851: 			}
--
1169: 		modifier = {
1170: 			faction_target = {
1171: 				top_participant_group:dynastic_cycle ?= {
1172: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1173: 				}
--
1170: 			faction_target = {
1171: 				top_participant_group:dynastic_cycle ?= {
1172: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1173: 				}
1174: 			}
--
1210: 		# Only in Dynastic Cycle
1211: 		any_county_situation = {
1212: 			situation_type = dynastic_cycle
1213: 		}
1214: 		# Counties can only be in a faction against the top liege in their realm (who is inherently independent).
--
1435: 		# TGP Dynastic Cycle in Instability phase
1436: 		modifier = {
1437: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
1438: 			add = 25
1439: 			county_opinion < 0
--
1439: 			county_opinion < 0
1440: 			scope:faction.faction_target = {
1441: 				top_participant_group:dynastic_cycle ?= {
1442: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1443: 				}
--
1440: 			scope:faction.faction_target = {
1441: 				top_participant_group:dynastic_cycle ?= {
1442: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1443: 				}
1444: 			}
```

## common/great_projects/types/00_ministry_projects.txt

Occurrences : 29.

```text
20: @city_china_illustration = "gfx/interface/illustrations/holding_types/tgp_city_china.dds"
21: @castle_china_illustration = "gfx/interface/illustrations/holding_types/tgp_castle_china.dds"
22: @sinicize_illustration = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_stability.dds"
23: @camp_asia_illustration = "gfx/interface/illustrations/event_scenes/tgp_camp_asia.dds"
24: @develop_communities_default = "gfx/interface/illustrations/event_scenes/ep3_medi_market.dds"
--
996: 		if = {
997: 			limit = {
998: 				situation:dynastic_cycle ?= {
999: 					OR = {
1000: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
998: 				situation:dynastic_cycle ?= {
999: 					OR = {
1000: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1001: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1002: 					}
--
999: 					OR = {
1000: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1001: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1002: 					}
1003: 				}
--
1085: 		trigger_if = {
1086: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
1087: 				situation:dynastic_cycle ?= {
1088: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1089: 				}
--
1086: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
1087: 				situation:dynastic_cycle ?= {
1088: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1089: 				}
1090: 			}
--
1228: 
1229: 	on_complete = {
1230: 		situation:dynastic_cycle = {
1231: 			if = {
1232: 				limit = {
--
1589: 		if = {
1590: 			limit = {
1591: 				situation:dynastic_cycle ?= {
1592: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1593: 				}
--
1590: 			limit = {
1591: 				situation:dynastic_cycle ?= {
1592: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1593: 				}
1594: 			}
--
2216: 		trigger_if = {
2217: 			limit = { # When in a stable phase, we allow everyone with access to do this simultaneously
2218: 				situation:dynastic_cycle ?= {
2219: 					OR = {
2220: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
2218: 				situation:dynastic_cycle ?= {
2219: 					OR = {
2220: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2221: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2222: 					}
--
2219: 					OR = {
2220: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2221: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2222: 					}
2223: 				}
--
2436: 						if = {
2437: 							limit = {
2438: 								situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
2439: 							}
2440: 							add = 30
--
2958: 		trigger_if = {
2959: 			limit = { # When in a stable phase, we allow everyone with access to do this simultaneously
2960: 				situation:dynastic_cycle ?= {
2961: 					OR = {
2962: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
2960: 				situation:dynastic_cycle ?= {
2961: 					OR = {
2962: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2963: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2964: 					}
--
2961: 					OR = {
2962: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2963: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2964: 					}
2965: 				}
--
3080: 			custom_tooltip = minister_project_train_troops_modifier_tt
3081: 		}
3082: 		situation:dynastic_cycle = {
3083: 			if = {
3084: 				limit = {
--
3977: 		if = {
3978: 			limit = {
3979: 				situation:dynastic_cycle ?= {
3980: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3981: 				}
--
3978: 			limit = {
3979: 				situation:dynastic_cycle ?= {
3980: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3981: 				}
3982: 			}
--
4054: 		trigger_if = {
4055: 			limit = { # When in a stable phase, we allow everyone with access to do this simultaneously
4056: 				situation:dynastic_cycle ?= {
4057: 					OR = {
4058: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
4056: 				situation:dynastic_cycle ?= {
4057: 					OR = {
4058: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
4059: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
4060: 					}
--
4057: 					OR = {
4058: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
4059: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
4060: 					}
4061: 				}
--
4166: 			custom_tooltip = minister_project_conduct_census_modifier_tt
4167: 		}
4168: 		situation:dynastic_cycle = {
4169: 			if = {
4170: 				limit = {
--
4840: 		if = {
4841: 			limit = {
4842: 				top_participant_group:dynastic_cycle ?= {
4843: 					OR = {
4844: 						participant_group_type = advancement_movement
--
4917: 		trigger_if = {
4918: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
4919: 				situation:dynastic_cycle ?= {
4920: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
4921: 				}
--
4918: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
4919: 				situation:dynastic_cycle ?= {
4920: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
4921: 				}
4922: 			}
--
5059: 
5060: 	on_complete = {
5061: 		situation:dynastic_cycle = {
5062: 			if = {
5063: 				limit = {
--
5421: 		if = {
5422: 			limit = {
5423: 				situation:dynastic_cycle ?= {
5424: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5425: 				}
--
5422: 			limit = {
5423: 				situation:dynastic_cycle ?= {
5424: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5425: 				}
5426: 			}
```

## common/activities/activity_types/imperial_examination.txt

Occurrences : 4.

```text
384: 			imperial_examination_focus_martial = {
385: 				is_valid = {
386: 					situation:dynastic_cycle ?= {
387: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
388: 					}
--
385: 				is_valid = {
386: 					situation:dynastic_cycle ?= {
387: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
388: 					}
389: 				}
--
447: 			imperial_examination_focus_stewardship = {
448: 				is_valid = {
449: 					situation:dynastic_cycle ?= {
450: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
451: 					}
--
448: 				is_valid = {
449: 					situation:dynastic_cycle ?= {
450: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
451: 					}
452: 				}
```

## common/activities/activity_types/debate.txt

Occurrences : 22.

```text
4: 		government_has_flag = government_has_merit
5: 		any_character_situation = {
6: 			situation_type = dynastic_cycle
7: 		}
8: 		title:h_china.holder ?= { 
--
22: 		is_available_adult = yes
23: 		any_character_situation = {
24: 			situation_type = dynastic_cycle
25: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
26: 		}
--
23: 		any_character_situation = {
24: 			situation_type = dynastic_cycle
25: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
26: 		}
27: 		# You are part of the Undecided Movement
--
27: 		# You are part of the Undecided Movement
28: 		NOT = {
29: 			top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
30: 		}
31: 	}
--
84: 		triggered_desc = {
85: 			trigger = {
86: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
87: 			}
88: 			desc = activity_debate_province_desc_leader_capital_desc
--
259: 			OR = {
260: 				this = scope:host.capital_province
261: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
262: 				scope:host = {
263: 					any_liege_or_above = {
--
280: 			limit = {
281: 				scope:special_option = flag:debate_type_leadership
282: 				exists = scope:host.top_participant_group:dynastic_cycle
283: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
284: 			}
--
281: 				scope:special_option = flag:debate_type_leadership
282: 				exists = scope:host.top_participant_group:dynastic_cycle
283: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
284: 			}
285: 			add = 5
--
306: 					min = 50
307: 				}
308: 				# tgp_dynastic_cycle_events.0050
309: 				if = {
310: 					limit = {
--
420: 						is_any_movement_leader = no
421: 					}
422: 					top_participant_group:dynastic_cycle.var:movement_leader = { is_available = yes }
423: 				}
424: 				ai_will_do = {
--
427: 					if = {
428: 						limit = {
429: 							var:movement_power >= top_participant_group:dynastic_cycle.var:movement_leader.var:movement_power
430: 						}
431: 						add = 50
--
486: 					custom_tooltip = {
487: 						text = is_already_the_favored_movement
488: 						exists = top_participant_group:dynastic_cycle
489: 						situation:dynastic_cycle ?= {
490: 							any_participant_group = {
--
487: 						text = is_already_the_favored_movement
488: 						exists = top_participant_group:dynastic_cycle
489: 						situation:dynastic_cycle ?= {
490: 							any_participant_group = {
491: 								exists = var:movement_favored
--
713: 									this = scope:activity.var:debate_contender
714: 									this = scope:activity.var:challenged_movement_leader
715: 									top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
716: 								}
717: 							}
--
762: 		is_available_adult = yes
763: 		any_character_situation = {
764: 			situation_type = dynastic_cycle
765: 		}
766: 		top_participant_group:dynastic_cycle ?= {
--
764: 			situation_type = dynastic_cycle
765: 		}
766: 		top_participant_group:dynastic_cycle ?= {
767: 			NOR = {
768: 				participant_group_type = hegemon_ruler
--
824: 
825: 			select_character = {
826: 				top_participant_group:dynastic_cycle.var:movement_leader = {
827: 					save_scope_as = character
828: 				}
--
865: 					}
866: 					NOT = {
867: 						top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
868: 					}
869: 				}
--
985: 								scope:activity.special_guest:movement_leader ?= this
986: 							}
987: 							top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
988: 						}
989: 					}
--
995: 								scope:activity.special_guest:movement_leader ?= this
996: 							}
997: 							top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
998: 						}
999: 						add_to_list = characters
--
1183: 							location = scope:activity.activity_location
1184: 							NOT = {
1185: 								top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
1186: 							}
1187: 						}
--
1191: 							scope:host.location = scope:activity.activity_location
1192: 							NOT = {
1193: 								top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
1194: 							}
1195: 						}
```

## common/game_concepts/tgp_game_concepts.txt

Occurrences : 19.

```text
383: ###################################
384: 
385: dynastic_cycle = {
386: 	alias = { dynastic_cycle_possessive }
387: 	parent = situation
--
384: 
385: dynastic_cycle = {
386: 	alias = { dynastic_cycle_possessive }
387: 	parent = situation
388: 	requires_dlc_flag = all_under_heaven
--
388: 	requires_dlc_flag = all_under_heaven
389: }
390: situation_dynastic_cycle_phase = {
391: 	alias = { situation_dynastic_cycle_phases dynastic_cycle_era_short dynastic_cycle_eras_short }
392: 	parent = dynastic_cycle
--
389: }
390: situation_dynastic_cycle_phase = {
391: 	alias = { situation_dynastic_cycle_phases dynastic_cycle_era_short dynastic_cycle_eras_short }
392: 	parent = dynastic_cycle
393: 	requires_dlc_flag = all_under_heaven
--
390: situation_dynastic_cycle_phase = {
391: 	alias = { situation_dynastic_cycle_phases dynastic_cycle_era_short dynastic_cycle_eras_short }
392: 	parent = dynastic_cycle
393: 	requires_dlc_flag = all_under_heaven
394: }
--
394: }
395: 
396: dynastic_cycle_era_type = {
397: 	alias = { dynastic_cycle_era_types }
398: 	parent = dynastic_cycle
--
395: 
396: dynastic_cycle_era_type = {
397: 	alias = { dynastic_cycle_era_types }
398: 	parent = dynastic_cycle
399: 	requires_dlc_flag = all_under_heaven
--
396: dynastic_cycle_era_type = {
397: 	alias = { dynastic_cycle_era_types }
398: 	parent = dynastic_cycle
399: 	requires_dlc_flag = all_under_heaven
400: }
--
400: }
401: 
402: dynastic_cycle_era_type_stable = {
403: 	parent = dynastic_cycle
404: 	requires_dlc_flag = all_under_heaven
--
401: 
402: dynastic_cycle_era_type_stable = {
403: 	parent = dynastic_cycle
404: 	requires_dlc_flag = all_under_heaven
405: }
--
404: 	requires_dlc_flag = all_under_heaven
405: }
406: dynastic_cycle_era_type_unstable = {
407: 	parent = dynastic_cycle
408: 	requires_dlc_flag = all_under_heaven
--
405: }
406: dynastic_cycle_era_type_unstable = {
407: 	parent = dynastic_cycle
408: 	requires_dlc_flag = all_under_heaven
409: }
--
408: 	requires_dlc_flag = all_under_heaven
409: }
410: dynastic_cycle_era_type_chaotic = {
411: 	parent = dynastic_cycle
412: 	requires_dlc_flag = all_under_heaven
--
409: }
410: dynastic_cycle_era_type_chaotic = {
411: 	parent = dynastic_cycle
412: 	requires_dlc_flag = all_under_heaven
413: }
--
412: 	requires_dlc_flag = all_under_heaven
413: }
414: dynastic_cycle_catalyst = {
415: 	parent = situation_catalyst
416: 	alias = { dynastic_cycle_catalysts dynastic_cycle_catalyst_possessive dynastic_cycle_catalysts_possessive }
--
414: dynastic_cycle_catalyst = {
415: 	parent = situation_catalyst
416: 	alias = { dynastic_cycle_catalysts dynastic_cycle_catalyst_possessive dynastic_cycle_catalysts_possessive }
417: 	requires_dlc_flag = all_under_heaven
418: }
--
453: 
454: favored_movement = {
455: 	texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
456: 	parent = movement
457: 	requires_dlc_flag = all_under_heaven
--
462: 
463: favored_era = {
464: 	texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
465: 	parent = dynastic_cycle_era_short
466: 	requires_dlc_flag = all_under_heaven
--
463: favored_era = {
464: 	texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
465: 	parent = dynastic_cycle_era_short
466: 	requires_dlc_flag = all_under_heaven
467: 	alias = {
```

## common/landed_titles/02_china.txt

Occurrences : 7.

```text
4: @never_primary_score = -1000
5: 
6: h_china = {
7: 	color = { 230 180 10 }
8: 
--
13: 	can_create = {
14: 		custom_tooltip = {
15: 			text = dynastic_cycle.tt.forbid_title_creation
16: 			NOT = { exists = situation:dynastic_cycle }
17: 		}
--
14: 		custom_tooltip = {
15: 			text = dynastic_cycle.tt.forbid_title_creation
16: 			NOT = { exists = situation:dynastic_cycle }
17: 		}
18: 	}
--
19: 	can_create_on_partition = {
20: 		custom_tooltip = {
21: 			text = dynastic_cycle.tt.forbid_title_creation
22: 			NOT = { exists = situation:dynastic_cycle }
23: 		}
--
20: 		custom_tooltip = {
21: 			text = dynastic_cycle.tt.forbid_title_creation
22: 			NOT = { exists = situation:dynastic_cycle }
23: 		}
24: 	}
--
25: 	can_destroy = {
26: 		custom_tooltip = {
27: 			text = dynastic_cycle.tt.forbid_title_destruction
28: 			NOT = { exists = situation:dynastic_cycle }
29: 		}
--
26: 		custom_tooltip = {
27: 			text = dynastic_cycle.tt.forbid_title_destruction
28: 			NOT = { exists = situation:dynastic_cycle }
29: 		}
30: 	}
```

## common/script_values/tgp_values.txt

Occurrences : 12.

```text
44: 
45: # Imperial Grace loss values depending on phase
46: imperial_grace_loss_situation_dynastic_cycle_phase_stability = -1
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
--
45: # Imperial Grace loss values depending on phase
46: imperial_grace_loss_situation_dynastic_cycle_phase_stability = -1
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
--
46: imperial_grace_loss_situation_dynastic_cycle_phase_stability = -1
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
--
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
51: imperial_grace_loss_situation_dynastic_cycle_phase_chaos = -5
--
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
51: imperial_grace_loss_situation_dynastic_cycle_phase_chaos = -5
52: 
--
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
51: imperial_grace_loss_situation_dynastic_cycle_phase_chaos = -5
52: 
53: # This value is used for the ai_expected_level param for mandate_legitimacy, but can also be used directly without a vassal scope
--
53: # This value is used for the ai_expected_level param for mandate_legitimacy, but can also be used directly without a vassal scope
54: # It's set to max, unless Cycle is in Stability Era, then it is lower by 2 for the first 50 years and lower by 1 for another 50 years
55: dynastic_cycle_legitimacy_expectation = {
56: 	value = 7 #max
57: 	if = {
--
57: 	if = {
58: 		limit = {
59: 			situation:dynastic_cycle ?= {
60: 				OR = {
61: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
59: 			situation:dynastic_cycle ?= {
60: 				OR = {
61: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
62: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
63: 				}
--
60: 				OR = {
61: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
62: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
63: 				}
64: 				has_variable = stability_phase_start_date
--
67: 		if = {
68: 			limit = {
69: 				situation:dynastic_cycle = {
70: 					var:stability_phase_start_date <= {
71: 						value = current_date
--
78: 		if = {
79: 			limit = {
80: 				situation:dynastic_cycle = {
81: 					var:stability_phase_start_date <= {
82: 						value = current_date
```

## common/script_values/tgp_natural_disaster_values.txt

Occurrences : 9.

```text
117: 		if = {
118: 			limit = {
119: 				situation:dynastic_cycle ?= {
120: 					OR = {
121: 						situation_current_phase = situation_dynastic_cycle_phase_instability
--
119: 				situation:dynastic_cycle ?= {
120: 					OR = {
121: 						situation_current_phase = situation_dynastic_cycle_phase_instability
122: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
123: 					}
--
120: 					OR = {
121: 						situation_current_phase = situation_dynastic_cycle_phase_instability
122: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
123: 					}
124: 				}
--
134: 		limit = { 
135: 			title:h_china.holder ?= this 
136: 			situation:dynastic_cycle ?= {
137: 				OR = {
138: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
136: 			situation:dynastic_cycle ?= {
137: 				OR = {
138: 					situation_current_phase = situation_dynastic_cycle_phase_instability
139: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
140: 				}
--
137: 				OR = {
138: 					situation_current_phase = situation_dynastic_cycle_phase_instability
139: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
140: 				}
141: 			}
--
150: 		limit = { 
151: 			title:h_china.holder ?= this 
152: 			situation:dynastic_cycle ?= {
153: 				OR = {
154: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
152: 			situation:dynastic_cycle ?= {
153: 				OR = {
154: 					situation_current_phase = situation_dynastic_cycle_phase_instability
155: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
156: 				}
--
153: 				OR = {
154: 					situation_current_phase = situation_dynastic_cycle_phase_instability
155: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
156: 				}
157: 			}
```

## common/legitimacy/00_legitimacy.txt

Occurrences : 5.

```text
519: 	}
520: 
521: 	# must be equal to the dynastic_cycle_legitimacy_expectation script value and not dependent on vassal scopes
522: 	ai_expected_level = dynastic_cycle_legitimacy_expectation
523: 
--
520: 
521: 	# must be equal to the dynastic_cycle_legitimacy_expectation script value and not dependent on vassal scopes
522: 	ai_expected_level = dynastic_cycle_legitimacy_expectation
523: 
524: 	below_expectations_opinion = default_legitimacy_opinion_penalty
--
531: 		threshold = legitimacy_level_1
532: 		on_level_entered = {
533: 			situation:dynastic_cycle ?= {
534: 				if = {
535: 					limit = {
--
534: 				if = {
535: 					limit = {
536: 						situation_top_has_catalyst = catalyst_hegemon_lost_mandate_of_heaven
537: 						months_from_game_start > 0 # We check this to avoid potentially triggering this immediately on game start
538: 					}
--
537: 						months_from_game_start > 0 # We check this to avoid potentially triggering this immediately on game start
538: 					}
539: 					trigger_situation_catalyst = catalyst_hegemon_lost_mandate_of_heaven
540: 				}
541: 			}
```

## common/important_actions/tgp_actions.txt

Occurrences : 9.

```text
792: 				trigger_if = {
793: 					limit = {
794: 						exists = top_participant_group:dynastic_cycle
795: 					}
796: 					top_participant_group:dynastic_cycle ?= {
--
794: 						exists = top_participant_group:dynastic_cycle
795: 					}
796: 					top_participant_group:dynastic_cycle ?= {
797: 						any_situation_group_participant = {
798: 							root = {
--
820: 			if = {
821: 				limit = {
822: 					exists = top_participant_group:dynastic_cycle
823: 				}
824: 				top_participant_group:dynastic_cycle = {
--
822: 					exists = top_participant_group:dynastic_cycle
823: 				}
824: 				top_participant_group:dynastic_cycle = {
825: 					ordered_situation_group_participant = {
826: 						order_by = merit
--
880: 						type = disciple
881: 					}
882: 					top_participant_group:dynastic_cycle ?= {
883: 						exists = var:movement_leader
884: 					}
--
890: 				add_to_list = characters
891: 			}
892: 			top_participant_group:dynastic_cycle ?= {
893: 				var:movement_leader ?= {
894: 					add_to_list = characters
--
1224: 		if = {
1225: 			limit = {
1226: 				can_execute_decision = situation_dynastic_cycle_choose_movement_decision
1227: 				top_participant_group:dynastic_cycle ?= {
1228: 					participant_group_type = undecided_movement
--
1225: 			limit = {
1226: 				can_execute_decision = situation_dynastic_cycle_choose_movement_decision
1227: 				top_participant_group:dynastic_cycle ?= {
1228: 					participant_group_type = undecided_movement
1229: 				}
--
1237: 
1238: 	effect = {
1239: 		decision:situation_dynastic_cycle_choose_movement_decision = { open_view_data = decision_detail }
1240: 	}
1241: }
```

