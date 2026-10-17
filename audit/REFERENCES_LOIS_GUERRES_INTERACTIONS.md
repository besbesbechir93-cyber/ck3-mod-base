# Références partagées — Lois, guerres et interactions

Extraits de fichiers vanilla partagés (CK3 1.20.0.3). **NE PAS** copier ces fichiers intégralement dans le mod. Les extraits sont documentaires, non destinés à être chargés isolément. Chaque fichier doit être adapté par fusion ciblée.

## common/character_interactions/10_tgp_interactions.txt

Occurrences directes : 88.

```text
12: 	target_filter = recipient_domain_titles
13: 
14: 	filter_tags = { dynastic_cycle }
15: 
16: 	can_be_picked_title = {
--
376: 				has_title = title:h_china
377: 			}
378: 			situation:dynastic_cycle ?= {
379: 				any_participant_group = {
380: 					participant_group_type = conservative_movement
--
426: 	notification_text = celestial_demand_treasury_interaction_recipient_desc
427: 	common_interaction = no
428: 	filter_tags = { celestial_ministry dynastic_cycle }
429: 
430: 	interface_priority = 61
--
823: 	common_interaction = no
824: 
825: 	filter_tags = { dynastic_cycle }
826: 
827: 	interface_priority = 62
--
965: 				if = {
966: 					limit = {
967: 						top_participant_group:dynastic_cycle ?= {
968: 							has_participant_group_parameter = dynastic_cycle_send_treasury_for_merit
969: 						}
--
966: 					limit = {
967: 						top_participant_group:dynastic_cycle ?= {
968: 							has_participant_group_parameter = dynastic_cycle_send_treasury_for_merit
969: 						}
970: 					}
--
1006: 	ai_targets = {
1007: 		ai_recipients = situation_participant_group
1008: 		parameter = dynastic_cycle
1009: 		max = 20
1010: 	}
--
1123: 	notification_text = request_mentoring_interaction_notification
1124: 
1125: 	filter_tags = { dynastic_cycle celestial_ministry }
1126: 
1127: 	is_available = {
--
2254: 	ai_targets = {
2255: 		ai_recipients = situation_participant_group
2256: 		parameter = dynastic_cycle
2257: 		max = 10
2258: 	}
--
2835: 	interface_priority = 60
2836: 
2837: 	filter_tags = { dynastic_cycle }
2838: 
2839: 	is_shown = {
--
2841: 		scope:recipient != scope:actor
2842: 		scope:recipient = {
2843: 			top_participant_group:dynastic_cycle ?= {
2844: 				NOT = { participant_group_type = other_rulers }
2845: 			}
--
2851: 			limit = {
2852: 				scope:actor = {
2853: 					top_participant_group:dynastic_cycle ?= { participant_group_type = hegemon_ruler }
2854: 				}
2855: 			}
--
2854: 				}
2855: 			}
2856: 			situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement ?= {
2857: 				NOT = { participant_group_has_character = scope:recipient }
2858: 			}
--
2858: 			}
2859: 		}
2860: 		situation:dynastic_cycle.situation_participant_group:undecided_movement ?= {
2861: 			NOT = { participant_group_has_character = scope:actor }
2862: 		}
--
2863: 		scope:actor = {
2864: 			# You are not part of the same movement
2865: 			top_participant_group:dynastic_cycle = {
2866: 				NOT = { participant_group_has_character = scope:recipient }
2867: 			}
--
3061: 				scope:actor = title:h_china.holder
3062: 			}
3063: 			situation:dynastic_cycle ?= {
3064: 				situation_participant_group:pro_hegemon_movement = {
3065: 					save_scope_as = actors_movement
--
3069: 		# other characters ask to join their movement
3070: 		else = {
3071: 			situation:dynastic_cycle ?= {
3072: 				random_participant_group = {
3073: 					limit = {
--
3344: 					}
3345: 					switch = {
3346: 						trigger = top_participant_group:dynastic_cycle
3347: 						situation:dynastic_cycle.situation_participant_group:advancement_movement = {
3348: 							tgp_activate_catalyst_against_hegemon_effect = {
--
3345: 					switch = {
3346: 						trigger = top_participant_group:dynastic_cycle
3347: 						situation:dynastic_cycle.situation_participant_group:advancement_movement = {
3348: 							tgp_activate_catalyst_against_hegemon_effect = {
3349: 								HEGEMON = scope:actor.top_liege
--
3348: 							tgp_activate_catalyst_against_hegemon_effect = {
3349: 								HEGEMON = scope:actor.top_liege
3350: 								CATALYST = catalyst_movement_gained_power_advancement
3351: 							}
3352: 						}
--
3351: 							}
3352: 						}
3353: 						situation:dynastic_cycle.situation_participant_group:expansion_movement = {
3354: 							tgp_activate_catalyst_against_hegemon_effect = {
3355: 								HEGEMON = scope:actor.top_liege
--
3354: 							tgp_activate_catalyst_against_hegemon_effect = {
3355: 								HEGEMON = scope:actor.top_liege
3356: 								CATALYST = catalyst_movement_gained_power_expansion
3357: 							}
3358: 						}
--
3357: 							}
3358: 						}
3359: 						situation:dynastic_cycle.situation_participant_group:conservative_movement = {
3360: 							tgp_activate_catalyst_against_hegemon_effect = {
3361: 								HEGEMON = scope:actor.top_liege
--
3360: 							tgp_activate_catalyst_against_hegemon_effect = {
3361: 								HEGEMON = scope:actor.top_liege
3362: 								CATALYST = catalyst_movement_gained_power_conservative
3363: 							}
3364: 						}
--
3363: 							}
3364: 						}
3365: 						situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
3366: 							situation:dynastic_cycle ?= {
3367: 								if = {
--
3364: 						}
3365: 						situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
3366: 							situation:dynastic_cycle ?= {
3367: 								if = {
3368: 									limit = {
--
3368: 									limit = {
3369: 										OR = {
3370: 											situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3371: 											situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
3372: 										}
--
3369: 										OR = {
3370: 											situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3371: 											situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
3372: 										}
3373: 										situation_top_sub_region = {
--
3372: 										}
3373: 										situation_top_sub_region = {
3374: 											phase_takeover_points:situation_dynastic_cycle_phase_instability >= 0
3375: 										}
3376: 									}
--
3378: 										tgp_activate_catalyst_against_hegemon_effect = {
3379: 											HEGEMON = scope:actor.top_liege
3380: 											CATALYST = catalyst_movement_gained_power_pro_hegemon
3381: 										}
3382: 									}
--
3385: 									limit = {
3386: 										OR = {
3387: 											situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3388: 											situation_current_phase = situation_dynastic_cycle_phase_instability
3389: 										}
--
3386: 										OR = {
3387: 											situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3388: 											situation_current_phase = situation_dynastic_cycle_phase_instability
3389: 										}
3390: 										situation_top_sub_region = {
--
3389: 										}
3390: 										situation_top_sub_region = {
3391: 											phase_takeover_points:situation_dynastic_cycle_phase_chaos >= 0
3392: 										}
3393: 									}
--
3395: 										tgp_activate_catalyst_against_hegemon_effect = {
3396: 											HEGEMON = scope:actor.top_liege
3397: 											CATALYST = catalyst_movement_gained_power_pro_hegemon
3398: 										}
3399: 									}
--
3407: 		scope:recipient = {
3408: 			hidden_effect = {
3409: 				recalculate_participant_group = situation:dynastic_cycle
3410: 				every_relation = {
3411: 					type = disciple
--
3410: 				every_relation = {
3411: 					type = disciple
3412: 					recalculate_participant_group = situation:dynastic_cycle
3413: 				}
3414: 			}
--
3452: 
3453: 	is_available = {
3454: 		top_participant_group:dynastic_cycle ?= {
3455: 			NOR = {
3456: 				participant_group_type = other_rulers
--
3475: 					is_dominant_family = yes
3476: 				}
3477: 				situation:dynastic_cycle ?= { # Is a movement leader
3478: 					any_participant_group = {
3479: 						var:movement_leader ?= root
--
3487: 		base = 25
3488: 		modifier = { # Prefer getting people from movements with higher power!
3489: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3490: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3491: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
--
3488: 		modifier = { # Prefer getting people from movements with higher power!
3489: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3490: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3491: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3492: 			add = 75
--
3489: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3490: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3491: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3492: 			add = 75
3493: 		}
--
3494: 		modifier = {
3495: 			scope:recipient = {
3496: 				top_participant_group:dynastic_cycle ?= {
3497: 					participant_group_type = undecided_movement
3498: 				}
--
3503: 			scope:actor = {
3504: 				this != top_liege
3505: 				top_participant_group:dynastic_cycle ?= {
3506: 					participant_group_type = pro_hegemon_movement
3507: 				}
--
3507: 				}
3508: 			}
3509: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power <= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3510: 			add = -65
3511: 		}
--
3545: 		# is a movement leader
3546: 		modifier = {
3547: 			situation:dynastic_cycle ?= {
3548: 				any_participant_group = {
3549: 					var:movement_leader ?= scope:recipient
--
4589: 						}
4590: 						hidden_effect = {
4591: 							situation:dynastic_cycle ?= {
4592: 								if = {
4593: 									limit = {
--
5028: 			tgp_activate_catalyst_against_hegemon_effect = {
5029: 				HEGEMON = scope:recipient
5030: 				CATALYST = catalyst_hegemon_influenced_by_interaction
5031: 			}
5032: 		}
--
5314: 	common_interaction = no
5315: 	desc = celestial_request_treasury_interaction_desc
5316: 	filter_tags = { celestial_ministry dynastic_cycle }
5317: 
5318: 	ai_min_reply_days = 4
--
5533: 			tgp_activate_catalyst_against_hegemon_effect = {
5534: 				HEGEMON = scope:recipient
5535: 				CATALYST = catalyst_hegemon_influenced_by_interaction
5536: 			}
5537: 		}
--
5554: 					target = scope:actor
5555: 				}
5556: 				situation:dynastic_cycle ?= {
5557: 					if = {
5558: 						limit = {
--
5813: 	desc = celestial_request_commander_interaction_desc
5814: 	notification_text = celestial_request_commander_interaction_notification
5815: 	filter_tags = { celestial_ministry dynastic_cycle }
5816: 
5817: 	ai_min_reply_days = 4
--
6053: 					AND = {
6054: 						title:h_china.holder.hegemon_favored_stability_phase_value < 0
6055: 						top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
6056: 					}
6057: 					AND = {
--
6057: 					AND = {
6058: 						title:h_china.holder.hegemon_favored_stability_phase_value >= 0
6059: 						top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
6060: 					}
6061: 				}
--
6216: 	desc = celestial_request_examination_support_interaction_desc
6217: 	notification_text = celestial_request_examination_support_interaction_notification
6218: 	filter_tags = { celestial_ministry dynastic_cycle }
6219: 
6220: 	ai_min_reply_days = 4
--
6424: 					AND = {
6425: 						title:h_china.holder.hegemon_favored_stability_phase_value < 0
6426: 						top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
6427: 					}
6428: 					AND = {
--
6428: 					AND = {
6429: 						title:h_china.holder.hegemon_favored_stability_phase_value >= 0
6430: 						top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
6431: 					}
6432: 				}
--
6962: 	common_interaction = no
6963: 	desc = set_favored_minister_interaction_desc
6964: 	filter_tags = { celestial_ministry dynastic_cycle }
6965: 
6966: 	#cooldown = { years = 5 }
--
7072: 		modifier = {
7073: 			add = 15
7074: 			situation:dynastic_cycle ?= {
7075: 				any_participant_group = {
7076: 					var:movement_leader ?= scope:recipient
--
7099: 	desc = celestial_movement_power_promote_interaction_desc
7100: 	common_interaction = no
7101: 	filter_tags = { dynastic_cycle }
7102: 
7103: 	interface_priority = 60
--
7125: 			exists = var:movement_power
7126: 		}
7127: 		situation:dynastic_cycle ?= {
7128: 			any_participant_group = {
7129: 				NOR = {
--
7134: 			}
7135: 		}
7136: 		situation:dynastic_cycle ?= {
7137: 			any_participant_group = {
7138: 				NOR = {
--
7258: 	ai_targets = {
7259: 		ai_recipients = situation_participant_group
7260: 		parameter = dynastic_cycle
7261: 		max = 10
7262: 	}
--
7359: 	desc = celestial_movement_power_slander_interaction_desc
7360: 	common_interaction = no
7361: 	filter_tags = { dynastic_cycle }
7362: 
7363: 	interface_priority = 60
--
7387: 			this != scope:actor
7388: 		}
7389: 		situation:dynastic_cycle ?= {
7390: 			any_participant_group = {
7391: 				NOR = {
--
7396: 			}
7397: 		}
7398: 		situation:dynastic_cycle ?= {
7399: 			any_participant_group = {
7400: 				NOR = {
--
7719: 		modifier = { # More likely to stop being a disciple if actor is a movement leader
7720: 			add = 20
7721: 			situation:dynastic_cycle ?= {
7722: 				any_participant_group = {
7723: 					var:movement_leader ?= scope:actor
--
7729: 			top_liege != scope:recipient.top_liege
7730: 			NAND = {
7731: 				any_character_situation = { situation_type = dynastic_cycle }
7732: 				situation:dynastic_cycle ?= {
7733: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
--
7730: 			NAND = {
7731: 				any_character_situation = { situation_type = dynastic_cycle }
7732: 				situation:dynastic_cycle ?= {
7733: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
7734: 				}
--
7731: 				any_character_situation = { situation_type = dynastic_cycle }
7732: 				situation:dynastic_cycle ?= {
7733: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
7734: 				}
7735: 			}
--
7756: 	}
7757: 	notification_text = tgp_interaction_event.0031.desc # Intentional
7758: 	filter_tags = { dynastic_cycle }
7759: 	custom_character_sort = { merit }
7760: 	cooldown = { years = 1 }
--
7922: 	ai_targets = {
7923: 		ai_recipients = situation_participant_group
7924: 		parameter = dynastic_cycle
7925: 		max = 20
7926: 	}
--
8051: 		modifier = { # More likely to pick elder if recipient is a movement leader
8052: 			add = 20
8053: 			situation:dynastic_cycle ?= {
8054: 				any_participant_group = {
8055: 					var:movement_leader ?= scope:recipient
--
8207: 				text = celestial_request_elders_support_interaction.unlocked_expansion
8208: 				OR = {
8209: 					situation:dynastic_cycle ?= {
8210: 						situation_participant_group:expansion_movement = {
8211: 							participant_group_has_character = scope:actor
--
8239: 				text = celestial_request_elders_support_interaction.unlocked_advancement
8240: 				OR = {
8241: 					situation:dynastic_cycle ?= {
8242: 						situation_participant_group:advancement_movement = {
8243: 							participant_group_has_character = scope:actor
--
8289: 				text = celestial_request_elders_support_interaction.unlocked_conservative
8290: 				OR = {
8291: 					situation:dynastic_cycle ?= {
8292: 						situation_participant_group:conservative_movement = {
8293: 							participant_group_has_character = scope:actor
--
8691: 	ai_targets = {
8692: 		ai_recipients = situation_participant_group
8693: 		parameter = dynastic_cycle
8694: 		max = 10
8695: 	}
--
10801: 	ai_targets = {
10802: 		ai_recipients = situation_participant_group
10803: 		parameter = dynastic_cycle
10804: 		max = 20
10805: 	}
--
10844: 							government_has_flag = government_is_celestial
10845: 						}
10846: 						situation:dynastic_cycle ?= {
10847: 							situation_current_phase = situation_dynastic_cycle_phase_chaos
10848: 						}
--
10845: 						}
10846: 						situation:dynastic_cycle ?= {
10847: 							situation_current_phase = situation_dynastic_cycle_phase_chaos
10848: 						}
10849: 					}
--
10866: 			trigger_if = {
10867: 				limit = {
10868: 					situation:dynastic_cycle ?= {
10869: 						situation_current_phase = situation_dynastic_cycle_phase_chaos
10870: 					}
--
10867: 				limit = {
10868: 					situation:dynastic_cycle ?= {
10869: 						situation_current_phase = situation_dynastic_cycle_phase_chaos
10870: 					}
10871: 					scope:actor = {
--
10874: 				}
10875: 				custom_tooltip = {
10876: 					text = is_part_of_dynastic_cycle
10877: 					any_character_situation = {
10878: 						situation_type = dynastic_cycle
--
10876: 					text = is_part_of_dynastic_cycle
10877: 					any_character_situation = {
10878: 						situation_type = dynastic_cycle
10879: 					}
10880: 				}
--
11552: 					if = {
11553: 						limit = {
11554: 							exists = top_participant_group:dynastic_cycle
11555: 							any_character_situation = {
11556: 								situation_type = dynastic_cycle
--
11554: 							exists = top_participant_group:dynastic_cycle
11555: 							any_character_situation = {
11556: 								situation_type = dynastic_cycle
11557: 							}
11558: 						}
--
11557: 							}
11558: 						}
11559: 						situation:dynastic_cycle ?= {
11560: 							if = {
11561: 								limit = {
--
11766: 			change_influence = major_influence_value
11767: 		}
11768: 		situation:dynastic_cycle ?= {
11769: 			if = {
11770: 				limit = {
--
11896: 	ai_targets = {
11897: 		ai_recipients = situation_participant_group
11898: 		parameter = dynastic_cycle
11899: 		max = 20
11900: 	}
```

