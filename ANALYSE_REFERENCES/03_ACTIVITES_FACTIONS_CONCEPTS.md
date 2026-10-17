# REFERENCES VANILLA PARTAGEES — ACTIVITES, FACTIONS, VALEURS ET CONCEPTS

Liste des appels au cycle dans les mécanismes partagés. Cette documentation ne doit pas être installée dans `game/`.

## game/common/activities/activity_types/debate.txt

Références : 22. SHA : `bd39c71f0e68540df09dc9497d173e90466b4d17`.

Ligne 6 :
```
4: 		government_has_flag = government_has_merit
5: 		any_character_situation = {
6: 			situation_type = dynastic_cycle
7: 		}
8: 		title:h_china.holder ?= { 
```

Ligne 24 :
```
22: 		is_available_adult = yes
23: 		any_character_situation = {
24: 			situation_type = dynastic_cycle
25: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
26: 		}
```

Ligne 25 :
```
23: 		any_character_situation = {
24: 			situation_type = dynastic_cycle
25: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
26: 		}
27: 		# You are part of the Undecided Movement
```

Ligne 29 :
```
27: 		# You are part of the Undecided Movement
28: 		NOT = {
29: 			top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
30: 		}
31: 	}
```

Ligne 86 :
```
84: 		triggered_desc = {
85: 			trigger = {
86: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
87: 			}
88: 			desc = activity_debate_province_desc_leader_capital_desc
```

Ligne 261 :
```
259: 			OR = {
260: 				this = scope:host.capital_province
261: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
262: 				scope:host = {
263: 					any_liege_or_above = {
```

Ligne 282 :
```
280: 			limit = {
281: 				scope:special_option = flag:debate_type_leadership
282: 				exists = scope:host.top_participant_group:dynastic_cycle
283: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
284: 			}
```

Ligne 283 :
```
281: 				scope:special_option = flag:debate_type_leadership
282: 				exists = scope:host.top_participant_group:dynastic_cycle
283: 				this = scope:host.top_participant_group:dynastic_cycle.var:movement_leader.capital_province
284: 			}
285: 			add = 5
```

Ligne 308 :
```
306: 					min = 50
307: 				}
308: 				# tgp_dynastic_cycle_events.0050
309: 				if = {
310: 					limit = {
```

Ligne 422 :
```
420: 						is_any_movement_leader = no
421: 					}
422: 					top_participant_group:dynastic_cycle.var:movement_leader = { is_available = yes }
423: 				}
424: 				ai_will_do = {
```

Ligne 429 :
```
427: 					if = {
428: 						limit = {
429: 							var:movement_power >= top_participant_group:dynastic_cycle.var:movement_leader.var:movement_power
430: 						}
431: 						add = 50
```

Ligne 488 :
```
486: 					custom_tooltip = {
487: 						text = is_already_the_favored_movement
488: 						exists = top_participant_group:dynastic_cycle
489: 						situation:dynastic_cycle ?= {
490: 							any_participant_group = {
```

Ligne 489 :
```
487: 						text = is_already_the_favored_movement
488: 						exists = top_participant_group:dynastic_cycle
489: 						situation:dynastic_cycle ?= {
490: 							any_participant_group = {
491: 								exists = var:movement_favored
```

Ligne 715 :
```
713: 									this = scope:activity.var:debate_contender
714: 									this = scope:activity.var:challenged_movement_leader
715: 									top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
716: 								}
717: 							}
```

Ligne 764 :
```
762: 		is_available_adult = yes
763: 		any_character_situation = {
764: 			situation_type = dynastic_cycle
765: 		}
766: 		top_participant_group:dynastic_cycle ?= {
```

Ligne 766 :
```
764: 			situation_type = dynastic_cycle
765: 		}
766: 		top_participant_group:dynastic_cycle ?= {
767: 			NOR = {
768: 				participant_group_type = hegemon_ruler
```

Ligne 826 :
```
824: 
825: 			select_character = {
826: 				top_participant_group:dynastic_cycle.var:movement_leader = {
827: 					save_scope_as = character
828: 				}
```

Ligne 867 :
```
865: 					}
866: 					NOT = {
867: 						top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
868: 					}
869: 				}
```

Ligne 987 :
```
985: 								scope:activity.special_guest:movement_leader ?= this
986: 							}
987: 							top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
988: 						}
989: 					}
```

Ligne 997 :
```
995: 								scope:activity.special_guest:movement_leader ?= this
996: 							}
997: 							top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
998: 						}
999: 						add_to_list = characters
```

