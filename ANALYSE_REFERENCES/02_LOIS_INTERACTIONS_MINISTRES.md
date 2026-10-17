# REFERENCES VANILLA PARTAGEES — LOIS, INTERACTIONS, TITRES ET MINISTRES

Documentation uniquement. Les blocs de ces fichiers sont partagés avec les mécaniques génériques de CK3 : ne pas écraser ces fichiers pour isoler le cycle dynastique.

## game/common/character_interactions/10_tgp_interactions.txt

Références : 90. SHA : `f61674e0a9e03e34e6af74bb1b2904b90e5b0893`.

Ligne 14 :
```
12: 	target_filter = recipient_domain_titles
13: 
14: 	filter_tags = { dynastic_cycle }
15: 
16: 	can_be_picked_title = {
```

Ligne 378 :
```
376: 				has_title = title:h_china
377: 			}
378: 			situation:dynastic_cycle ?= {
379: 				any_participant_group = {
380: 					participant_group_type = conservative_movement
```

Ligne 428 :
```
426: 	notification_text = celestial_demand_treasury_interaction_recipient_desc
427: 	common_interaction = no
428: 	filter_tags = { celestial_ministry dynastic_cycle }
429: 
430: 	interface_priority = 61
```

Ligne 825 :
```
823: 	common_interaction = no
824: 
825: 	filter_tags = { dynastic_cycle }
826: 
827: 	interface_priority = 62
```

Ligne 967 :
```
965: 				if = {
966: 					limit = {
967: 						top_participant_group:dynastic_cycle ?= {
968: 							has_participant_group_parameter = dynastic_cycle_send_treasury_for_merit
969: 						}
```

Ligne 968 :
```
966: 					limit = {
967: 						top_participant_group:dynastic_cycle ?= {
968: 							has_participant_group_parameter = dynastic_cycle_send_treasury_for_merit
969: 						}
970: 					}
```

Ligne 1008 :
```
1006: 	ai_targets = {
1007: 		ai_recipients = situation_participant_group
1008: 		parameter = dynastic_cycle
1009: 		max = 20
1010: 	}
```

Ligne 1125 :
```
1123: 	notification_text = request_mentoring_interaction_notification
1124: 
1125: 	filter_tags = { dynastic_cycle celestial_ministry }
1126: 
1127: 	is_available = {
```

Ligne 2256 :
```
2254: 	ai_targets = {
2255: 		ai_recipients = situation_participant_group
2256: 		parameter = dynastic_cycle
2257: 		max = 10
2258: 	}
```

Ligne 2837 :
```
2835: 	interface_priority = 60
2836: 
2837: 	filter_tags = { dynastic_cycle }
2838: 
2839: 	is_shown = {
```

Ligne 2843 :
```
2841: 		scope:recipient != scope:actor
2842: 		scope:recipient = {
2843: 			top_participant_group:dynastic_cycle ?= {
2844: 				NOT = { participant_group_type = other_rulers }
2845: 			}
```

Ligne 2853 :
```
2851: 			limit = {
2852: 				scope:actor = {
2853: 					top_participant_group:dynastic_cycle ?= { participant_group_type = hegemon_ruler }
2854: 				}
2855: 			}
```

Ligne 2856 :
```
2854: 				}
2855: 			}
2856: 			situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement ?= {
2857: 				NOT = { participant_group_has_character = scope:recipient }
2858: 			}
```

Ligne 2860 :
```
2858: 			}
2859: 		}
2860: 		situation:dynastic_cycle.situation_participant_group:undecided_movement ?= {
2861: 			NOT = { participant_group_has_character = scope:actor }
2862: 		}
```

Ligne 2865 :
```
2863: 		scope:actor = {
2864: 			# You are not part of the same movement
2865: 			top_participant_group:dynastic_cycle = {
2866: 				NOT = { participant_group_has_character = scope:recipient }
2867: 			}
```

Ligne 3063 :
```
3061: 				scope:actor = title:h_china.holder
3062: 			}
3063: 			situation:dynastic_cycle ?= {
3064: 				situation_participant_group:pro_hegemon_movement = {
3065: 					save_scope_as = actors_movement
```

Ligne 3071 :
```
3069: 		# other characters ask to join their movement
3070: 		else = {
3071: 			situation:dynastic_cycle ?= {
3072: 				random_participant_group = {
3073: 					limit = {
```

Ligne 3346 :
```
3344: 					}
3345: 					switch = {
3346: 						trigger = top_participant_group:dynastic_cycle
3347: 						situation:dynastic_cycle.situation_participant_group:advancement_movement = {
3348: 							tgp_activate_catalyst_against_hegemon_effect = {
```

Ligne 3347 :
```
3345: 					switch = {
3346: 						trigger = top_participant_group:dynastic_cycle
3347: 						situation:dynastic_cycle.situation_participant_group:advancement_movement = {
3348: 							tgp_activate_catalyst_against_hegemon_effect = {
3349: 								HEGEMON = scope:actor.top_liege
```

Ligne 3350 :
```
3348: 							tgp_activate_catalyst_against_hegemon_effect = {
3349: 								HEGEMON = scope:actor.top_liege
3350: 								CATALYST = catalyst_movement_gained_power_advancement
3351: 							}
3352: 						}
```

Ligne 3353 :
```
3351: 							}
3352: 						}
3353: 						situation:dynastic_cycle.situation_participant_group:expansion_movement = {
3354: 							tgp_activate_catalyst_against_hegemon_effect = {
3355: 								HEGEMON = scope:actor.top_liege
```

Ligne 3356 :
```
3354: 							tgp_activate_catalyst_against_hegemon_effect = {
3355: 								HEGEMON = scope:actor.top_liege
3356: 								CATALYST = catalyst_movement_gained_power_expansion
3357: 							}
3358: 						}
```

Ligne 3359 :
```
3357: 							}
3358: 						}
3359: 						situation:dynastic_cycle.situation_participant_group:conservative_movement = {
3360: 							tgp_activate_catalyst_against_hegemon_effect = {
3361: 								HEGEMON = scope:actor.top_liege
```

Ligne 3362 :
```
3360: 							tgp_activate_catalyst_against_hegemon_effect = {
3361: 								HEGEMON = scope:actor.top_liege
3362: 								CATALYST = catalyst_movement_gained_power_conservative
3363: 							}
3364: 						}
```

Ligne 3365 :
```
3363: 							}
3364: 						}
3365: 						situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
3366: 							situation:dynastic_cycle ?= {
3367: 								if = {
```