## common/character_interactions/00_tributary_interactions.txt

Occurrences directes : 20.

```text
1506: 					limit = {
1507: 						any_character_situation = {
1508: 							situation_type = dynastic_cycle
1509: 						}
1510: 					}
--
1512: 						root.subject_standing <= 0
1513: 						any_character_situation = {
1514: 							situation_type = dynastic_cycle
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
--
1514: 							situation_type = dynastic_cycle
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
1517: 								situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1518: 							}
--
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
1517: 								situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1518: 							}
1519: 						}
--
1616: 			if = {
1617: 				limit = {
1618: 					top_participant_group:dynastic_cycle ?= {
1619: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1620: 					}
--
1617: 				limit = {
1618: 					top_participant_group:dynastic_cycle ?= {
1619: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1620: 					}
1621: 				}
--
1807: 			# TGP Dynastic Cycle in Instability phase
1808: 			modifier = {
1809: 				desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
1810: 				add = 25
1811: 				scope:recipient = {
--
1810: 				add = 25
1811: 				scope:recipient = {
1812: 					top_participant_group:dynastic_cycle ?= {
1813: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1814: 					}
--
1811: 				scope:recipient = {
1812: 					top_participant_group:dynastic_cycle ?= {
1813: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1814: 					}
1815: 				}
--
2758: 		modifier = {
2759: 			scope:actor = { highest_held_title_tier >= tier_hegemony }
2760: 			situation:dynastic_cycle ?= {
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
2760: 			situation:dynastic_cycle ?= {
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2763: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2764: 				}
--
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2763: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2764: 				}
2765: 			}
--
2771: 			scope:actor = {
2772: 				highest_held_title_tier >= tier_hegemony
2773: 				legitimacy_level < dynastic_cycle_legitimacy_expectation
2774: 			}
2775: 			situation:dynastic_cycle ?= {
--
2773: 				legitimacy_level < dynastic_cycle_legitimacy_expectation
2774: 			}
2775: 			situation:dynastic_cycle ?= {
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
2775: 			situation:dynastic_cycle ?= {
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2778: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2779: 				}
--
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2778: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2779: 				}
2780: 			}
--
2785: 			scope:actor = {
2786: 				highest_held_title_tier >= tier_hegemony
2787: 				legitimacy_level > dynastic_cycle_legitimacy_expectation
2788: 			}
2789: 			situation:dynastic_cycle ?= {
--
2787: 				legitimacy_level > dynastic_cycle_legitimacy_expectation
2788: 			}
2789: 			situation:dynastic_cycle ?= {
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
2789: 			situation:dynastic_cycle ?= {
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2792: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2793: 				}
--
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2792: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2793: 				}
2794: 			}
```