Ligne 1185 :
```
1183: 							location = scope:activity.activity_location
1184: 							NOT = {
1185: 								top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
1186: 							}
1187: 						}
```

Ligne 1193 :
```
1191: 							scope:host.location = scope:activity.activity_location
1192: 							NOT = {
1193: 								top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
1194: 							}
1195: 						}
```

## game/common/activities/activity_types/imperial_examination.txt

Références : 4. SHA : `50a12652a5e6c69e161e55672fd37edee2a0a2c0`.

Ligne 386 :
```
384: 			imperial_examination_focus_martial = {
385: 				is_valid = {
386: 					situation:dynastic_cycle ?= {
387: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
388: 					}
```

Ligne 387 :
```
385: 				is_valid = {
386: 					situation:dynastic_cycle ?= {
387: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
388: 					}
389: 				}
```

Ligne 449 :
```
447: 			imperial_examination_focus_stewardship = {
448: 				is_valid = {
449: 					situation:dynastic_cycle ?= {
450: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
451: 					}
```

Ligne 450 :
```
448: 				is_valid = {
449: 					situation:dynastic_cycle ?= {
450: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
451: 					}
452: 				}
```

## game/common/scripted_effects/tgp_debate_scripted_effects.txt

Références : 27. SHA : `ec95eb8b9e988a0876ea2600e62f9eb1a5024f1e`.

Ligne 14 :
```
12:         }
13:         #Save current empowered movement.
14:         situation:dynastic_cycle ?= {
15:             random_participant_group = {
16:                 limit = { exists = var:movement_favored }
```

Ligne 34 :
```
32:                 scope:activity = {
33:                     any_attending_character = {
34:                         top_participant_group:dynastic_cycle ?= scope:current_empowered_movement
35:                     }                    
36:                 }
```

Ligne 43 :
```
41:                     check_range_bounds = no
42:                     limit = {
43:                         top_participant_group:dynastic_cycle ?= scope:current_empowered_movement
44:                     }
45:                     save_scope_as = challenged_movement_leader
```

Ligne 54 :
```
52:                     any_attending_character = {
53:                         NOR = {
54:                             top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
55:                             top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
56:                         }
```

Ligne 55 :
```
53:                         NOR = {
54:                             top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
55:                             top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
56:                         }
57:                     }
```

Ligne 66 :
```
64:                     limit = {
65:                         NOR = {
66:                             top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
67:                             top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
68:                         }
```

Ligne 67 :
```
65:                         NOR = {
66:                             top_participant_group:dynastic_cycle ?= { participant_group_type = undecided_movement }
67:                             top_participant_group:dynastic_cycle ?= scope:host.top_participant_group:dynastic_cycle
68:                         }
69:                     }
```

Ligne 233 :
```
231:         limit = {
232:             has_activity_intent = debate_increase_movement_power_intent
233:             exists = top_participant_group:dynastic_cycle
234:         }
235:         top_participant_group:dynastic_cycle ?= { 
```

Ligne 235 :
```
233:             exists = top_participant_group:dynastic_cycle
234:         }
235:         top_participant_group:dynastic_cycle ?= { 
236:             save_scope_as = my_movement
237:         }
```

Ligne 356 :
```
354:                 }
355:             }
356:             root.top_participant_group:dynastic_cycle ?= {
357:                 # Make favored movement
358:                 save_scope_as = my_movement
```

Ligne 372 :
```
370:                         if = {
371:                             limit = {
372:                                 situation:dynastic_cycle = {
373:                                     situation_top_has_catalyst = catalyst_movement_gained_power_pro_hegemon
374:                                 }
```

Ligne 373 :
```
371:                             limit = {
372:                                 situation:dynastic_cycle = {
373:                                     situation_top_has_catalyst = catalyst_movement_gained_power_pro_hegemon
374:                                 }
375:                             }
```

Ligne 376 :
```
374:                                 }
375:                             }
376:                             situation:dynastic_cycle = {
377:                             	trigger_situation_catalyst = catalyst_movement_gained_power_pro_hegemon
378:                             }
```

Ligne 377 :
```
375:                             }
376:                             situation:dynastic_cycle = {
377:                             	trigger_situation_catalyst = catalyst_movement_gained_power_pro_hegemon
378:                             }
379:                         }
```

Ligne 384 :
```
382:                         if = {
383:                             limit = {
384:                                 situation:dynastic_cycle = {
385:                                     situation_top_has_catalyst = catalyst_movement_gained_power_advancement
386:                                 }
```