Ligne 3366 :
```
3364: 						}
3365: 						situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
3366: 							situation:dynastic_cycle ?= {
3367: 								if = {
3368: 									limit = {
```

Ligne 3370 :
```
3368: 									limit = {
3369: 										OR = {
3370: 											situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3371: 											situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
3372: 										}
```

Ligne 3371 :
```
3369: 										OR = {
3370: 											situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3371: 											situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
3372: 										}
3373: 										situation_top_sub_region = {
```

Ligne 3374 :
```
3372: 										}
3373: 										situation_top_sub_region = {
3374: 											phase_takeover_points:situation_dynastic_cycle_phase_instability >= 0
3375: 										}
3376: 									}
```

Ligne 3380 :
```
3378: 										tgp_activate_catalyst_against_hegemon_effect = {
3379: 											HEGEMON = scope:actor.top_liege
3380: 											CATALYST = catalyst_movement_gained_power_pro_hegemon
3381: 										}
3382: 									}
```

Ligne 3387 :
```
3385: 									limit = {
3386: 										OR = {
3387: 											situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3388: 											situation_current_phase = situation_dynastic_cycle_phase_instability
3389: 										}
```

Ligne 3388 :
```
3386: 										OR = {
3387: 											situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3388: 											situation_current_phase = situation_dynastic_cycle_phase_instability
3389: 										}
3390: 										situation_top_sub_region = {
```

Ligne 3391 :
```
3389: 										}
3390: 										situation_top_sub_region = {
3391: 											phase_takeover_points:situation_dynastic_cycle_phase_chaos >= 0
3392: 										}
3393: 									}
```

Ligne 3397 :
```
3395: 										tgp_activate_catalyst_against_hegemon_effect = {
3396: 											HEGEMON = scope:actor.top_liege
3397: 											CATALYST = catalyst_movement_gained_power_pro_hegemon
3398: 										}
3399: 									}
```

Ligne 3409 :
```
3407: 		scope:recipient = {
3408: 			hidden_effect = {
3409: 				recalculate_participant_group = situation:dynastic_cycle
3410: 				every_relation = {
3411: 					type = disciple
```

Ligne 3412 :
```
3410: 				every_relation = {
3411: 					type = disciple
3412: 					recalculate_participant_group = situation:dynastic_cycle
3413: 				}
3414: 			}
```

Ligne 3454 :
```
3452: 
3453: 	is_available = {
3454: 		top_participant_group:dynastic_cycle ?= {
3455: 			NOR = {
3456: 				participant_group_type = other_rulers
```

Ligne 3477 :
```
3475: 					is_dominant_family = yes
3476: 				}
3477: 				situation:dynastic_cycle ?= { # Is a movement leader
3478: 					any_participant_group = {
3479: 						var:movement_leader ?= root
```

Ligne 3489 :
```
3487: 		base = 25
3488: 		modifier = { # Prefer getting people from movements with higher power!
3489: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3490: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3491: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
```

Ligne 3490 :
```
3488: 		modifier = { # Prefer getting people from movements with higher power!
3489: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3490: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3491: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3492: 			add = 75
```

Ligne 3491 :
```
3489: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3490: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3491: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3492: 			add = 75
3493: 		}
```

Ligne 3496 :
```
3494: 		modifier = {
3495: 			scope:recipient = {
3496: 				top_participant_group:dynastic_cycle ?= {
3497: 					participant_group_type = undecided_movement
3498: 				}
```

Ligne 3505 :
```
3503: 			scope:actor = {
3504: 				this != top_liege
3505: 				top_participant_group:dynastic_cycle ?= {
3506: 					participant_group_type = pro_hegemon_movement
3507: 				}
```

Ligne 3509 :
```
3507: 				}
3508: 			}
3509: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power <= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3510: 			add = -65
3511: 		}
```

Ligne 3547 :
```
3545: 		# is a movement leader
3546: 		modifier = {
3547: 			situation:dynastic_cycle ?= {
3548: 				any_participant_group = {
3549: 					var:movement_leader ?= scope:recipient
```

Ligne 4591 :
```
4589: 						}
4590: 						hidden_effect = {
4591: 							situation:dynastic_cycle ?= {
4592: 								if = {
4593: 									limit = {
```

Ligne 4594 :
```
4592: 								if = {
4593: 									limit = {
4594: 										situation_top_has_catalyst = catalyst_ministers_abused_privilege_of_office
4595: 									}
4596: 									trigger_situation_catalyst = {
```

Ligne 4597 :
```
4595: 									}
4596: 									trigger_situation_catalyst = {
4597: 										catalyst = catalyst_ministers_abused_privilege_of_office
4598: 										character = scope:actor
4599: 									}
```

Ligne 5030 :
```
5028: 			tgp_activate_catalyst_against_hegemon_effect = {
5029: 				HEGEMON = scope:recipient
5030: 				CATALYST = catalyst_hegemon_influenced_by_interaction
5031: 			}
5032: 		}
```

Ligne 5316 :
```
5314: 	common_interaction = no
5315: 	desc = celestial_request_treasury_interaction_desc
5316: 	filter_tags = { celestial_ministry dynastic_cycle }
5317: 
5318: 	ai_min_reply_days = 4
```

Ligne 5535 :
```
5533: 			tgp_activate_catalyst_against_hegemon_effect = {
5534: 				HEGEMON = scope:recipient
5535: 				CATALYST = catalyst_hegemon_influenced_by_interaction
5536: 			}
5537: 		}
```

Ligne 5556 :
```
5554: 					target = scope:actor
5555: 				}
5556: 				situation:dynastic_cycle ?= {
5557: 					if = {
5558: 						limit = {
```

Ligne 5815 :
```
5813: 	desc = celestial_request_commander_interaction_desc
5814: 	notification_text = celestial_request_commander_interaction_notification
5815: 	filter_tags = { celestial_ministry dynastic_cycle }
5816: 
5817: 	ai_min_reply_days = 4
```

Ligne 6055 :
```
6053: 					AND = {
6054: 						title:h_china.holder.hegemon_favored_stability_phase_value < 0
6055: 						top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
6056: 					}
6057: 					AND = {
```

Ligne 6059 :
```
6057: 					AND = {
6058: 						title:h_china.holder.hegemon_favored_stability_phase_value >= 0
6059: 						top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
6060: 					}
6061: 				}
```

Ligne 6218 :
```
6216: 	desc = celestial_request_examination_support_interaction_desc
6217: 	notification_text = celestial_request_examination_support_interaction_notification
6218: 	filter_tags = { celestial_ministry dynastic_cycle }
6219: 
6220: 	ai_min_reply_days = 4
```