## common/character_interactions/06_ep3_interactions.txt

Occurrences directes : 23.

```text
1688: 	common_interaction = no
1689: 	interface_priority = 175
1690: 	filter_tags = { admin_house_head celestial_ministry dynastic_cycle ceremonial_liege }
1691: 	highlighted_reason = tgp_interaction_minister_personnel_highlight_reason
1692: 
--
2978: 			tgp_activate_catalyst_against_hegemon_effect = {
2979: 				HEGEMON = scope:recipient
2980: 				CATALYST = catalyst_hegemon_influenced_by_interaction
2981: 			}
2982: 		}
--
3608: 			tgp_activate_catalyst_against_hegemon_effect = {
3609: 				HEGEMON = scope:recipient
3610: 				CATALYST = catalyst_hegemon_influenced_by_interaction
3611: 			}
3612: 			# If the minister's merit rank is too low, it will affect the dynastic cycle
--
3621: 				}
3622: 				show_as_tooltip = {
3623: 					situation:dynastic_cycle ?= {
3624: 						if = {
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
--
3623: 					situation:dynastic_cycle ?= {
3624: 						if = {
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
3626: 							trigger_situation_catalyst = {
3627: 								catalyst = catalyst_hegemon_appointing_low_merit_councillor
--
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
3626: 							trigger_situation_catalyst = {
3627: 								catalyst = catalyst_hegemon_appointing_low_merit_councillor
3628: 								character = scope:recipient
3629: 							}
--
5705: 			limit = {
5706: 				scope:actor = {
5707: 					exists = top_participant_group:dynastic_cycle
5708: 				}
5709: 			}
--
5709: 			}
5710: 			scope:actor = {
5711: 				top_participant_group:dynastic_cycle ?= {
5712: 					participant_group_type = advancement_movement
5713: 				}
--
5907: 			scope:actor = {
5908: 				any_character_situation = {
5909: 					situation_type = dynastic_cycle
5910: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5911: 				}
--
5908: 				any_character_situation = {
5909: 					situation_type = dynastic_cycle
5910: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5911: 				}
5912: 			}
--
5979: 			limit = {
5980: 				scope:actor = {
5981: 					exists = top_participant_group:dynastic_cycle
5982: 				}
5983: 			}
--
5983: 			}
5984: 			scope:actor = {
5985: 				top_participant_group:dynastic_cycle ?= {
5986: 					NOT = { participant_group_type = advancement_movement }
5987: 				}
--
6167: 			scope:actor = {
6168: 				any_character_situation = {
6169: 					situation_type = dynastic_cycle
6170: 					NOT = { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
6171: 				}
--
6168: 				any_character_situation = {
6169: 					situation_type = dynastic_cycle
6170: 					NOT = { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
6171: 				}
6172: 			}
--
6707: force_governor_removal_interaction = {
6708: 	category = interaction_category_succession
6709: 	filter_tags = { admin_governor dynastic_cycle }
6710: 	icon = icon_force_governor_removal
6711: 	desc = force_governor_removal_interaction_desc
--
8038: 	common_interaction = yes
8039: 
8040: 	filter_tags = { admin_liege celestial_ministry dynastic_cycle }
8041: 
8042: 	ai_maybe = yes
--
8505: 					tgp_activate_catalyst_against_hegemon_effect = {
8506: 						HEGEMON = scope:recipient
8507: 						CATALYST = catalyst_hegemon_influenced_by_interaction
8508: 					}
8509: 				}
--
9421: 			tgp_activate_catalyst_against_hegemon_effect = {
9422: 				HEGEMON = scope:recipient
9423: 				CATALYST = catalyst_hegemon_influenced_by_interaction
9424: 			}
9425: 		}
--
9683: 			tgp_activate_catalyst_against_hegemon_effect = {
9684: 				HEGEMON = scope:recipient
9685: 				CATALYST = catalyst_hegemon_influenced_by_interaction
9686: 			}
9687: 		}
--
10125: 			tgp_activate_catalyst_against_hegemon_effect = {
10126: 				HEGEMON = scope:recipient
10127: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10128: 			}
10129: 		}
--
10289: 			tgp_activate_catalyst_against_hegemon_effect = {
10290: 				HEGEMON = scope:recipient
10291: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10292: 			}
10293: 		}
--
10721: 			tgp_activate_catalyst_against_hegemon_effect = {
10722: 				HEGEMON = scope:recipient
10723: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10724: 			}
10725: 		}
--
13576: 			tgp_activate_catalyst_against_hegemon_effect = {
13577: 				HEGEMON = scope:recipient
13578: 				CATALYST = catalyst_hegemon_influenced_by_interaction
13579: 			}
13580: 		}
```