Ligne 385 :
```
383:                             limit = {
384:                                 situation:dynastic_cycle = {
385:                                     situation_top_has_catalyst = catalyst_movement_gained_power_advancement
386:                                 }
387:                             }
```

Ligne 388 :
```
386:                                 }
387:                             }
388:                             situation:dynastic_cycle = {
389:                             	trigger_situation_catalyst = catalyst_movement_gained_power_advancement
390:                             }                            
```

Ligne 389 :
```
387:                             }
388:                             situation:dynastic_cycle = {
389:                             	trigger_situation_catalyst = catalyst_movement_gained_power_advancement
390:                             }                            
391:                         }
```

Ligne 396 :
```
394:                         if = {
395:                             limit = {
396:                                 situation:dynastic_cycle = {
397:                                     situation_top_has_catalyst = catalyst_movement_gained_power_expansion
398:                                 }
```

Ligne 397 :
```
395:                             limit = {
396:                                 situation:dynastic_cycle = {
397:                                     situation_top_has_catalyst = catalyst_movement_gained_power_expansion
398:                                 }
399:                             }
```

Ligne 400 :
```
398:                                 }
399:                             }
400:                             situation:dynastic_cycle = {
401:                             	trigger_situation_catalyst = catalyst_movement_gained_power_expansion
402:                             }
```

Ligne 401 :
```
399:                             }
400:                             situation:dynastic_cycle = {
401:                             	trigger_situation_catalyst = catalyst_movement_gained_power_expansion
402:                             }
403:                         }
```

Ligne 408 :
```
406:                         if = {
407:                             limit = {
408:                                 situation:dynastic_cycle = {
409:                                     situation_top_has_catalyst = catalyst_movement_gained_power_conservative
410:                                 }
```

Ligne 409 :
```
407:                             limit = {
408:                                 situation:dynastic_cycle = {
409:                                     situation_top_has_catalyst = catalyst_movement_gained_power_conservative
410:                                 }
411:                             }
```

Ligne 412 :
```
410:                                 }
411:                             }
412:                             situation:dynastic_cycle = {
413:                             	trigger_situation_catalyst = catalyst_movement_gained_power_conservative
414:                             }
```

Ligne 413 :
```
411:                             }
412:                             situation:dynastic_cycle = {
413:                             	trigger_situation_catalyst = catalyst_movement_gained_power_conservative
414:                             }
415:                         }
```

Ligne 599 :
```
597:             exists = var:tgp_debate_success_score
598:         }
599:         top_participant_group:dynastic_cycle ?= { 
600:             save_scope_as = my_movement
601:         }
```

## game/common/game_concepts/tgp_game_concepts.txt

Références : 19. SHA : `9aae969c974f998974d5c38f87b4d9ccc5f5ca0d`.

Ligne 385 :
```
383: ###################################
384: 
385: dynastic_cycle = {
386: 	alias = { dynastic_cycle_possessive }
387: 	parent = situation
```

Ligne 386 :
```
384: 
385: dynastic_cycle = {
386: 	alias = { dynastic_cycle_possessive }
387: 	parent = situation
388: 	requires_dlc_flag = all_under_heaven
```

Ligne 390 :
```
388: 	requires_dlc_flag = all_under_heaven
389: }
390: situation_dynastic_cycle_phase = {
391: 	alias = { situation_dynastic_cycle_phases dynastic_cycle_era_short dynastic_cycle_eras_short }
392: 	parent = dynastic_cycle
```

Ligne 391 :
```
389: }
390: situation_dynastic_cycle_phase = {
391: 	alias = { situation_dynastic_cycle_phases dynastic_cycle_era_short dynastic_cycle_eras_short }
392: 	parent = dynastic_cycle
393: 	requires_dlc_flag = all_under_heaven
```

Ligne 392 :
```
390: situation_dynastic_cycle_phase = {
391: 	alias = { situation_dynastic_cycle_phases dynastic_cycle_era_short dynastic_cycle_eras_short }
392: 	parent = dynastic_cycle
393: 	requires_dlc_flag = all_under_heaven
394: }
```

Ligne 396 :
```
394: }
395: 
396: dynastic_cycle_era_type = {
397: 	alias = { dynastic_cycle_era_types }
398: 	parent = dynastic_cycle
```

Ligne 397 :
```
395: 
396: dynastic_cycle_era_type = {
397: 	alias = { dynastic_cycle_era_types }
398: 	parent = dynastic_cycle
399: 	requires_dlc_flag = all_under_heaven
```