Ligne 6426 :
```
6424: 					AND = {
6425: 						title:h_china.holder.hegemon_favored_stability_phase_value < 0
6426: 						top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
6427: 					}
6428: 					AND = {
```

Ligne 6430 :
```
6428: 					AND = {
6429: 						title:h_china.holder.hegemon_favored_stability_phase_value >= 0
6430: 						top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
6431: 					}
6432: 				}
```

Ligne 6964 :
```
6962: 	common_interaction = no
6963: 	desc = set_favored_minister_interaction_desc
6964: 	filter_tags = { celestial_ministry dynastic_cycle }
6965: 
6966: 	#cooldown = { years = 5 }
```

Ligne 7074 :
```
7072: 		modifier = {
7073: 			add = 15
7074: 			situation:dynastic_cycle ?= {
7075: 				any_participant_group = {
7076: 					var:movement_leader ?= scope:recipient
```

Ligne 7101 :
```
7099: 	desc = celestial_movement_power_promote_interaction_desc
7100: 	common_interaction = no
7101: 	filter_tags = { dynastic_cycle }
7102: 
7103: 	interface_priority = 60
```

Ligne 7127 :
```
7125: 			exists = var:movement_power
7126: 		}
7127: 		situation:dynastic_cycle ?= {
7128: 			any_participant_group = {
7129: 				NOR = {
```

Ligne 7136 :
```
7134: 			}
7135: 		}
7136: 		situation:dynastic_cycle ?= {
7137: 			any_participant_group = {
7138: 				NOR = {
```

Ligne 7260 :
```
7258: 	ai_targets = {
7259: 		ai_recipients = situation_participant_group
7260: 		parameter = dynastic_cycle
7261: 		max = 10
7262: 	}
```

Ligne 7361 :
```
7359: 	desc = celestial_movement_power_slander_interaction_desc
7360: 	common_interaction = no
7361: 	filter_tags = { dynastic_cycle }
7362: 
7363: 	interface_priority = 60
```

Ligne 7389 :
```
7387: 			this != scope:actor
7388: 		}
7389: 		situation:dynastic_cycle ?= {
7390: 			any_participant_group = {
7391: 				NOR = {
```

Ligne 7398 :
```
7396: 			}
7397: 		}
7398: 		situation:dynastic_cycle ?= {
7399: 			any_participant_group = {
7400: 				NOR = {
```

Ligne 7721 :
```
7719: 		modifier = { # More likely to stop being a disciple if actor is a movement leader
7720: 			add = 20
7721: 			situation:dynastic_cycle ?= {
7722: 				any_participant_group = {
7723: 					var:movement_leader ?= scope:actor
```

Ligne 7731 :
```
7729: 			top_liege != scope:recipient.top_liege
7730: 			NAND = {
7731: 				any_character_situation = { situation_type = dynastic_cycle }
7732: 				situation:dynastic_cycle ?= {
7733: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
```

Ligne 7732 :
```
7730: 			NAND = {
7731: 				any_character_situation = { situation_type = dynastic_cycle }
7732: 				situation:dynastic_cycle ?= {
7733: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
7734: 				}
```

Ligne 7733 :
```
7731: 				any_character_situation = { situation_type = dynastic_cycle }
7732: 				situation:dynastic_cycle ?= {
7733: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
7734: 				}
7735: 			}
```

Ligne 7758 :
```
7756: 	}
7757: 	notification_text = tgp_interaction_event.0031.desc # Intentional
7758: 	filter_tags = { dynastic_cycle }
7759: 	custom_character_sort = { merit }
7760: 	cooldown = { years = 1 }
```

Ligne 7924 :
```
7922: 	ai_targets = {
7923: 		ai_recipients = situation_participant_group
7924: 		parameter = dynastic_cycle
7925: 		max = 20
7926: 	}
```

Ligne 8053 :
```
8051: 		modifier = { # More likely to pick elder if recipient is a movement leader
8052: 			add = 20
8053: 			situation:dynastic_cycle ?= {
8054: 				any_participant_group = {
8055: 					var:movement_leader ?= scope:recipient
```

Ligne 8209 :
```
8207: 				text = celestial_request_elders_support_interaction.unlocked_expansion
8208: 				OR = {
8209: 					situation:dynastic_cycle ?= {
8210: 						situation_participant_group:expansion_movement = {
8211: 							participant_group_has_character = scope:actor
```

Ligne 8241 :
```
8239: 				text = celestial_request_elders_support_interaction.unlocked_advancement
8240: 				OR = {
8241: 					situation:dynastic_cycle ?= {
8242: 						situation_participant_group:advancement_movement = {
8243: 							participant_group_has_character = scope:actor
```

Ligne 8291 :
```
8289: 				text = celestial_request_elders_support_interaction.unlocked_conservative
8290: 				OR = {
8291: 					situation:dynastic_cycle ?= {
8292: 						situation_participant_group:conservative_movement = {
8293: 							participant_group_has_character = scope:actor
```

Ligne 8693 :
```
8691: 	ai_targets = {
8692: 		ai_recipients = situation_participant_group
8693: 		parameter = dynastic_cycle
8694: 		max = 10
8695: 	}
```

Ligne 10803 :
```
10801: 	ai_targets = {
10802: 		ai_recipients = situation_participant_group
10803: 		parameter = dynastic_cycle
10804: 		max = 20
10805: 	}
```

Ligne 10846 :
```
10844: 							government_has_flag = government_is_celestial
10845: 						}
10846: 						situation:dynastic_cycle ?= {
10847: 							situation_current_phase = situation_dynastic_cycle_phase_chaos
10848: 						}
```

Ligne 10847 :
```
10845: 						}
10846: 						situation:dynastic_cycle ?= {
10847: 							situation_current_phase = situation_dynastic_cycle_phase_chaos
10848: 						}
10849: 					}
```

Ligne 10868 :
```
10866: 			trigger_if = {
10867: 				limit = {
10868: 					situation:dynastic_cycle ?= {
10869: 						situation_current_phase = situation_dynastic_cycle_phase_chaos
10870: 					}
```

Ligne 10869 :
```
10867: 				limit = {
10868: 					situation:dynastic_cycle ?= {
10869: 						situation_current_phase = situation_dynastic_cycle_phase_chaos
10870: 					}
10871: 					scope:actor = {
```

Ligne 10876 :
```
10874: 				}
10875: 				custom_tooltip = {
10876: 					text = is_part_of_dynastic_cycle
10877: 					any_character_situation = {
10878: 						situation_type = dynastic_cycle
```