## common/character_interactions/00_grant_titles_interaction.txt

Occurrences directes : 3.

```text
2454: 			}
2455: 			show_as_tooltip = {
2456: 				situation:dynastic_cycle ?= {
2457: 					if = {
2458: 						limit = {
--
2457: 					if = {
2458: 						limit = {
2459: 							situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor
2460: 							title:h_china.holder = scope:puppet_or_actor
2461: 						}
--
2461: 						}
2462: 						trigger_situation_catalyst = {
2463: 							catalyst = catalyst_hegemon_appointing_low_merit_governor
2464: 							character =  scope:recipient
2465: 						}
```

## common/casus_belli_types/10_tgp_china_wars.txt

Occurrences directes : 29.

```text
13: 			has_title = title:h_china
14: 		}
15: 		top_participant_group:dynastic_cycle ?= {
16: 			OR = {
17: 				AND = {
--
16: 			OR = {
17: 				AND = {
18: 					has_participant_group_parameter = dynastic_cycle_vassal_internal_wars_allowed
19: 					root = {
20: 						NOT = {
--
24: 				}
25: 				AND = {
26: 					has_participant_group_parameter = dynastic_cycle_vassal_seize_cb
27: 					root = {
28: 						OR = {
--
340: 			has_title = title:e_minister_grand_marshal
341: 		}
342: 		situation:dynastic_cycle ?= {
343: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
344: 		}
--
341: 		}
342: 		situation:dynastic_cycle ?= {
343: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
344: 		}
345: 	}
--
346: 
347: 	allowed_for_character_display_regardless = {
348: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
349: 	}
350: 
--
661: 			has_title = title:h_china
662: 		}
663: 		top_participant_group:dynastic_cycle ?= {
664: 			OR = {
665: 				AND = {
--
664: 			OR = {
665: 				AND = {
666: 					has_participant_group_parameter = dynastic_cycle_vassal_internal_wars_allowed
667: 					root = {
668: 						NOT = {
--
672: 				}
673: 				AND = {
674: 					has_participant_group_parameter = dynastic_cycle_vassal_seize_cb
675: 					root = {
676: 						OR = {
--
1006: 			has_title = title:e_minister_grand_marshal
1007: 		}
1008: 		situation:dynastic_cycle ?= {
1009: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
1010: 		}
--
1007: 		}
1008: 		situation:dynastic_cycle ?= {
1009: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
1010: 		}
1011: 	}
--
1012: 
1013: 	allowed_for_character_display_regardless = {
1014: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
1015: 	}
1016: 
--
1377: 	allowed_against_character_display_regardless = {
1378: 		custom_tooltip = {
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
--
1378: 		custom_tooltip = {
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1382: 			}
--
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1382: 			}
1383: 		}
--
1411: 							}
1412: 						}
1413: 						desc = dynastic_cycle_hegemon_legitimacy_level_cost_desc
1414: 					}
1415: 				}
--
1732: 
1733: 	allowed_for_character = {
1734: 		situation:dynastic_cycle ?= {
1735: 			situation_current_phase = situation_dynastic_cycle_phase_chaos
1736: 		}
--
1733: 	allowed_for_character = {
1734: 		situation:dynastic_cycle ?= {
1735: 			situation_current_phase = situation_dynastic_cycle_phase_chaos
1736: 		}
1737: 		NAND = {
--
1745: 				is_ai = yes
1746: 				NOR = {
1747: 					exists = top_participant_group:dynastic_cycle
1748: 					any_owned_story = {
1749: 						story_type = story_take_mandate_of_heaven
--
1778: 	}
1779: 	allowed_for_character_display_regardless = {
1780: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
1781: 		custom_tooltip = {
1782: 			text = has_gok_story_tt
--
1790: 	allowed_against_character = {
1791: 		#Must be within Dynastic Cycle
1792: 		exists = top_participant_group:dynastic_cycle
1793: 	}
1794: 
--
2148: 
2149: 	allowed_for_character = {
2150: 		situation:dynastic_cycle ?= {
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
--
2149: 	allowed_for_character = {
2150: 		situation:dynastic_cycle ?= {
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
2153: 		top_participant_group:dynastic_cycle ?= {
--
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
2153: 		top_participant_group:dynastic_cycle ?= {
2154: 			participant_group_type = hegemon_ruler
2155: 		}
--
2156: 	}
2157: 	allowed_against_character = {
2158: 		exists = top_participant_group:dynastic_cycle
2159: 	}
2160: 
--
2198: 		OR = {
2199: 			scope:attacker = {
2200: 				top_participant_group:dynastic_cycle ?= {
2201: 					NOT = {
2202: 						participant_group_type = hegemon_ruler
--
2226: 				trigger = {
2227: 					scope:attacker = {
2228: 						top_participant_group:dynastic_cycle ?= {
2229: 							NOT = {
2230: 								participant_group_type = hegemon_ruler
--
2515: 		has_tgp_dlc_trigger = yes
2516: 		title:h_china.holder ?= root
2517: 		top_participant_group:dynastic_cycle ?= {
2518: 			has_participant_group_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
2519: 		}
--
2516: 		title:h_china.holder ?= root
2517: 		top_participant_group:dynastic_cycle ?= {
2518: 			has_participant_group_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
2519: 		}
2520: 	}
```