Ligne 398 :
```
396: dynastic_cycle_era_type = {
397: 	alias = { dynastic_cycle_era_types }
398: 	parent = dynastic_cycle
399: 	requires_dlc_flag = all_under_heaven
400: }
```

Ligne 402 :
```
400: }
401: 
402: dynastic_cycle_era_type_stable = {
403: 	parent = dynastic_cycle
404: 	requires_dlc_flag = all_under_heaven
```

Ligne 403 :
```
401: 
402: dynastic_cycle_era_type_stable = {
403: 	parent = dynastic_cycle
404: 	requires_dlc_flag = all_under_heaven
405: }
```

Ligne 406 :
```
404: 	requires_dlc_flag = all_under_heaven
405: }
406: dynastic_cycle_era_type_unstable = {
407: 	parent = dynastic_cycle
408: 	requires_dlc_flag = all_under_heaven
```

Ligne 407 :
```
405: }
406: dynastic_cycle_era_type_unstable = {
407: 	parent = dynastic_cycle
408: 	requires_dlc_flag = all_under_heaven
409: }
```

Ligne 410 :
```
408: 	requires_dlc_flag = all_under_heaven
409: }
410: dynastic_cycle_era_type_chaotic = {
411: 	parent = dynastic_cycle
412: 	requires_dlc_flag = all_under_heaven
```

Ligne 411 :
```
409: }
410: dynastic_cycle_era_type_chaotic = {
411: 	parent = dynastic_cycle
412: 	requires_dlc_flag = all_under_heaven
413: }
```

Ligne 414 :
```
412: 	requires_dlc_flag = all_under_heaven
413: }
414: dynastic_cycle_catalyst = {
415: 	parent = situation_catalyst
416: 	alias = { dynastic_cycle_catalysts dynastic_cycle_catalyst_possessive dynastic_cycle_catalysts_possessive }
```

Ligne 416 :
```
414: dynastic_cycle_catalyst = {
415: 	parent = situation_catalyst
416: 	alias = { dynastic_cycle_catalysts dynastic_cycle_catalyst_possessive dynastic_cycle_catalysts_possessive }
417: 	requires_dlc_flag = all_under_heaven
418: }
```

Ligne 455 :
```
453: 
454: favored_movement = {
455: 	texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
456: 	parent = movement
457: 	requires_dlc_flag = all_under_heaven
```

Ligne 464 :
```
462: 
463: favored_era = {
464: 	texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
465: 	parent = dynastic_cycle_era_short
466: 	requires_dlc_flag = all_under_heaven
```

Ligne 465 :
```
463: favored_era = {
464: 	texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
465: 	parent = dynastic_cycle_era_short
466: 	requires_dlc_flag = all_under_heaven
467: 	alias = {
```

## game/common/event_themes/00_event_themes.txt

Références : 26. SHA : `7b5d610971b8c2e113a49bed04a247283e166b82`.

Ligne 2725 :
```
2723: 
2724: ### CHINA ###
2725: dynastic_cycle = {
2726: 	icon = {
2727: 		trigger = {
```

Ligne 2728 :
```
2726: 	icon = {
2727: 		trigger = {
2728: 			situation:dynastic_cycle = {
2729: 				situation_current_phase = situation_dynastic_cycle_phase_instability
2730: 			}
```

Ligne 2729 :
```
2727: 		trigger = {
2728: 			situation:dynastic_cycle = {
2729: 				situation_current_phase = situation_dynastic_cycle_phase_instability
2730: 			}
2731: 		}
```

Ligne 2732 :
```
2730: 			}
2731: 		}
2732: 		reference = "gfx/interface/icons/event_types/type_dynastic_cycle_instability.dds"
2733: 	}
2734: 	icon = {
```

Ligne 2736 :
```
2734: 	icon = {
2735: 		trigger = {
2736: 			situation:dynastic_cycle = {
2737: 				situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2738: 			}
```

Ligne 2737 :
```
2735: 		trigger = {
2736: 			situation:dynastic_cycle = {
2737: 				situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2738: 			}
2739: 		}
```

Ligne 2740 :
```
2738: 			}
2739: 		}
2740: 		reference = "gfx/interface/icons/event_types/type_dynastic_cycle_conquest.dds"
2741: 	}
2742: 	icon = {
```

Ligne 2744 :
```
2742: 	icon = {
2743: 		trigger = {
2744: 			situation:dynastic_cycle = {
2745: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2746: 			}
```

Ligne 2745 :
```
2743: 		trigger = {
2744: 			situation:dynastic_cycle = {
2745: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2746: 			}
2747: 		}
```