Ligne 10878 :
```
10876: 					text = is_part_of_dynastic_cycle
10877: 					any_character_situation = {
10878: 						situation_type = dynastic_cycle
10879: 					}
10880: 				}
```

Ligne 11554 :
```
11552: 					if = {
11553: 						limit = {
11554: 							exists = top_participant_group:dynastic_cycle
11555: 							any_character_situation = {
11556: 								situation_type = dynastic_cycle
```

Ligne 11556 :
```
11554: 							exists = top_participant_group:dynastic_cycle
11555: 							any_character_situation = {
11556: 								situation_type = dynastic_cycle
11557: 							}
11558: 						}
```

Ligne 11559 :
```
11557: 							}
11558: 						}
11559: 						situation:dynastic_cycle ?= {
11560: 							if = {
11561: 								limit = {
```

Ligne 11768 :
```
11766: 			change_influence = major_influence_value
11767: 		}
11768: 		situation:dynastic_cycle ?= {
11769: 			if = {
11770: 				limit = {
```

Ligne 11898 :
```
11896: 	ai_targets = {
11897: 		ai_recipients = situation_participant_group
11898: 		parameter = dynastic_cycle
11899: 		max = 20
11900: 	}
```

## game/common/casus_belli_types/10_tgp_china_wars.txt

Références : 33. SHA : `a2861b2e95881f54736b819c62e2e7aac4f21613`.

Ligne 15 :
```
13: 			has_title = title:h_china
14: 		}
15: 		top_participant_group:dynastic_cycle ?= {
16: 			OR = {
17: 				AND = {
```

Ligne 18 :
```
16: 			OR = {
17: 				AND = {
18: 					has_participant_group_parameter = dynastic_cycle_vassal_internal_wars_allowed
19: 					root = {
20: 						NOT = {
```

Ligne 26 :
```
24: 				}
25: 				AND = {
26: 					has_participant_group_parameter = dynastic_cycle_vassal_seize_cb
27: 					root = {
28: 						OR = {
```

Ligne 342 :
```
340: 			has_title = title:e_minister_grand_marshal
341: 		}
342: 		situation:dynastic_cycle ?= {
343: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
344: 		}
```

Ligne 343 :
```
341: 		}
342: 		situation:dynastic_cycle ?= {
343: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
344: 		}
345: 	}
```

Ligne 348 :
```
346: 
347: 	allowed_for_character_display_regardless = {
348: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
349: 	}
350: 
```

Ligne 663 :
```
661: 			has_title = title:h_china
662: 		}
663: 		top_participant_group:dynastic_cycle ?= {
664: 			OR = {
665: 				AND = {
```

Ligne 666 :
```
664: 			OR = {
665: 				AND = {
666: 					has_participant_group_parameter = dynastic_cycle_vassal_internal_wars_allowed
667: 					root = {
668: 						NOT = {
```

Ligne 674 :
```
672: 				}
673: 				AND = {
674: 					has_participant_group_parameter = dynastic_cycle_vassal_seize_cb
675: 					root = {
676: 						OR = {
```

Ligne 1008 :
```
1006: 			has_title = title:e_minister_grand_marshal
1007: 		}
1008: 		situation:dynastic_cycle ?= {
1009: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
1010: 		}
```

Ligne 1009 :
```
1007: 		}
1008: 		situation:dynastic_cycle ?= {
1009: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
1010: 		}
1011: 	}
```

Ligne 1014 :
```
1012: 
1013: 	allowed_for_character_display_regardless = {
1014: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
1015: 	}
1016: 
```