## common/casus_belli_groups/00_casus_belli_groups.txt

Occurrences directes : 10.

```text
19: 		herders_and_tributary_constraints = yes
20: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
21: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
22: 		tgp_war_ban_all_ministers_trigger = yes
23: 	}
--
39: 		herders_and_tributary_constraints = yes
40: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
41: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
42: 		tgp_war_ban_all_ministers_trigger = yes
43: 	}
--
49: 	allowed_for_character = {
50: 		herders_and_tributary_constraints = yes
51: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
52: 		tgp_war_ban_all_ministers_trigger = yes
53: 	}
--
58: 		herders_and_tributary_constraints = yes
59: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
60: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
61: 		tgp_war_ban_all_ministers_trigger = yes
62: 		NOT = { government_has_flag = government_is_theocracy }
--
77: 		herders_and_tributary_constraints = yes
78: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
79: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
80: 		tgp_war_ban_all_ministers_trigger = yes
81: 		NOT = { government_has_flag = government_is_theocracy }
--
95: 		herders_and_tributary_constraints = yes
96: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
97: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
98: 		tgp_war_ban_all_ministers_trigger = yes
99: 		NOT = { government_has_flag = government_is_theocracy }
--
105: 		herders_and_tributary_constraints = yes
106: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
107: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
108: 		tgp_war_ban_all_ministers_trigger = yes
109: 		NOT = { government_has_flag = government_is_theocracy }
--
115: 		herders_and_tributary_constraints = yes
116: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
117: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
118: 		tgp_war_ban_all_ministers_trigger = yes
119: 		NOT = { government_has_flag = government_is_theocracy }
--
126: 		herders_and_tributary_constraints = yes
127: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
128: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
129: 		tgp_war_ban_all_ministers_trigger = yes
130: 		NOT = { government_has_flag = government_is_theocracy }
--
136: 		herders_and_tributary_constraints = yes
137: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
138: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
139: 		tgp_war_ban_all_ministers_trigger = yes
140: 		OR = {
```