Ligne 2748 :
```
2746: 			}
2747: 		}
2748: 		reference = "gfx/interface/icons/event_types/type_dynastic_cycle_expansion.dds"
2749: 	}
2750: 	icon = {
```

Ligne 2752 :
```
2750: 	icon = {
2751: 		trigger = {
2752: 			situation:dynastic_cycle = {
2753: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2754: 			}
```

Ligne 2753 :
```
2751: 		trigger = {
2752: 			situation:dynastic_cycle = {
2753: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2754: 			}
2755: 		}
```

Ligne 2756 :
```
2754: 			}
2755: 		}
2756: 		reference = "gfx/interface/icons/event_types/type_dynastic_cycle_advancement.dds"
2757: 	}
2758: 	icon = {
```

Ligne 2760 :
```
2758: 	icon = {
2759: 		trigger = {
2760: 			situation:dynastic_cycle = {
2761: 				situation_current_phase = situation_dynastic_cycle_phase_chaos
2762: 			}
```

Ligne 2761 :
```
2759: 		trigger = {
2760: 			situation:dynastic_cycle = {
2761: 				situation_current_phase = situation_dynastic_cycle_phase_chaos
2762: 			}
2763: 		}
```

Ligne 2764 :
```
2762: 			}
2763: 		}
2764: 		reference = "gfx/interface/icons/event_types/type_dynastic_cycle_chaos.dds"
2765: 	}
2766: 	header_background = {
```

Ligne 2768 :
```
2766: 	header_background = {
2767: 		trigger = {
2768: 			situation:dynastic_cycle = {
2769: 				situation_current_phase = situation_dynastic_cycle_phase_instability
2770: 			}
```

Ligne 2769 :
```
2767: 		trigger = {
2768: 			situation:dynastic_cycle = {
2769: 				situation_current_phase = situation_dynastic_cycle_phase_instability
2770: 			}
2771: 		}
```

Ligne 2776 :
```
2774: 	header_background = {
2775: 		trigger = {
2776: 			situation:dynastic_cycle = {
2777: 				situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2778: 			}
```

Ligne 2777 :
```
2775: 		trigger = {
2776: 			situation:dynastic_cycle = {
2777: 				situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2778: 			}
2779: 		}
```

Ligne 2784 :
```
2782: 	header_background = {
2783: 		trigger = {
2784: 			situation:dynastic_cycle = {
2785: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2786: 			}
```

Ligne 2785 :
```
2783: 		trigger = {
2784: 			situation:dynastic_cycle = {
2785: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2786: 			}
2787: 		}
```

Ligne 2792 :
```
2790: 	header_background = {
2791: 		trigger = {
2792: 			situation:dynastic_cycle = {
2793: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2794: 			}
```

Ligne 2793 :
```
2791: 		trigger = {
2792: 			situation:dynastic_cycle = {
2793: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2794: 			}
2795: 		}
```

Ligne 2800 :
```
2798: 	header_background = {
2799: 		trigger = {
2800: 			situation:dynastic_cycle = {
2801: 				situation_current_phase = situation_dynastic_cycle_phase_chaos
2802: 			}
```

Ligne 2801 :
```
2799: 		trigger = {
2800: 			situation:dynastic_cycle = {
2801: 				situation_current_phase = situation_dynastic_cycle_phase_chaos
2802: 			}
2803: 		}
```

## game/common/customizable_localization/10_tgp_custom_loc.txt

Références : 16. SHA : `c4173c0a23381e455641820e50af8ad25eb7e0cf`.

Ligne 106 :
```
104: 			overlord = {
105: 				any_character_situation = {
106: 					situation_current_phase = situation_dynastic_cycle_phase_stability		
107: 				}
108: 			}
```

Ligne 116 :
```
114: 			overlord = {
115: 				any_character_situation = {
116: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion		
117: 				}
118: 			}
```

Ligne 126 :
```
124: 			overlord = {
125: 				any_character_situation = {
126: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement		
127: 				}
128: 			}
```

Ligne 136 :
```
134: 			overlord = {
135: 				any_character_situation = {
136: 					situation_current_phase = situation_dynastic_cycle_phase_instability		
137: 				}
138: 			}
```

Ligne 146 :
```
144: 			overlord = {
145: 				any_character_situation = {
146: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest		
147: 				}
148: 			}
```

Ligne 156 :
```
154: 			overlord = {
155: 				any_character_situation = {
156: 					situation_current_phase = situation_dynastic_cycle_phase_chaos		
157: 				}
158: 			}
```