Ligne 1379 :
```
1377: 	allowed_against_character_display_regardless = {
1378: 		custom_tooltip = {
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 1380 :
```
1378: 		custom_tooltip = {
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1382: 			}
```

Ligne 1381 :
```
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1382: 			}
1383: 		}
```

Ligne 1413 :
```
1411: 							}
1412: 						}
1413: 						desc = dynastic_cycle_hegemon_legitimacy_level_cost_desc
1414: 					}
1415: 				}
```

Ligne 1515 :
```
1513: 
1514: 		scope:attacker = {
1515: 			tgp_claim_mandate_of_heaven_effect = yes
1516: 			# Hand over the direct holding of the former Hegemon
1517: 			create_title_and_vassal_change = {
```

Ligne 1734 :
```
1732: 
1733: 	allowed_for_character = {
1734: 		situation:dynastic_cycle ?= {
1735: 			situation_current_phase = situation_dynastic_cycle_phase_chaos
1736: 		}
```

Ligne 1735 :
```
1733: 	allowed_for_character = {
1734: 		situation:dynastic_cycle ?= {
1735: 			situation_current_phase = situation_dynastic_cycle_phase_chaos
1736: 		}
1737: 		NAND = {
```

Ligne 1747 :
```
1745: 				is_ai = yes
1746: 				NOR = {
1747: 					exists = top_participant_group:dynastic_cycle
1748: 					any_owned_story = {
1749: 						story_type = story_take_mandate_of_heaven
```

Ligne 1749 :
```
1747: 					exists = top_participant_group:dynastic_cycle
1748: 					any_owned_story = {
1749: 						story_type = story_take_mandate_of_heaven
1750: 					}
1751: 				}
```

Ligne 1780 :
```
1778: 	}
1779: 	allowed_for_character_display_regardless = {
1780: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
1781: 		custom_tooltip = {
1782: 			text = has_gok_story_tt
```

Ligne 1792 :
```
1790: 	allowed_against_character = {
1791: 		#Must be within Dynastic Cycle
1792: 		exists = top_participant_group:dynastic_cycle
1793: 	}
1794: 
```

Ligne 1977 :
```
1975: 					NOT = {
1976: 						any_owned_story = {
1977: 							story_type = story_take_mandate_of_heaven
1978: 						}
1979: 					}
```

Ligne 1982 :
```
1980: 					is_ai = yes
1981: 				}
1982: 				create_story = story_take_mandate_of_heaven
1983: 			}
1984: 		}
```

Ligne 2150 :
```
2148: 
2149: 	allowed_for_character = {
2150: 		situation:dynastic_cycle ?= {
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
```

Ligne 2151 :
```
2149: 	allowed_for_character = {
2150: 		situation:dynastic_cycle ?= {
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
2153: 		top_participant_group:dynastic_cycle ?= {
```

Ligne 2153 :
```
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
2153: 		top_participant_group:dynastic_cycle ?= {
2154: 			participant_group_type = hegemon_ruler
2155: 		}
```

Ligne 2158 :
```
2156: 	}
2157: 	allowed_against_character = {
2158: 		exists = top_participant_group:dynastic_cycle
2159: 	}
2160: 
```

Ligne 2200 :
```
2198: 		OR = {
2199: 			scope:attacker = {
2200: 				top_participant_group:dynastic_cycle ?= {
2201: 					NOT = {
2202: 						participant_group_type = hegemon_ruler
```

Ligne 2228 :
```
2226: 				trigger = {
2227: 					scope:attacker = {
2228: 						top_participant_group:dynastic_cycle ?= {
2229: 							NOT = {
2230: 								participant_group_type = hegemon_ruler
```

Ligne 2517 :
```
2515: 		has_tgp_dlc_trigger = yes
2516: 		title:h_china.holder ?= root
2517: 		top_participant_group:dynastic_cycle ?= {
2518: 			has_participant_group_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
2519: 		}
```

Ligne 2518 :
```
2516: 		title:h_china.holder ?= root
2517: 		top_participant_group:dynastic_cycle ?= {
2518: 			has_participant_group_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
2519: 		}
2520: 	}
```

## game/common/character_interactions/00_tributary_interactions.txt

Références : 20. SHA : `c6b2cbfc9cc590738a35e7036f93d6718e76b897`.

Ligne 1508 :
```
1506: 					limit = {
1507: 						any_character_situation = {
1508: 							situation_type = dynastic_cycle
1509: 						}
1510: 					}
```

Ligne 1514 :
```
1512: 						root.subject_standing <= 0
1513: 						any_character_situation = {
1514: 							situation_type = dynastic_cycle
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 1516 :
```
1514: 							situation_type = dynastic_cycle
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
1517: 								situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1518: 							}
```

Ligne 1517 :
```
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
1517: 								situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1518: 							}
1519: 						}
```

Ligne 1618 :
```
1616: 			if = {
1617: 				limit = {
1618: 					top_participant_group:dynastic_cycle ?= {
1619: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1620: 					}
```

Ligne 1619 :
```
1617: 				limit = {
1618: 					top_participant_group:dynastic_cycle ?= {
1619: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1620: 					}
1621: 				}
```

Ligne 1809 :
```
1807: 			# TGP Dynastic Cycle in Instability phase
1808: 			modifier = {
1809: 				desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
1810: 				add = 25
1811: 				scope:recipient = {
```

Ligne 1812 :
```
1810: 				add = 25
1811: 				scope:recipient = {
1812: 					top_participant_group:dynastic_cycle ?= {
1813: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1814: 					}
```

Ligne 1813 :
```
1811: 				scope:recipient = {
1812: 					top_participant_group:dynastic_cycle ?= {
1813: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1814: 					}
1815: 				}
```

Ligne 2760 :
```
2758: 		modifier = {
2759: 			scope:actor = { highest_held_title_tier >= tier_hegemony }
2760: 			situation:dynastic_cycle ?= {
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 2762 :
```
2760: 			situation:dynastic_cycle ?= {
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2763: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2764: 				}
```

Ligne 2763 :
```
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2763: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2764: 				}
2765: 			}
```

Ligne 2773 :
```
2771: 			scope:actor = {
2772: 				highest_held_title_tier >= tier_hegemony
2773: 				legitimacy_level < dynastic_cycle_legitimacy_expectation
2774: 			}
2775: 			situation:dynastic_cycle ?= {
```

Ligne 2775 :
```
2773: 				legitimacy_level < dynastic_cycle_legitimacy_expectation
2774: 			}
2775: 			situation:dynastic_cycle ?= {
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 2777 :
```
2775: 			situation:dynastic_cycle ?= {
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2778: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2779: 				}
```

Ligne 2778 :
```
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2778: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2779: 				}
2780: 			}
```

Ligne 2787 :
```
2785: 			scope:actor = {
2786: 				highest_held_title_tier >= tier_hegemony
2787: 				legitimacy_level > dynastic_cycle_legitimacy_expectation
2788: 			}
2789: 			situation:dynastic_cycle ?= {
```

Ligne 2789 :
```
2787: 				legitimacy_level > dynastic_cycle_legitimacy_expectation
2788: 			}
2789: 			situation:dynastic_cycle ?= {
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 2791 :
```
2789: 			situation:dynastic_cycle ?= {
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2792: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2793: 				}
```

Ligne 2792 :
```
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2792: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2793: 				}
2794: 			}
```

## game/common/character_interactions/06_ep3_interactions.txt

Références : 23. SHA : `10fe290bd2eb935257d68e85967de2d56cd554f0`.

Ligne 1690 :
```
1688: 	common_interaction = no
1689: 	interface_priority = 175
1690: 	filter_tags = { admin_house_head celestial_ministry dynastic_cycle ceremonial_liege }
1691: 	highlighted_reason = tgp_interaction_minister_personnel_highlight_reason
1692: 
```

Ligne 2980 :
```
2978: 			tgp_activate_catalyst_against_hegemon_effect = {
2979: 				HEGEMON = scope:recipient
2980: 				CATALYST = catalyst_hegemon_influenced_by_interaction
2981: 			}
2982: 		}
```

Ligne 3610 :
```
3608: 			tgp_activate_catalyst_against_hegemon_effect = {
3609: 				HEGEMON = scope:recipient
3610: 				CATALYST = catalyst_hegemon_influenced_by_interaction
3611: 			}
3612: 			# If the minister's merit rank is too low, it will affect the dynastic cycle
```

Ligne 3623 :
```
3621: 				}
3622: 				show_as_tooltip = {
3623: 					situation:dynastic_cycle ?= {
3624: 						if = {
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
```

Ligne 3625 :
```
3623: 					situation:dynastic_cycle ?= {
3624: 						if = {
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
3626: 							trigger_situation_catalyst = {
3627: 								catalyst = catalyst_hegemon_appointing_low_merit_councillor
```

Ligne 3627 :
```
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
3626: 							trigger_situation_catalyst = {
3627: 								catalyst = catalyst_hegemon_appointing_low_merit_councillor
3628: 								character = scope:recipient
3629: 							}
```

Ligne 5707 :
```
5705: 			limit = {
5706: 				scope:actor = {
5707: 					exists = top_participant_group:dynastic_cycle
5708: 				}
5709: 			}
```

Ligne 5711 :
```
5709: 			}
5710: 			scope:actor = {
5711: 				top_participant_group:dynastic_cycle ?= {
5712: 					participant_group_type = advancement_movement
5713: 				}
```

Ligne 5909 :
```
5907: 			scope:actor = {
5908: 				any_character_situation = {
5909: 					situation_type = dynastic_cycle
5910: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5911: 				}
```

Ligne 5910 :
```
5908: 				any_character_situation = {
5909: 					situation_type = dynastic_cycle
5910: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5911: 				}
5912: 			}
```

Ligne 5981 :
```
5979: 			limit = {
5980: 				scope:actor = {
5981: 					exists = top_participant_group:dynastic_cycle
5982: 				}
5983: 			}
```

Ligne 5985 :
```
5983: 			}
5984: 			scope:actor = {
5985: 				top_participant_group:dynastic_cycle ?= {
5986: 					NOT = { participant_group_type = advancement_movement }
5987: 				}
```

Ligne 6169 :
```
6167: 			scope:actor = {
6168: 				any_character_situation = {
6169: 					situation_type = dynastic_cycle
6170: 					NOT = { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
6171: 				}
```

Ligne 6170 :
```
6168: 				any_character_situation = {
6169: 					situation_type = dynastic_cycle
6170: 					NOT = { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
6171: 				}
6172: 			}
```

Ligne 6709 :
```
6707: force_governor_removal_interaction = {
6708: 	category = interaction_category_succession
6709: 	filter_tags = { admin_governor dynastic_cycle }
6710: 	icon = icon_force_governor_removal
6711: 	desc = force_governor_removal_interaction_desc
```

Ligne 8040 :
```
8038: 	common_interaction = yes
8039: 
8040: 	filter_tags = { admin_liege celestial_ministry dynastic_cycle }
8041: 
8042: 	ai_maybe = yes
```

Ligne 8507 :
```
8505: 					tgp_activate_catalyst_against_hegemon_effect = {
8506: 						HEGEMON = scope:recipient
8507: 						CATALYST = catalyst_hegemon_influenced_by_interaction
8508: 					}
8509: 				}
```

Ligne 9423 :
```
9421: 			tgp_activate_catalyst_against_hegemon_effect = {
9422: 				HEGEMON = scope:recipient
9423: 				CATALYST = catalyst_hegemon_influenced_by_interaction
9424: 			}
9425: 		}
```

Ligne 9685 :
```
9683: 			tgp_activate_catalyst_against_hegemon_effect = {
9684: 				HEGEMON = scope:recipient
9685: 				CATALYST = catalyst_hegemon_influenced_by_interaction
9686: 			}
9687: 		}
```

Ligne 10127 :
```
10125: 			tgp_activate_catalyst_against_hegemon_effect = {
10126: 				HEGEMON = scope:recipient
10127: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10128: 			}
10129: 		}
```

Ligne 10291 :
```
10289: 			tgp_activate_catalyst_against_hegemon_effect = {
10290: 				HEGEMON = scope:recipient
10291: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10292: 			}
10293: 		}
```

Ligne 10723 :
```
10721: 			tgp_activate_catalyst_against_hegemon_effect = {
10722: 				HEGEMON = scope:recipient
10723: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10724: 			}
10725: 		}
```

Ligne 13578 :
```
13576: 			tgp_activate_catalyst_against_hegemon_effect = {
13577: 				HEGEMON = scope:recipient
13578: 				CATALYST = catalyst_hegemon_influenced_by_interaction
13579: 			}
13580: 		}
```

## game/common/character_interactions/00_grant_titles_interaction.txt

Références : 3. SHA : `1b2a8c72c2c3f60f34156cc8863c1e772c7bbf8d`.

Ligne 2456 :
```
2454: 			}
2455: 			show_as_tooltip = {
2456: 				situation:dynastic_cycle ?= {
2457: 					if = {
2458: 						limit = {
```

Ligne 2459 :
```
2457: 					if = {
2458: 						limit = {
2459: 							situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor
2460: 							title:h_china.holder = scope:puppet_or_actor
2461: 						}
```

Ligne 2463 :
```
2461: 						}
2462: 						trigger_situation_catalyst = {
2463: 							catalyst = catalyst_hegemon_appointing_low_merit_governor
2464: 							character =  scope:recipient
2465: 						}
```

## game/common/character_interactions/00_blackmail_interactions.txt

Références : 5. SHA : `0de26e4a7df6a500fcb127a11f6958c4b26e8f2e`.

Ligne 149 :
```
147: 				limit = {
148: 					has_title = title:e_minister_censor
149: 					top_participant_group:dynastic_cycle ?= {
150: 						NOT = { participant_group_type = other_rulers }
151: 					}
```

Ligne 153 :
```
151: 					}
152: 					scope:recipient = {
153: 						top_participant_group:dynastic_cycle ?= {
154: 							NOT = { participant_group_type = other_rulers }
155: 						}
```

Ligne 170 :
```
168: 					}
169: 				}
170: 				situation:dynastic_cycle = {
171: 					if = {
172: 						limit = {
```

Ligne 173 :
```
171: 					if = {
172: 						limit = {
173: 							situation_top_has_catalyst = catalyst_minister_blackmailed
174: 						}
175: 						trigger_situation_catalyst = {
```

Ligne 176 :
```
174: 						}
175: 						trigger_situation_catalyst = {
176: 							catalyst = catalyst_minister_blackmailed
177: 							character = scope:puppet_or_actor
178: 						}
```

## game/common/laws/00_realm_laws.txt

Références : 9. SHA : `92a99c13e001904e243cd7d768565126b4ec6b17`.

Ligne 2488 :
```
2486: 				this = title:h_china.holder
2487: 			}
2488: 			situation:dynastic_cycle ?= {
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 2490 :
```
2488: 			situation:dynastic_cycle ?= {
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2491: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2492: 				}
```

Ligne 2491 :
```
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2491: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2492: 				}
2493: 			}
```

Ligne 2946 :
```
2944: 				this = title:h_china.holder
2945: 			}
2946: 			situation:dynastic_cycle ?= {
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 2948 :
```
2946: 			situation:dynastic_cycle ?= {
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2949: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2950: 				}
```

Ligne 2949 :
```
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2949: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2950: 				}
2951: 			}
```

Ligne 3279 :
```
3277: 				this = title:h_china.holder
3278: 			}
3279: 			situation:dynastic_cycle ?= {
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 3281 :
```
3279: 			situation:dynastic_cycle ?= {
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
3282: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3283: 				}
```

Ligne 3282 :
```
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
3282: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3283: 				}
3284: 			}
```

## game/common/laws/02_admininistrative_laws.txt

Références : 15. SHA : `862ca2bddd9524379cfb2e273886016b89fb4d7d`.

Ligne 598 :
```
596: 				OR = { # AI should want this if warlike, or if in the expansion phase, regardless of personality
597: 					ai_has_warlike_personality = yes
598: 					situation:dynastic_cycle ?= {
599: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
600: 					}
```

Ligne 599 :
```
597: 					ai_has_warlike_personality = yes
598: 					situation:dynastic_cycle ?= {
599: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
600: 					}
601: 				}
```

Ligne 629 :
```
627: 				this = title:h_china.holder
628: 			}
629: 			situation:dynastic_cycle ?= {
630: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
631: 			}
```

Ligne 630 :
```
628: 			}
629: 			situation:dynastic_cycle ?= {
630: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
631: 			}
632: 		}
```

Ligne 1371 :
```
1369: 		exists = title:e_minister_chancellor.holder
1370: 		OR = {
1371: 			situation:dynastic_cycle ?= {
1372: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1373: 			}
```

Ligne 1372 :
```
1370: 		OR = {
1371: 			situation:dynastic_cycle ?= {
1372: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1373: 			}
1374: 			is_movement_in_power = {
```

Ligne 1410 :
```
1408: 		if = {
1409: 			limit = {
1410: 				situation:dynastic_cycle ?= {
1411: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1412: 				}
```

Ligne 1411 :
```
1409: 			limit = {
1410: 				situation:dynastic_cycle ?= {
1411: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1412: 				}
1413: 			}
```

Ligne 1448 :
```
1446: 	can_pass = {
1447: 		exists = title:e_minister_grand_marshal.holder
1448: 		situation:dynastic_cycle ?= {
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
```

Ligne 1450 :
```
1448: 		situation:dynastic_cycle ?= {
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1451: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1452: 			}
```

Ligne 1451 :
```
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1451: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1452: 			}
1453: 			situation_participant_group:expansion_movement ?= {
```

Ligne 1547 :
```
1545: 	can_pass = {
1546: 		exists = title:e_minister_censor.holder
1547: 		situation:dynastic_cycle ?= {
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 1549 :
```
1547: 		situation:dynastic_cycle ?= {
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1550: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1551: 			}
```

Ligne 1550 :
```
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1550: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1551: 			}
1552: 		}
```

Ligne 1553 :
```
1551: 			}
1552: 		}
1553: 		situation:dynastic_cycle.situation_participant_group:conservative_movement ?= {
1554: 			save_temporary_scope_as = my_movement
1555: 
```

## game/common/scripted_triggers/00_secret_type_triggers.txt

Références : 2. SHA : `91f7790af8efcf9cb7735ca9efe7cb51779e3b61`.

Ligne 474 :
```
472: }
473: 
474: secret_siphoned_treasury_is_valid_trigger = {
475: 	# Both of y'all must still have treasuries
476: 	$OWNER$ = { has_treasury = yes }
```

Ligne 481 :
```
479: 
480: # criminal only if the target is your liege or the Hegemon
481: secret_siphoned_treasury_is_criminal_trigger = {
482: 	$TARGET$ = {
483: 		OR = {
```

## game/common/succession_appointment/celestial_minister.txt

Références : 9. SHA : `94512db65bd47eefdc6a08f57e0d178b36ac853b`.

Ligne 98 :
```
96: 				limit = {
97: 					top_liege = { has_title = title:h_china }
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
```

Ligne 99 :
```
97: 					top_liege = { has_title = title:h_china }
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
101: 					}
```

Ligne 100 :
```
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
101: 					}
102: 				}
```

Ligne 105 :
```
103: 				add = {
104: 					value = 100
105: 					desc = dynastic_cycle_conquerer_promoted_culture
106: 				}
107: 			}
```

Ligne 123 :
```
121: 			if = {
122: 				limit = {
123: 					situation:dynastic_cycle ?= {
124: 						situation_participant_group:expansion_movement = {
125: 							participant_group_has_character = root
```

Ligne 137 :
```
135: 			if = {
136: 				limit = {
137: 					situation:dynastic_cycle ?= {
138: 						situation_participant_group:advancement_movement = {
139: 							participant_group_has_character = root
```

Ligne 151 :
```
149: 			if = {
150: 				limit = {
151: 					situation:dynastic_cycle ?= {
152: 						situation_participant_group:pro_hegemon_movement = {
153: 							participant_group_has_character = root
```

Ligne 165 :
```
163: 			if = {
164: 				limit = {
165: 					situation:dynastic_cycle ?= {
166: 						situation_participant_group:pro_hegemon_movement = {
167: 							participant_group_has_character = root
```

Ligne 179 :
```
177: 			if = {
178: 				limit = {
179: 					situation:dynastic_cycle ?= {
180: 						situation_participant_group:conservative_movement = {
181: 							participant_group_has_character = root
```

## game/common/subject_contracts/contracts/celestial.txt

Références : 6. SHA : `7499e3058da7107ab9d564f15434af25d4fcb95a`.

Ligne 250 :
```
248: 				trigger_if = {
249: 					limit = {
250: 						exists = situation:dynastic_cycle
251: 					}
252: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_metropolitan_limit }
```

Ligne 252 :
```
250: 						exists = situation:dynastic_cycle
251: 					}
252: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_metropolitan_limit }
253: 				}
254: 				#situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
```

Ligne 254 :
```
252: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_metropolitan_limit }
253: 				}
254: 				#situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
255: 				# Only the hegemon can appoint these
256: 				scope:liege = {
```

Ligne 551 :
```
549: 			is_valid = {
550: 				# Only available in the Expansion phase of the Dynastic Cycle
551: 				#situation:dynastic_cycle ?= { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_protectorate_limit }
552: 				trigger_if = {
553: 					limit = {
```

Ligne 554 :
```
552: 				trigger_if = {
553: 					limit = {
554: 						exists = situation:dynastic_cycle
555: 					}
556: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_protectorate_limit }
```

Ligne 556 :
```
554: 						exists = situation:dynastic_cycle
555: 					}
556: 					situation:dynastic_cycle = { has_situation_top_phase_parameter = dynastic_cycle_hegemon_increased_protectorate_limit }
557: 				}
558: 				# Only the hegemon can appoint these
```

## game/common/great_projects/types/00_ministry_projects.txt

Références : 37. SHA : `1d5d91a29dc54e2dd5f171c274e305e6d685b05c`.

Ligne 22 :
```
20: @city_china_illustration = "gfx/interface/illustrations/holding_types/tgp_city_china.dds"
21: @castle_china_illustration = "gfx/interface/illustrations/holding_types/tgp_castle_china.dds"
22: @sinicize_illustration = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_stability.dds"
23: @camp_asia_illustration = "gfx/interface/illustrations/event_scenes/tgp_camp_asia.dds"
24: @develop_communities_default = "gfx/interface/illustrations/event_scenes/ep3_medi_market.dds"
```

Ligne 998 :
```
996: 		if = {
997: 			limit = {
998: 				situation:dynastic_cycle ?= {
999: 					OR = {
1000: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 1000 :
```
998: 				situation:dynastic_cycle ?= {
999: 					OR = {
1000: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1001: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1002: 					}
```

Ligne 1001 :
```
999: 					OR = {
1000: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1001: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1002: 					}
1003: 				}
```

Ligne 1087 :
```
1085: 		trigger_if = {
1086: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
1087: 				situation:dynastic_cycle ?= {
1088: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1089: 				}
```

Ligne 1088 :
```
1086: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
1087: 				situation:dynastic_cycle ?= {
1088: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1089: 				}
1090: 			}
```

Ligne 1230 :
```
1228: 
1229: 	on_complete = {
1230: 		situation:dynastic_cycle = {
1231: 			if = {
1232: 				limit = {
```

Ligne 1233 :
```
1231: 			if = {
1232: 				limit = {
1233: 					situation_top_has_catalyst = catalyst_minister_project_culture
1234: 				}
1235: 				trigger_situation_catalyst = {
```

Ligne 1236 :
```
1234: 				}
1235: 				trigger_situation_catalyst = {
1236: 					catalyst = catalyst_minister_project_culture
1237: 					character = scope:founder
1238: 				}
```

Ligne 1591 :
```
1589: 		if = {
1590: 			limit = {
1591: 				situation:dynastic_cycle ?= {
1592: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1593: 				}
```

Ligne 1592 :
```
1590: 			limit = {
1591: 				situation:dynastic_cycle ?= {
1592: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1593: 				}
1594: 			}
```

Ligne 2218 :
```
2216: 		trigger_if = {
2217: 			limit = { # When in a stable phase, we allow everyone with access to do this simultaneously
2218: 				situation:dynastic_cycle ?= {
2219: 					OR = {
2220: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 2220 :
```
2218: 				situation:dynastic_cycle ?= {
2219: 					OR = {
2220: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2221: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2222: 					}
```

Ligne 2221 :
```
2219: 					OR = {
2220: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2221: 						situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2222: 					}
2223: 				}
```

Ligne 2438 :
```
2436: 						if = {
2437: 							limit = {
2438: 								situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
2439: 							}
2440: 							add = 30
```

Ligne 2960 :
```
2958: 		trigger_if = {
2959: 			limit = { # When in a stable phase, we allow everyone with access to do this simultaneously
2960: 				situation:dynastic_cycle ?= {
2961: 					OR = {
2962: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 2962 :
```
2960: 				situation:dynastic_cycle ?= {
2961: 					OR = {
2962: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2963: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2964: 					}
```

Ligne 2963 :
```
2961: 					OR = {
2962: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2963: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2964: 					}
2965: 				}
```

Ligne 3082 :
```
3080: 			custom_tooltip = minister_project_train_troops_modifier_tt
3081: 		}
3082: 		situation:dynastic_cycle = {
3083: 			if = {
3084: 				limit = {
```

Ligne 3085 :
```
3083: 			if = {
3084: 				limit = {
3085: 					situation_top_has_catalyst = catalyst_minister_train_troops
3086: 				}
3087: 				trigger_situation_catalyst = {
```

Ligne 3088 :
```
3086: 				}
3087: 				trigger_situation_catalyst = {
3088: 					catalyst = catalyst_minister_train_troops
3089: 					character = scope:founder
3090: 				}
```

Ligne 3979 :
```
3977: 		if = {
3978: 			limit = {
3979: 				situation:dynastic_cycle ?= {
3980: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3981: 				}
```

Ligne 3980 :
```
3978: 			limit = {
3979: 				situation:dynastic_cycle ?= {
3980: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3981: 				}
3982: 			}
```

Ligne 4056 :
```
4054: 		trigger_if = {
4055: 			limit = { # When in a stable phase, we allow everyone with access to do this simultaneously
4056: 				situation:dynastic_cycle ?= {
4057: 					OR = {
4058: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 4058 :
```
4056: 				situation:dynastic_cycle ?= {
4057: 					OR = {
4058: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
4059: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
4060: 					}
```

Ligne 4059 :
```
4057: 					OR = {
4058: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
4059: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
4060: 					}
4061: 				}
```

Ligne 4168 :
```
4166: 			custom_tooltip = minister_project_conduct_census_modifier_tt
4167: 		}
4168: 		situation:dynastic_cycle = {
4169: 			if = {
4170: 				limit = {
```

Ligne 4171 :
```
4169: 			if = {
4170: 				limit = {
4171: 					situation_top_has_catalyst = catalyst_minister_conduct_census
4172: 				}
4173: 				trigger_situation_catalyst = {
```

Ligne 4174 :
```
4172: 				}
4173: 				trigger_situation_catalyst = {
4174: 					catalyst = catalyst_minister_conduct_census
4175: 					character = scope:founder
4176: 				}
```

Ligne 4842 :
```
4840: 		if = {
4841: 			limit = {
4842: 				top_participant_group:dynastic_cycle ?= {
4843: 					OR = {
4844: 						participant_group_type = advancement_movement
```

Ligne 4919 :
```
4917: 		trigger_if = {
4918: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
4919: 				situation:dynastic_cycle ?= {
4920: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
4921: 				}
```

Ligne 4920 :
```
4918: 			limit = { # When in the advancement phase, we allow everyone with access to do this simultaneously
4919: 				situation:dynastic_cycle ?= {
4920: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
4921: 				}
4922: 			}
```

Ligne 5061 :
```
5059: 
5060: 	on_complete = {
5061: 		situation:dynastic_cycle = {
5062: 			if = {
5063: 				limit = {
```

Ligne 5064 :
```
5062: 			if = {
5063: 				limit = {
5064: 					situation_top_has_catalyst = catalyst_minister_compel_religious_uniformity
5065: 				}
5066: 				trigger_situation_catalyst = {
```

Ligne 5067 :
```
5065: 				}
5066: 				trigger_situation_catalyst = {
5067: 					catalyst = catalyst_minister_compel_religious_uniformity
5068: 					character = scope:founder
5069: 				}
```

Ligne 5423 :
```
5421: 		if = {
5422: 			limit = {
5423: 				situation:dynastic_cycle ?= {
5424: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5425: 				}
```

Ligne 5424 :
```
5422: 			limit = {
5423: 				situation:dynastic_cycle ?= {
5424: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5425: 				}
5426: 			}
```