## common/scripted_effects/10_dlc_tgp_scripted_effects.txt

Occurrences directes : 31.

```text
204: 			scope:owner ?= {
205: 				any_character_situation = {
206: 					situation_type = dynastic_cycle
207: 				}
208: 			}
--
215: 		}
216: 		random_character_situation = {
217: 			limit = { situation_type = dynastic_cycle }
218: 			switch = {
219: 				trigger = scope:great_project.great_project_type
--
288: 				limit = {
289: 					any_character_situation = {
290: 						situation_type = dynastic_cycle
291: 						has_situation_top_phase_parameter = dynastic_cycle_great_projects_increased_legitimacy
292: 					}
--
289: 					any_character_situation = {
290: 						situation_type = dynastic_cycle
291: 						has_situation_top_phase_parameter = dynastic_cycle_great_projects_increased_legitimacy
292: 					}
293: 				}
--
533: 		}
534: 		custom_tooltip = every_disciple_adds_movement_power_tt
535: 		hidden_effect = { recalculate_participant_group = situation:dynastic_cycle }
536: 	}
537: }
--
563: 		limit = {
564: 			any_character_situation = {
565: 				situation_type = dynastic_cycle
566: 				any_participant_group = {
567: 					participant_group_has_character = scope:new_movement_leader
--
579: 			subject = scope:new_movement_leader
580: 			object = scope:leaders_movement
581: 			situation:dynastic_cycle ?= {
582: 				random_participant_group = {
583: 					limit = {
--
600: 			switch = {
601: 				trigger = scope:leaders_movement
602: 				situation:dynastic_cycle.situation_participant_group:expansion_movement = {
603: 					tgp_activate_catalyst_against_hegemon_effect = {
604: 						HEGEMON = scope:new_movement_leader.top_liege
--
603: 					tgp_activate_catalyst_against_hegemon_effect = {
604: 						HEGEMON = scope:new_movement_leader.top_liege
605: 						CATALYST = catalyst_movement_gained_power_expansion
606: 					}
607: 				}
--
606: 					}
607: 				}
608: 				situation:dynastic_cycle.situation_participant_group:advancement_movement = {
609: 					tgp_activate_catalyst_against_hegemon_effect = {
610: 						HEGEMON = scope:new_movement_leader.top_liege
--
609: 					tgp_activate_catalyst_against_hegemon_effect = {
610: 						HEGEMON = scope:new_movement_leader.top_liege
611: 						CATALYST = catalyst_movement_gained_power_advancement
612: 					}
613: 				}
--
612: 					}
613: 				}
614: 				situation:dynastic_cycle.situation_participant_group:conservative_movement = {
615: 					tgp_activate_catalyst_against_hegemon_effect = {
616: 						HEGEMON = scope:new_movement_leader.top_liege
--
615: 					tgp_activate_catalyst_against_hegemon_effect = {
616: 						HEGEMON = scope:new_movement_leader.top_liege
617: 						CATALYST = catalyst_movement_gained_power_conservative
618: 					}
619: 				}
--
618: 					}
619: 				}
620: 				situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
621: 					tgp_activate_catalyst_against_hegemon_effect = {
622: 						HEGEMON = scope:new_movement_leader.top_liege
--
621: 					tgp_activate_catalyst_against_hegemon_effect = {
622: 						HEGEMON = scope:new_movement_leader.top_liege
623: 						CATALYST = catalyst_movement_gained_power_pro_hegemon
624: 					}
625: 				}
--
914: 			}
915: 		}
916: 		situation:dynastic_cycle ?= {
917: 			if = {
918: 				limit = {
--
917: 			if = {
918: 				limit = {
919: 				situation_top_has_catalyst = catalyst_hegemon_influenced_by_interaction
920: 				}
921: 				trigger_situation_catalyst = {
--
920: 				}
921: 				trigger_situation_catalyst = {
922: 				catalyst = catalyst_hegemon_influenced_by_interaction
923: 				character = scope:petitioner
924: 				}
--
990: 		}
991: 	}
992: 	situation:dynastic_cycle ?= {
993: 		if = {
994: 			limit = {
--
993: 		if = {
994: 			limit = {
995: 			situation_top_has_catalyst = catalyst_hegemon_influenced_by_interaction
996: 			}
997: 			trigger_situation_catalyst = {
--
996: 			}
997: 			trigger_situation_catalyst = {
998: 			catalyst = catalyst_hegemon_influenced_by_interaction
999: 			character = scope:petitioner
1000: 			}
--
1033: 					scope:petitioner.var:movement_petition ?= flag:hold_examinations
1034: 				}
1035: 				situation:dynastic_cycle = {
1036: 					if = {
1037: 						limit = {
--
1116: 		text = new_movement_becomes_favored_desc
1117: 		object = scope:movement_to_be_favored
1118: 		situation:dynastic_cycle ?= {
1119: 			random_participant_group = {
1120: 				limit = {
--
1134: 	custom_tooltip = new_movement_becomes_favored_power_increase
1135: 
1136: 	situation:dynastic_cycle ?= {
1137: 		random_participant_group = {
1138: 			limit = {
--
1441: 		}
1442: 		update_character_movement_power_effect = yes
1443: 		top_participant_group:dynastic_cycle ?= {
1444: 			update_movement_power_effect = yes
1445: 		}
--
1511: 		}
1512: 		update_character_movement_power_effect = yes
1513: 		top_participant_group:dynastic_cycle ?= {
1514: 			update_movement_power_effect = yes
1515: 		}
--
1587: 			}
1588: 			update_character_movement_power_effect = yes
1589: 			top_participant_group:dynastic_cycle ?= {
1590: 				update_movement_power_effect = yes
1591: 			}
--
1891: 				NOT = {
1892: 					any_character_situation = {
1893: 						situation_type = dynastic_cycle
1894: 					}
1895: 				}
--
1896: 				top_liege ?= {
1897: 					any_character_situation = {
1898: 						situation_type = dynastic_cycle
1899: 					}
1900: 				}
--
1901: 			}
1902: 
1903: 			situation:dynastic_cycle = {
1904: 				add_manual_participant = prev
1905: 			}
--
2127: 		}
2128: 
2129: 		situation:dynastic_cycle = {
2130: 			remove_manual_participant = prev
2131: 		}
```