Ligne 196 :
```
194: 	text = {
195: 		trigger = {
196: 			top_participant_group:dynastic_cycle ?= {
197: 				OR = {
198: 					participant_group_type = hegemon_ruler
```

Ligne 207 :
```
205: 	text = {
206: 		trigger = {
207:             top_participant_group:dynastic_cycle ?= {
208:                 participant_group_type = expansion_movement
209:             }
```

Ligne 215 :
```
213: 	text = {
214: 		trigger = {
215: 			top_participant_group:dynastic_cycle ?= {
216: 				participant_group_type = advancement_movement
217: 			}
```

Ligne 223 :
```
221: 	text = {
222: 		trigger = {
223: 			top_participant_group:dynastic_cycle ?= {
224: 				participant_group_type = conservative_movement
225: 			}
```

Ligne 231 :
```
229: 	text = {
230: 		trigger = {
231: 			top_participant_group:dynastic_cycle ?= {
232: 				participant_group_type = undecided_movement
233: 			}
```

Ligne 249 :
```
247: 	text = {
248: 		trigger = {
249: 			top_participant_group:dynastic_cycle ?= {
250: 				OR = {
251: 					participant_group_type = hegemon_ruler
```

Ligne 260 :
```
258: 	text = {
259: 		trigger = {
260: 			top_participant_group:dynastic_cycle ?= {
261: 				participant_group_type = expansion_movement
262: 			}
```

Ligne 268 :
```
266: 	text = {
267: 		trigger = {
268: 			top_participant_group:dynastic_cycle ?= {
269: 				participant_group_type = advancement_movement
270: 			}
```

Ligne 276 :
```
274: 	text = {
275: 		trigger = {
276: 			top_participant_group:dynastic_cycle ?= {
277: 				participant_group_type = conservative_movement
278: 			}
```

Ligne 284 :
```
282: 	text = {
283: 		trigger = {
284: 			top_participant_group:dynastic_cycle ?= {
285: 				participant_group_type = undecided_movement
286: 			}
```

## game/common/scripted_rules/00_rules.txt

Références : 12. SHA : `c69f80e7ee7142903b475799f6da47da6d72a83e`.

Ligne 1465 :
```
1463: 			is_house_head = yes
1464: 		}
1465: 		top_participant_group:dynastic_cycle ?= {
1466: 			has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1467: 		}
```

Ligne 1466 :
```
1464: 		}
1465: 		top_participant_group:dynastic_cycle ?= {
1466: 			has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1467: 		}
1468: 		AND = {
```

Ligne 1470 :
```
1468: 		AND = {
1469: 			has_title = title:e_minister_of_works
1470: 			top_liege.top_participant_group:dynastic_cycle ?= {
1471: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1472: 			}
```

Ligne 1471 :
```
1469: 			has_title = title:e_minister_of_works
1470: 			top_liege.top_participant_group:dynastic_cycle ?= {
1471: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1472: 			}
1473: 		}
```

Ligne 1476 :
```
1474: 		AND = {
1475: 			has_title = title:e_minister_of_rites
1476: 			top_liege.top_participant_group:dynastic_cycle ?= {
1477: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1478: 			}
```

Ligne 1477 :
```
1475: 			has_title = title:e_minister_of_rites
1476: 			top_liege.top_participant_group:dynastic_cycle ?= {
1477: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1478: 			}
1479: 		}
```

Ligne 1490 :
```
1488: 			is_house_head = yes
1489: 		}
1490: 		top_participant_group:dynastic_cycle ?= {
1491: 			has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1492: 		}
```

Ligne 1491 :
```
1489: 		}
1490: 		top_participant_group:dynastic_cycle ?= {
1491: 			has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1492: 		}
1493: 		AND = {
```

Ligne 1495 :
```
1493: 		AND = {
1494: 			has_title = title:e_minister_of_works
1495: 			top_liege.top_participant_group:dynastic_cycle ?= {
1496: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1497: 			}
```

Ligne 1496 :
```
1494: 			has_title = title:e_minister_of_works
1495: 			top_liege.top_participant_group:dynastic_cycle ?= {
1496: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1497: 			}
1498: 		}
```

Ligne 1501 :
```
1499: 		AND = {
1500: 			has_title = title:e_minister_of_rites
1501: 			top_liege.top_participant_group:dynastic_cycle ?= {
1502: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1503: 			}
```

Ligne 1502 :
```
1500: 			has_title = title:e_minister_of_rites
1501: 			top_liege.top_participant_group:dynastic_cycle ?= {
1502: 				has_participant_group_parameter = dynastic_cycle_can_build_in_tributaries
1503: 			}
1504: 		}
```