## common/scripted_triggers/10_tgp_triggers.txt

Occurrences directes : 8.

```text
731: 	$CHARACTER$ = {
732: 		OR = {
733: 			top_participant_group:dynastic_cycle ?= { participant_group_type = conservative_movement }
734: 			has_title = title:e_minister_of_personnel
735: 			AND = {
--
752: 	$CHARACTER$ = {
753: 		OR = {
754: 			top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
755: 			AND = {
756: 				this = top_liege
--
758: 					ai_greed < 0
759: 					ai_rationality > 75
760: 					situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
761: 				}
762: 			}
--
772: 	$CHARACTER$ = {
773: 		OR = {
774: 			top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
775: 			has_title = title:e_minister_grand_marshal
776: 			has_title = title:e_minister_of_war
--
779: 				OR = {
780: 					ai_boldness > 90
781: 					situation:dynastic_cycle ?= {
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
781: 					situation:dynastic_cycle ?= {
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
784: 							situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
785: 						}
--
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
784: 							situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
785: 						}
786: 					}
--
799: 	$CHARACTER$ = {
800: 		OR = {
801: 			top_participant_group:dynastic_cycle ?= { participant_group_type = pro_hegemon_movement }
802: 			has_trait = loyal
803: 			AND = {
```

## common/scripted_triggers/00_secret_type_triggers.txt

Occurrences directes : 2.

```text
472: }
473: 
474: secret_siphoned_treasury_is_valid_trigger = {
475: 	# Both of y'all must still have treasuries
476: 	$OWNER$ = { has_treasury = yes }
--
479: 
480: # criminal only if the target is your liege or the Hegemon
481: secret_siphoned_treasury_is_criminal_trigger = {
482: 	$TARGET$ = {
483: 		OR = {
```

## common/laws/00_realm_laws.txt

Occurrences directes : 9.

```text
2486: 				this = title:h_china.holder
2487: 			}
2488: 			situation:dynastic_cycle ?= {
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
2488: 			situation:dynastic_cycle ?= {
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2491: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2492: 				}
--
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2491: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2492: 				}
2493: 			}
--
2944: 				this = title:h_china.holder
2945: 			}
2946: 			situation:dynastic_cycle ?= {
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
2946: 			situation:dynastic_cycle ?= {
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2949: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2950: 				}
--
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2949: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2950: 				}
2951: 			}
--
3277: 				this = title:h_china.holder
3278: 			}
3279: 			situation:dynastic_cycle ?= {
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
--
3279: 			situation:dynastic_cycle ?= {
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
3282: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3283: 				}
--
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
3282: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3283: 				}
3284: 			}
```

## common/laws/02_admininistrative_laws.txt

Occurrences directes : 15.

```text
596: 				OR = { # AI should want this if warlike, or if in the expansion phase, regardless of personality
597: 					ai_has_warlike_personality = yes
598: 					situation:dynastic_cycle ?= {
599: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
600: 					}
--
597: 					ai_has_warlike_personality = yes
598: 					situation:dynastic_cycle ?= {
599: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
600: 					}
601: 				}
--
627: 				this = title:h_china.holder
628: 			}
629: 			situation:dynastic_cycle ?= {
630: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
631: 			}
--
628: 			}
629: 			situation:dynastic_cycle ?= {
630: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
631: 			}
632: 		}
--
1369: 		exists = title:e_minister_chancellor.holder
1370: 		OR = {
1371: 			situation:dynastic_cycle ?= {
1372: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1373: 			}
--
1370: 		OR = {
1371: 			situation:dynastic_cycle ?= {
1372: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1373: 			}
1374: 			is_movement_in_power = {
--
1408: 		if = {
1409: 			limit = {
1410: 				situation:dynastic_cycle ?= {
1411: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1412: 				}
--
1409: 			limit = {
1410: 				situation:dynastic_cycle ?= {
1411: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1412: 				}
1413: 			}
--
1446: 	can_pass = {
1447: 		exists = title:e_minister_grand_marshal.holder
1448: 		situation:dynastic_cycle ?= {
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
--
1448: 		situation:dynastic_cycle ?= {
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1451: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1452: 			}
--
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1451: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1452: 			}
1453: 			situation_participant_group:expansion_movement ?= {
--
1545: 	can_pass = {
1546: 		exists = title:e_minister_censor.holder
1547: 		situation:dynastic_cycle ?= {
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
1547: 		situation:dynastic_cycle ?= {
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1550: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1551: 			}
--
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1550: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1551: 			}
1552: 		}
--
1551: 			}
1552: 		}
1553: 		situation:dynastic_cycle.situation_participant_group:conservative_movement ?= {
1554: 			save_temporary_scope_as = my_movement
1555: 
```

## common/succession_appointment/celestial_minister.txt

Occurrences directes : 9.

```text
96: 				limit = {
97: 					top_liege = { has_title = title:h_china }
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
--
97: 					top_liege = { has_title = title:h_china }
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
101: 					}
--
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
101: 					}
102: 				}
--
103: 				add = {
104: 					value = 100
105: 					desc = dynastic_cycle_conquerer_promoted_culture
106: 				}
107: 			}
--
121: 			if = {
122: 				limit = {
123: 					situation:dynastic_cycle ?= {
124: 						situation_participant_group:expansion_movement = {
125: 							participant_group_has_character = root
--
135: 			if = {
136: 				limit = {
137: 					situation:dynastic_cycle ?= {
138: 						situation_participant_group:advancement_movement = {
139: 							participant_group_has_character = root
--
149: 			if = {
150: 				limit = {
151: 					situation:dynastic_cycle ?= {
152: 						situation_participant_group:pro_hegemon_movement = {
153: 							participant_group_has_character = root
--
163: 			if = {
164: 				limit = {
165: 					situation:dynastic_cycle ?= {
166: 						situation_participant_group:pro_hegemon_movement = {
167: 							participant_group_has_character = root
--
177: 			if = {
178: 				limit = {
179: 					situation:dynastic_cycle ?= {
180: 						situation_participant_group:conservative_movement = {
181: 							participant_group_has_character = root
```