## game/common/factions/00_peasant_faction_new.txt

Références : 8. SHA : `da8cc82676c1f1ab350b4001825aa408bfaab0e6`.

Ligne 28 :
```
26: 		modifier = {
27: 			faction_target = {
28: 				top_participant_group:dynastic_cycle ?= {
29: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
30: 				}
```

Ligne 29 :
```
27: 			faction_target = {
28: 				top_participant_group:dynastic_cycle ?= {
29: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
30: 				}
31: 			}
```

Ligne 340 :
```
338: 		# TGP Dynastic Cycle in Instability phase
339: 		modifier = {
340: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
341: 			add = 25
342: 			county_opinion < 0
```

Ligne 344 :
```
342: 			county_opinion < 0
343: 			scope:faction.faction_target = {
344: 				top_participant_group:dynastic_cycle ?= {
345: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
346: 				}
```

Ligne 345 :
```
343: 			scope:faction.faction_target = {
344: 				top_participant_group:dynastic_cycle ?= {
345: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
346: 				}
347: 			}
```

Ligne 519 :
```
517: 		# TGP Dynastic Cycle in Instability phase
518: 		modifier = {
519: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
520: 			add = 25
521: 			county_opinion < 0
```

Ligne 523 :
```
521: 			county_opinion < 0
522: 			scope:target = {
523: 				top_participant_group:dynastic_cycle ?= {
524: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
525: 				}
```

Ligne 524 :
```
522: 			scope:target = {
523: 				top_participant_group:dynastic_cycle ?= {
524: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
525: 				}
526: 			}
```

## game/common/factions/00_populist_faction.txt

Références : 17. SHA : `b54e591fa051c43698af0291dc2c3340409984b0`.

Ligne 34 :
```
32: 		modifier = {
33: 			faction_target = {
34: 				top_participant_group:dynastic_cycle ?= {
35: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
36: 				}
```

Ligne 35 :
```
33: 			faction_target = {
34: 				top_participant_group:dynastic_cycle ?= {
35: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
36: 				}
37: 			}
```

Ligne 391 :
```
389: 		# TGP Dynastic Cycle in Instability phase
390: 		modifier = {
391: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
392: 			add = 25
393: 			scope:target = {
```

Ligne 394 :
```
392: 			add = 25
393: 			scope:target = {
394: 				top_participant_group:dynastic_cycle ?= {
395: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
396: 				}
```

Ligne 395 :
```
393: 			scope:target = {
394: 				top_participant_group:dynastic_cycle ?= {
395: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
396: 				}
397: 			}
```

Ligne 598 :
```
596: 		# TGP Dynastic Cycle in Instability phase
597: 		modifier = {
598: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
599: 			add = 25
600: 			scope:faction.faction_target = {
```

Ligne 601 :
```
599: 			add = 25
600: 			scope:faction.faction_target = {
601: 				top_participant_group:dynastic_cycle ?= {
602: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
603: 				}
```

Ligne 602 :
```
600: 			scope:faction.faction_target = {
601: 				top_participant_group:dynastic_cycle ?= {
602: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
603: 				}
604: 			}
```

Ligne 845 :
```
843: 		# TGP Dynastic Cycle in Instability phase
844: 		modifier = {
845: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
846: 			add = 25
847: 			scope:faction.faction_target = {
```

Ligne 848 :
```
846: 			add = 25
847: 			scope:faction.faction_target = {
848: 				top_participant_group:dynastic_cycle ?= {
849: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
850: 				}
```

Ligne 849 :
```
847: 			scope:faction.faction_target = {
848: 				top_participant_group:dynastic_cycle ?= {
849: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
850: 				}
851: 			}
```

Ligne 1171 :
```
1169: 		modifier = {
1170: 			faction_target = {
1171: 				top_participant_group:dynastic_cycle ?= {
1172: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1173: 				}
```

Ligne 1172 :
```
1170: 			faction_target = {
1171: 				top_participant_group:dynastic_cycle ?= {
1172: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1173: 				}
1174: 			}
```

Ligne 1212 :
```
1210: 		# Only in Dynastic Cycle
1211: 		any_county_situation = {
1212: 			situation_type = dynastic_cycle
1213: 		}
1214: 		# Counties can only be in a faction against the top liege in their realm (who is inherently independent).
```

Ligne 1437 :
```
1435: 		# TGP Dynastic Cycle in Instability phase
1436: 		modifier = {
1437: 			desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
1438: 			add = 25
1439: 			county_opinion < 0
```

Ligne 1441 :
```
1439: 			county_opinion < 0
1440: 			scope:faction.faction_target = {
1441: 				top_participant_group:dynastic_cycle ?= {
1442: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1443: 				}
```

Ligne 1442 :
```
1440: 			scope:faction.faction_target = {
1441: 				top_participant_group:dynastic_cycle ?= {
1442: 					has_participant_group_parameter = dynastic_cycle_more_peasant_factions
1443: 				}
1444: 			}
```

## game/common/legitimacy/00_legitimacy.txt

Références : 5. SHA : `69bbd1b4ac702bfc23c4c0f67015d66e86e10801`.

Ligne 521 :
```
519: 	}
520: 
521: 	# must be equal to the dynastic_cycle_legitimacy_expectation script value and not dependent on vassal scopes
522: 	ai_expected_level = dynastic_cycle_legitimacy_expectation
523: 
```

Ligne 522 :
```
520: 
521: 	# must be equal to the dynastic_cycle_legitimacy_expectation script value and not dependent on vassal scopes
522: 	ai_expected_level = dynastic_cycle_legitimacy_expectation
523: 
524: 	below_expectations_opinion = default_legitimacy_opinion_penalty
```

Ligne 533 :
```
531: 		threshold = legitimacy_level_1
532: 		on_level_entered = {
533: 			situation:dynastic_cycle ?= {
534: 				if = {
535: 					limit = {
```

Ligne 536 :
```
534: 				if = {
535: 					limit = {
536: 						situation_top_has_catalyst = catalyst_hegemon_lost_mandate_of_heaven
537: 						months_from_game_start > 0 # We check this to avoid potentially triggering this immediately on game start
538: 					}
```

Ligne 539 :
```
537: 						months_from_game_start > 0 # We check this to avoid potentially triggering this immediately on game start
538: 					}
539: 					trigger_situation_catalyst = catalyst_hegemon_lost_mandate_of_heaven
540: 				}
541: 			}
```

## game/common/important_actions/tgp_actions.txt

Références : 9. SHA : `272dcd1a0391ec5876644dbbebfb1dedc76c28db`.

Ligne 794 :
```
792: 				trigger_if = {
793: 					limit = {
794: 						exists = top_participant_group:dynastic_cycle
795: 					}
796: 					top_participant_group:dynastic_cycle ?= {
```

Ligne 796 :
```
794: 						exists = top_participant_group:dynastic_cycle
795: 					}
796: 					top_participant_group:dynastic_cycle ?= {
797: 						any_situation_group_participant = {
798: 							root = {
```

Ligne 822 :
```
820: 			if = {
821: 				limit = {
822: 					exists = top_participant_group:dynastic_cycle
823: 				}
824: 				top_participant_group:dynastic_cycle = {
```

Ligne 824 :
```
822: 					exists = top_participant_group:dynastic_cycle
823: 				}
824: 				top_participant_group:dynastic_cycle = {
825: 					ordered_situation_group_participant = {
826: 						order_by = merit
```

Ligne 882 :
```
880: 						type = disciple
881: 					}
882: 					top_participant_group:dynastic_cycle ?= {
883: 						exists = var:movement_leader
884: 					}
```

Ligne 892 :
```
890: 				add_to_list = characters
891: 			}
892: 			top_participant_group:dynastic_cycle ?= {
893: 				var:movement_leader ?= {
894: 					add_to_list = characters
```

Ligne 1226 :
```
1224: 		if = {
1225: 			limit = {
1226: 				can_execute_decision = situation_dynastic_cycle_choose_movement_decision
1227: 				top_participant_group:dynastic_cycle ?= {
1228: 					participant_group_type = undecided_movement
```

Ligne 1227 :
```
1225: 			limit = {
1226: 				can_execute_decision = situation_dynastic_cycle_choose_movement_decision
1227: 				top_participant_group:dynastic_cycle ?= {
1228: 					participant_group_type = undecided_movement
1229: 				}
```

Ligne 1239 :
```
1237: 
1238: 	effect = {
1239: 		decision:situation_dynastic_cycle_choose_movement_decision = { open_view_data = decision_detail }
1240: 	}
1241: }
```

## game/common/decision_group_types/00_decision_group_types.txt

Références : 1. SHA : `a8184d121da5da3d255af318ca3cd3a3164dc75d`.

Ligne 11 :
```
9: }
10: 
11: dynastic_cycle = {
12: 	sort_order = 300
13: 	gui_tags = { big_button }	
```

