# CK3 1.20.1.1 — shared laws, interactions, wars (live review)

Verified 2026-10-17 against `master` of besbesbechir93-cyber/ck3-mod-base. These are **documentary reference excerpts only**. Preserve vanilla files and merge cycle-specific logic selectively. Line numbers correspond to CK3 1.20.1.1.

## game/common/character_interactions/10_tgp_interactions.txt

Git blob: `6666fd4e659695528096da843a8a74c016c564a6` — 88 matching lines / 11922 lines

```text
12: 	target_filter = recipient_domain_titles
13: 
14: 	filter_tags = { dynastic_cycle }
15: 
16: 	can_be_picked_title = {
----
376: 				has_title = title:h_china
377: 			}
378: 			situation:dynastic_cycle ?= {
379: 				any_participant_group = {
380: 					participant_group_type = conservative_movement
----
426: 	notification_text = celestial_demand_treasury_interaction_recipient_desc
427: 	common_interaction = no
428: 	filter_tags = { celestial_ministry dynastic_cycle }
429: 
430: 	interface_priority = 61
----
823: 	common_interaction = no
824: 
825: 	filter_tags = { dynastic_cycle }
826: 
827: 	interface_priority = 62
----
965: 				if = {
966: 					limit = {
967: 						top_participant_group:dynastic_cycle ?= {
968: 							has_participant_group_parameter = dynastic_cycle_send_treasury_for_merit
969: 						}
----
966: 					limit = {
967: 						top_participant_group:dynastic_cycle ?= {
968: 							has_participant_group_parameter = dynastic_cycle_send_treasury_for_merit
969: 						}
970: 					}
----
1006: 	ai_targets = {
1007: 		ai_recipients = situation_participant_group
1008: 		parameter = dynastic_cycle
1009: 		max = 20
1010: 	}
----
1123: 	notification_text = request_mentoring_interaction_notification
1124: 
1125: 	filter_tags = { dynastic_cycle celestial_ministry }
1126: 
1127: 	is_available = {
----
2254: 	ai_targets = {
2255: 		ai_recipients = situation_participant_group
2256: 		parameter = dynastic_cycle
2257: 		max = 10
2258: 	}
----
2803: 	interface_priority = 60
2804: 
2805: 	filter_tags = { dynastic_cycle }
2806: 
2807: 	is_shown = {
----
2809: 		scope:recipient != scope:actor
2810: 		scope:recipient = {
2811: 			top_participant_group:dynastic_cycle ?= {
2812: 				NOT = { participant_group_type = other_rulers }
2813: 			}
----
2819: 			limit = {
2820: 				scope:actor = {
2821: 					top_participant_group:dynastic_cycle ?= { participant_group_type = hegemon_ruler }
2822: 				}
2823: 			}
----
2822: 				}
2823: 			}
2824: 			situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement ?= {
2825: 				NOT = { participant_group_has_character = scope:recipient }
2826: 			}
----
2826: 			}
2827: 		}
2828: 		situation:dynastic_cycle.situation_participant_group:undecided_movement ?= {
2829: 			NOT = { participant_group_has_character = scope:actor }
2830: 		}
----
2831: 		scope:actor = {
2832: 			# You are not part of the same movement
2833: 			top_participant_group:dynastic_cycle = {
2834: 				NOT = { participant_group_has_character = scope:recipient }
2835: 			}
----
3029: 				scope:actor = title:h_china.holder
3030: 			}
3031: 			situation:dynastic_cycle ?= {
3032: 				situation_participant_group:pro_hegemon_movement = {
3033: 					save_scope_as = actors_movement
----
3037: 		# other characters ask to join their movement
3038: 		else = {
3039: 			situation:dynastic_cycle ?= {
3040: 				random_participant_group = {
3041: 					limit = {
----
3312: 					}
3313: 					switch = {
3314: 						trigger = top_participant_group:dynastic_cycle
3315: 						situation:dynastic_cycle.situation_participant_group:advancement_movement = {
3316: 							tgp_activate_catalyst_against_hegemon_effect = {
----
3313: 					switch = {
3314: 						trigger = top_participant_group:dynastic_cycle
3315: 						situation:dynastic_cycle.situation_participant_group:advancement_movement = {
3316: 							tgp_activate_catalyst_against_hegemon_effect = {
3317: 								HEGEMON = scope:actor.top_liege
----
3316: 							tgp_activate_catalyst_against_hegemon_effect = {
3317: 								HEGEMON = scope:actor.top_liege
3318: 								CATALYST = catalyst_movement_gained_power_advancement
3319: 							}
3320: 						}
----
3319: 							}
3320: 						}
3321: 						situation:dynastic_cycle.situation_participant_group:expansion_movement = {
3322: 							tgp_activate_catalyst_against_hegemon_effect = {
3323: 								HEGEMON = scope:actor.top_liege
----
3322: 							tgp_activate_catalyst_against_hegemon_effect = {
3323: 								HEGEMON = scope:actor.top_liege
3324: 								CATALYST = catalyst_movement_gained_power_expansion
3325: 							}
3326: 						}
----
3325: 							}
3326: 						}
3327: 						situation:dynastic_cycle.situation_participant_group:conservative_movement = {
3328: 							tgp_activate_catalyst_against_hegemon_effect = {
3329: 								HEGEMON = scope:actor.top_liege
----
3328: 							tgp_activate_catalyst_against_hegemon_effect = {
3329: 								HEGEMON = scope:actor.top_liege
3330: 								CATALYST = catalyst_movement_gained_power_conservative
3331: 							}
3332: 						}
----
3331: 							}
3332: 						}
3333: 						situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
3334: 							situation:dynastic_cycle ?= {
3335: 								if = {
----
3332: 						}
3333: 						situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
3334: 							situation:dynastic_cycle ?= {
3335: 								if = {
3336: 									limit = {
----
3336: 									limit = {
3337: 										OR = {
3338: 											situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3339: 											situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
3340: 										}
----
3337: 										OR = {
3338: 											situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3339: 											situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
3340: 										}
3341: 										situation_top_sub_region = {
----
3340: 										}
3341: 										situation_top_sub_region = {
3342: 											phase_takeover_points:situation_dynastic_cycle_phase_instability >= 0
3343: 										}
3344: 									}
----
3346: 										tgp_activate_catalyst_against_hegemon_effect = {
3347: 											HEGEMON = scope:actor.top_liege
3348: 											CATALYST = catalyst_movement_gained_power_pro_hegemon
3349: 										}
3350: 									}
----
3353: 									limit = {
3354: 										OR = {
3355: 											situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3356: 											situation_current_phase = situation_dynastic_cycle_phase_instability
3357: 										}
----
3354: 										OR = {
3355: 											situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3356: 											situation_current_phase = situation_dynastic_cycle_phase_instability
3357: 										}
3358: 										situation_top_sub_region = {
----
3357: 										}
3358: 										situation_top_sub_region = {
3359: 											phase_takeover_points:situation_dynastic_cycle_phase_chaos >= 0
3360: 										}
3361: 									}
----
3363: 										tgp_activate_catalyst_against_hegemon_effect = {
3364: 											HEGEMON = scope:actor.top_liege
3365: 											CATALYST = catalyst_movement_gained_power_pro_hegemon
3366: 										}
3367: 									}
----
3375: 		scope:recipient = {
3376: 			hidden_effect = {
3377: 				recalculate_participant_group = situation:dynastic_cycle
3378: 				every_relation = {
3379: 					type = disciple
----
3378: 				every_relation = {
3379: 					type = disciple
3380: 					recalculate_participant_group = situation:dynastic_cycle
3381: 				}
3382: 			}
----
3420: 
3421: 	is_available = {
3422: 		top_participant_group:dynastic_cycle ?= {
3423: 			NOR = {
3424: 				participant_group_type = other_rulers
----
3443: 					is_dominant_family = yes
3444: 				}
3445: 				situation:dynastic_cycle ?= { # Is a movement leader
3446: 					any_participant_group = {
3447: 						var:movement_leader ?= root
----
3455: 		base = 25
3456: 		modifier = { # Prefer getting people from movements with higher power!
3457: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3458: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3459: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
----
3456: 		modifier = { # Prefer getting people from movements with higher power!
3457: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3458: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3459: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3460: 			add = 75
----
3457: 			exists = scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3458: 			exists = scope:recipient.top_participant_group:dynastic_cycle.var:movement_power
3459: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power >= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3460: 			add = 75
3461: 		}
----
3462: 		modifier = {
3463: 			scope:recipient = {
3464: 				top_participant_group:dynastic_cycle ?= {
3465: 					participant_group_type = undecided_movement
3466: 				}
----
3471: 			scope:actor = {
3472: 				this != top_liege
3473: 				top_participant_group:dynastic_cycle ?= {
3474: 					participant_group_type = pro_hegemon_movement
3475: 				}
----
3475: 				}
3476: 			}
3477: 			scope:recipient.top_participant_group:dynastic_cycle.var:movement_power <= scope:actor.top_participant_group:dynastic_cycle.var:movement_power
3478: 			add = -65
3479: 		}
----
3513: 		# is a movement leader
3514: 		modifier = {
3515: 			situation:dynastic_cycle ?= {
3516: 				any_participant_group = {
3517: 					var:movement_leader ?= scope:recipient
----
4557: 						}
4558: 						hidden_effect = {
4559: 							situation:dynastic_cycle ?= {
4560: 								if = {
4561: 									limit = {
----
4996: 			tgp_activate_catalyst_against_hegemon_effect = {
4997: 				HEGEMON = scope:recipient
4998: 				CATALYST = catalyst_hegemon_influenced_by_interaction
4999: 			}
5000: 		}
----
5282: 	common_interaction = no
5283: 	desc = celestial_request_treasury_interaction_desc
5284: 	filter_tags = { celestial_ministry dynastic_cycle }
5285: 
5286: 	ai_min_reply_days = 4
----
5497: 			tgp_activate_catalyst_against_hegemon_effect = {
5498: 				HEGEMON = scope:recipient
5499: 				CATALYST = catalyst_hegemon_influenced_by_interaction
5500: 			}
5501: 		}
----
5518: 					target = scope:actor
5519: 				}
5520: 				situation:dynastic_cycle ?= {
5521: 					if = {
5522: 						limit = {
----
5777: 	desc = celestial_request_commander_interaction_desc
5778: 	notification_text = celestial_request_commander_interaction_notification
5779: 	filter_tags = { celestial_ministry dynastic_cycle }
5780: 
5781: 	ai_min_reply_days = 4
----
6017: 					AND = {
6018: 						title:h_china.holder.hegemon_favored_stability_phase_value < 0
6019: 						top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
6020: 					}
6021: 					AND = {
----
6021: 					AND = {
6022: 						title:h_china.holder.hegemon_favored_stability_phase_value >= 0
6023: 						top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
6024: 					}
6025: 				}
----
6180: 	desc = celestial_request_examination_support_interaction_desc
6181: 	notification_text = celestial_request_examination_support_interaction_notification
6182: 	filter_tags = { celestial_ministry dynastic_cycle }
6183: 
6184: 	ai_min_reply_days = 4
----
6388: 					AND = {
6389: 						title:h_china.holder.hegemon_favored_stability_phase_value < 0
6390: 						top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
6391: 					}
6392: 					AND = {
----
6392: 					AND = {
6393: 						title:h_china.holder.hegemon_favored_stability_phase_value >= 0
6394: 						top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
6395: 					}
6396: 				}
----
6926: 	common_interaction = no
6927: 	desc = set_favored_minister_interaction_desc
6928: 	filter_tags = { celestial_ministry dynastic_cycle }
6929: 
6930: 	#cooldown = { years = 5 }
----
7036: 		modifier = {
7037: 			add = 15
7038: 			situation:dynastic_cycle ?= {
7039: 				any_participant_group = {
7040: 					var:movement_leader ?= scope:recipient
----
7063: 	desc = celestial_movement_power_promote_interaction_desc
7064: 	common_interaction = no
7065: 	filter_tags = { dynastic_cycle }
7066: 
7067: 	interface_priority = 60
----
7089: 			exists = var:movement_power
7090: 		}
7091: 		situation:dynastic_cycle ?= {
7092: 			any_participant_group = {
7093: 				NOR = {
----
7098: 			}
7099: 		}
7100: 		situation:dynastic_cycle ?= {
7101: 			any_participant_group = {
7102: 				NOR = {
----
7222: 	ai_targets = {
7223: 		ai_recipients = situation_participant_group
7224: 		parameter = dynastic_cycle
7225: 		max = 10
7226: 	}
----
7323: 	desc = celestial_movement_power_slander_interaction_desc
7324: 	common_interaction = no
7325: 	filter_tags = { dynastic_cycle }
7326: 
7327: 	interface_priority = 60
----
7351: 			this != scope:actor
7352: 		}
7353: 		situation:dynastic_cycle ?= {
7354: 			any_participant_group = {
7355: 				NOR = {
----
7360: 			}
7361: 		}
7362: 		situation:dynastic_cycle ?= {
7363: 			any_participant_group = {
7364: 				NOR = {
----
7683: 		modifier = { # More likely to stop being a disciple if actor is a movement leader
7684: 			add = 20
7685: 			situation:dynastic_cycle ?= {
7686: 				any_participant_group = {
7687: 					var:movement_leader ?= scope:actor
----
7693: 			top_liege != scope:recipient.top_liege
7694: 			NAND = {
7695: 				any_character_situation = { situation_type = dynastic_cycle }
7696: 				situation:dynastic_cycle ?= {
7697: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
----
7694: 			NAND = {
7695: 				any_character_situation = { situation_type = dynastic_cycle }
7696: 				situation:dynastic_cycle ?= {
7697: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
7698: 				}
----
7695: 				any_character_situation = { situation_type = dynastic_cycle }
7696: 				situation:dynastic_cycle ?= {
7697: 					situation_current_phase = situation_dynastic_cycle_phase_chaos
7698: 				}
7699: 			}
----
7720: 	}
7721: 	notification_text = tgp_interaction_event.0031.desc # Intentional
7722: 	filter_tags = { dynastic_cycle }
7723: 	custom_character_sort = { merit }
7724: 	cooldown = { years = 1 }
----
7886: 	ai_targets = {
7887: 		ai_recipients = situation_participant_group
7888: 		parameter = dynastic_cycle
7889: 		max = 20
7890: 	}
----
8015: 		modifier = { # More likely to pick elder if recipient is a movement leader
8016: 			add = 20
8017: 			situation:dynastic_cycle ?= {
8018: 				any_participant_group = {
8019: 					var:movement_leader ?= scope:recipient
----
8171: 				text = celestial_request_elders_support_interaction.unlocked_expansion
8172: 				OR = {
8173: 					situation:dynastic_cycle ?= {
8174: 						situation_participant_group:expansion_movement = {
8175: 							participant_group_has_character = scope:actor
----
8203: 				text = celestial_request_elders_support_interaction.unlocked_advancement
8204: 				OR = {
8205: 					situation:dynastic_cycle ?= {
8206: 						situation_participant_group:advancement_movement = {
8207: 							participant_group_has_character = scope:actor
----
8253: 				text = celestial_request_elders_support_interaction.unlocked_conservative
8254: 				OR = {
8255: 					situation:dynastic_cycle ?= {
8256: 						situation_participant_group:conservative_movement = {
8257: 							participant_group_has_character = scope:actor
----
8655: 	ai_targets = {
8656: 		ai_recipients = situation_participant_group
8657: 		parameter = dynastic_cycle
8658: 		max = 10
8659: 	}
----
10765: 	ai_targets = {
10766: 		ai_recipients = situation_participant_group
10767: 		parameter = dynastic_cycle
10768: 		max = 20
10769: 	}
----
10808: 							government_has_flag = government_is_celestial
10809: 						}
10810: 						situation:dynastic_cycle ?= {
10811: 							situation_current_phase = situation_dynastic_cycle_phase_chaos
10812: 						}
----
10809: 						}
10810: 						situation:dynastic_cycle ?= {
10811: 							situation_current_phase = situation_dynastic_cycle_phase_chaos
10812: 						}
10813: 					}
----
10830: 			trigger_if = {
10831: 				limit = {
10832: 					situation:dynastic_cycle ?= {
10833: 						situation_current_phase = situation_dynastic_cycle_phase_chaos
10834: 					}
----
10831: 				limit = {
10832: 					situation:dynastic_cycle ?= {
10833: 						situation_current_phase = situation_dynastic_cycle_phase_chaos
10834: 					}
10835: 					scope:actor = {
----
10838: 				}
10839: 				custom_tooltip = {
10840: 					text = is_part_of_dynastic_cycle
10841: 					any_character_situation = {
10842: 						situation_type = dynastic_cycle
----
10840: 					text = is_part_of_dynastic_cycle
10841: 					any_character_situation = {
10842: 						situation_type = dynastic_cycle
10843: 					}
10844: 				}
----
11516: 					if = {
11517: 						limit = {
11518: 							exists = top_participant_group:dynastic_cycle
11519: 							any_character_situation = {
11520: 								situation_type = dynastic_cycle
----
11518: 							exists = top_participant_group:dynastic_cycle
11519: 							any_character_situation = {
11520: 								situation_type = dynastic_cycle
11521: 							}
11522: 						}
----
11521: 							}
11522: 						}
11523: 						situation:dynastic_cycle ?= {
11524: 							if = {
11525: 								limit = {
----
11730: 			change_influence = major_influence_value
11731: 		}
11732: 		situation:dynastic_cycle ?= {
11733: 			if = {
11734: 				limit = {
----
11860: 	ai_targets = {
11861: 		ai_recipients = situation_participant_group
11862: 		parameter = dynastic_cycle
11863: 		max = 20
11864: 	}
```

## game/common/character_interactions/00_tributary_interactions.txt

Git blob: `c6b2cbfc9cc590738a35e7036f93d6718e76b897` — 20 matching lines / 6168 lines

```text
1506: 					limit = {
1507: 						any_character_situation = {
1508: 							situation_type = dynastic_cycle
1509: 						}
1510: 					}
----
1512: 						root.subject_standing <= 0
1513: 						any_character_situation = {
1514: 							situation_type = dynastic_cycle
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
----
1514: 							situation_type = dynastic_cycle
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
1517: 								situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1518: 							}
----
1515: 							OR = {
1516: 								situation_current_phase = situation_dynastic_cycle_phase_instability
1517: 								situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1518: 							}
1519: 						}
----
1616: 			if = {
1617: 				limit = {
1618: 					top_participant_group:dynastic_cycle ?= {
1619: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1620: 					}
----
1617: 				limit = {
1618: 					top_participant_group:dynastic_cycle ?= {
1619: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1620: 					}
1621: 				}
----
1807: 			# TGP Dynastic Cycle in Instability phase
1808: 			modifier = {
1809: 				desc = "FACTION_REASON_DYNASTIC_CYCLE_INSTABILITY"
1810: 				add = 25
1811: 				scope:recipient = {
----
1810: 				add = 25
1811: 				scope:recipient = {
1812: 					top_participant_group:dynastic_cycle ?= {
1813: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1814: 					}
----
1811: 				scope:recipient = {
1812: 					top_participant_group:dynastic_cycle ?= {
1813: 						has_participant_group_parameter = dynastic_cycle_external_tributaries_vassals_increased_independence_desire
1814: 					}
1815: 				}
----
2758: 		modifier = {
2759: 			scope:actor = { highest_held_title_tier >= tier_hegemony }
2760: 			situation:dynastic_cycle ?= {
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
----
2760: 			situation:dynastic_cycle ?= {
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2763: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2764: 				}
----
2761: 				OR = {
2762: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2763: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2764: 				}
2765: 			}
----
2771: 			scope:actor = {
2772: 				highest_held_title_tier >= tier_hegemony
2773: 				legitimacy_level < dynastic_cycle_legitimacy_expectation
2774: 			}
2775: 			situation:dynastic_cycle ?= {
----
2773: 				legitimacy_level < dynastic_cycle_legitimacy_expectation
2774: 			}
2775: 			situation:dynastic_cycle ?= {
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
----
2775: 			situation:dynastic_cycle ?= {
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2778: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2779: 				}
----
2776: 				NOR = {
2777: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2778: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2779: 				}
2780: 			}
----
2785: 			scope:actor = {
2786: 				highest_held_title_tier >= tier_hegemony
2787: 				legitimacy_level > dynastic_cycle_legitimacy_expectation
2788: 			}
2789: 			situation:dynastic_cycle ?= {
----
2787: 				legitimacy_level > dynastic_cycle_legitimacy_expectation
2788: 			}
2789: 			situation:dynastic_cycle ?= {
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
----
2789: 			situation:dynastic_cycle ?= {
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2792: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2793: 				}
----
2790: 				NOR = {
2791: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2792: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2793: 				}
2794: 			}
```

## game/common/character_interactions/06_ep3_interactions.txt

Git blob: `00d5ecde716476648b02a69b20b9833e4ea9e8ce` — 23 matching lines / 13836 lines

```text
1688: 	common_interaction = no
1689: 	interface_priority = 175
1690: 	filter_tags = { admin_house_head celestial_ministry dynastic_cycle ceremonial_liege }
1691: 	highlighted_reason = tgp_interaction_minister_personnel_highlight_reason
1692: 
----
2978: 			tgp_activate_catalyst_against_hegemon_effect = {
2979: 				HEGEMON = scope:recipient
2980: 				CATALYST = catalyst_hegemon_influenced_by_interaction
2981: 			}
2982: 		}
----
3608: 			tgp_activate_catalyst_against_hegemon_effect = {
3609: 				HEGEMON = scope:recipient
3610: 				CATALYST = catalyst_hegemon_influenced_by_interaction
3611: 			}
3612: 			# If the minister's merit rank is too low, it will affect the dynastic cycle
----
3621: 				}
3622: 				show_as_tooltip = {
3623: 					situation:dynastic_cycle ?= {
3624: 						if = {
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
----
3623: 					situation:dynastic_cycle ?= {
3624: 						if = {
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
3626: 							trigger_situation_catalyst = {
3627: 								catalyst = catalyst_hegemon_appointing_low_merit_councillor
----
3625: 							limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
3626: 							trigger_situation_catalyst = {
3627: 								catalyst = catalyst_hegemon_appointing_low_merit_councillor
3628: 								character = scope:recipient
3629: 							}
----
5705: 			limit = {
5706: 				scope:actor = {
5707: 					exists = top_participant_group:dynastic_cycle
5708: 				}
5709: 			}
----
5709: 			}
5710: 			scope:actor = {
5711: 				top_participant_group:dynastic_cycle ?= {
5712: 					participant_group_type = advancement_movement
5713: 				}
----
5907: 			scope:actor = {
5908: 				any_character_situation = {
5909: 					situation_type = dynastic_cycle
5910: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5911: 				}
----
5908: 				any_character_situation = {
5909: 					situation_type = dynastic_cycle
5910: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
5911: 				}
5912: 			}
----
5979: 			limit = {
5980: 				scope:actor = {
5981: 					exists = top_participant_group:dynastic_cycle
5982: 				}
5983: 			}
----
5983: 			}
5984: 			scope:actor = {
5985: 				top_participant_group:dynastic_cycle ?= {
5986: 					NOT = { participant_group_type = advancement_movement }
5987: 				}
----
6167: 			scope:actor = {
6168: 				any_character_situation = {
6169: 					situation_type = dynastic_cycle
6170: 					NOT = { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
6171: 				}
----
6168: 				any_character_situation = {
6169: 					situation_type = dynastic_cycle
6170: 					NOT = { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
6171: 				}
6172: 			}
----
6707: force_governor_removal_interaction = {
6708: 	category = interaction_category_succession
6709: 	filter_tags = { admin_governor dynastic_cycle }
6710: 	icon = icon_force_governor_removal
6711: 	desc = force_governor_removal_interaction_desc
----
8038: 	common_interaction = yes
8039: 
8040: 	filter_tags = { admin_liege celestial_ministry dynastic_cycle }
8041: 
8042: 	ai_maybe = yes
----
8505: 					tgp_activate_catalyst_against_hegemon_effect = {
8506: 						HEGEMON = scope:recipient
8507: 						CATALYST = catalyst_hegemon_influenced_by_interaction
8508: 					}
8509: 				}
----
9421: 			tgp_activate_catalyst_against_hegemon_effect = {
9422: 				HEGEMON = scope:recipient
9423: 				CATALYST = catalyst_hegemon_influenced_by_interaction
9424: 			}
9425: 		}
----
9683: 			tgp_activate_catalyst_against_hegemon_effect = {
9684: 				HEGEMON = scope:recipient
9685: 				CATALYST = catalyst_hegemon_influenced_by_interaction
9686: 			}
9687: 		}
----
10125: 			tgp_activate_catalyst_against_hegemon_effect = {
10126: 				HEGEMON = scope:recipient
10127: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10128: 			}
10129: 		}
----
10289: 			tgp_activate_catalyst_against_hegemon_effect = {
10290: 				HEGEMON = scope:recipient
10291: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10292: 			}
10293: 		}
----
10721: 			tgp_activate_catalyst_against_hegemon_effect = {
10722: 				HEGEMON = scope:recipient
10723: 				CATALYST = catalyst_hegemon_influenced_by_interaction
10724: 			}
10725: 		}
----
13576: 			tgp_activate_catalyst_against_hegemon_effect = {
13577: 				HEGEMON = scope:recipient
13578: 				CATALYST = catalyst_hegemon_influenced_by_interaction
13579: 			}
13580: 		}
```

## game/common/character_interactions/00_grant_titles_interaction.txt

Git blob: `1b2a8c72c2c3f60f34156cc8863c1e772c7bbf8d` — 3 matching lines / 2530 lines

```text
2454: 			}
2455: 			show_as_tooltip = {
2456: 				situation:dynastic_cycle ?= {
2457: 					if = {
2458: 						limit = {
----
2457: 					if = {
2458: 						limit = {
2459: 							situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor
2460: 							title:h_china.holder = scope:puppet_or_actor
2461: 						}
----
2461: 						}
2462: 						trigger_situation_catalyst = {
2463: 							catalyst = catalyst_hegemon_appointing_low_merit_governor
2464: 							character =  scope:recipient
2465: 						}
```

## game/common/casus_belli_types/10_tgp_china_wars.txt

Git blob: `e0697cedb138458618ade7496ae692f4da1a44c6` — 29 matching lines / 3307 lines

```text
13: 			has_title = title:h_china
14: 		}
15: 		top_participant_group:dynastic_cycle ?= {
16: 			OR = {
17: 				AND = {
----
16: 			OR = {
17: 				AND = {
18: 					has_participant_group_parameter = dynastic_cycle_vassal_internal_wars_allowed
19: 					root = {
20: 						NOT = {
----
24: 				}
25: 				AND = {
26: 					has_participant_group_parameter = dynastic_cycle_vassal_seize_cb
27: 					root = {
28: 						OR = {
----
340: 			has_title = title:e_minister_grand_marshal
341: 		}
342: 		situation:dynastic_cycle ?= {
343: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
344: 		}
----
341: 		}
342: 		situation:dynastic_cycle ?= {
343: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
344: 		}
345: 	}
----
346: 
347: 	allowed_for_character_display_regardless = {
348: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
349: 	}
350: 
----
661: 			has_title = title:h_china
662: 		}
663: 		top_participant_group:dynastic_cycle ?= {
664: 			OR = {
665: 				AND = {
----
664: 			OR = {
665: 				AND = {
666: 					has_participant_group_parameter = dynastic_cycle_vassal_internal_wars_allowed
667: 					root = {
668: 						NOT = {
----
672: 				}
673: 				AND = {
674: 					has_participant_group_parameter = dynastic_cycle_vassal_seize_cb
675: 					root = {
676: 						OR = {
----
1006: 			has_title = title:e_minister_grand_marshal
1007: 		}
1008: 		situation:dynastic_cycle ?= {
1009: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
1010: 		}
----
1007: 		}
1008: 		situation:dynastic_cycle ?= {
1009: 			has_situation_top_phase_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
1010: 		}
1011: 	}
----
1012: 
1013: 	allowed_for_character_display_regardless = {
1014: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
1015: 	}
1016: 
----
1377: 	allowed_against_character_display_regardless = {
1378: 		custom_tooltip = {
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
----
1378: 		custom_tooltip = {
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1382: 			}
----
1379: 			text = dynastic_cycle_not_corruption_phase_desc
1380: 			situation:dynastic_cycle ?= {
1381: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1382: 			}
1383: 		}
----
1411: 							}
1412: 						}
1413: 						desc = dynastic_cycle_hegemon_legitimacy_level_cost_desc
1414: 					}
1415: 				}
----
1732: 
1733: 	allowed_for_character = {
1734: 		situation:dynastic_cycle ?= {
1735: 			situation_current_phase = situation_dynastic_cycle_phase_chaos
1736: 		}
----
1733: 	allowed_for_character = {
1734: 		situation:dynastic_cycle ?= {
1735: 			situation_current_phase = situation_dynastic_cycle_phase_chaos
1736: 		}
1737: 		NAND = {
----
1745: 				is_ai = yes
1746: 				NOR = {
1747: 					exists = top_participant_group:dynastic_cycle
1748: 					any_owned_story = {
1749: 						story_type = story_take_mandate_of_heaven
----
1778: 	}
1779: 	allowed_for_character_display_regardless = {
1780: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
1781: 		custom_tooltip = {
1782: 			text = has_gok_story_tt
----
1790: 	allowed_against_character = {
1791: 		#Must be within Dynastic Cycle
1792: 		exists = top_participant_group:dynastic_cycle
1793: 	}
1794: 
----
2148: 
2149: 	allowed_for_character = {
2150: 		situation:dynastic_cycle ?= {
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
----
2149: 	allowed_for_character = {
2150: 		situation:dynastic_cycle ?= {
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
2153: 		top_participant_group:dynastic_cycle ?= {
----
2151: 			NOT = { situation_current_phase = situation_dynastic_cycle_phase_chaos }
2152: 		}
2153: 		top_participant_group:dynastic_cycle ?= {
2154: 			participant_group_type = hegemon_ruler
2155: 		}
----
2156: 	}
2157: 	allowed_against_character = {
2158: 		exists = top_participant_group:dynastic_cycle
2159: 	}
2160: 
----
2198: 		OR = {
2199: 			scope:attacker = {
2200: 				top_participant_group:dynastic_cycle ?= {
2201: 					NOT = {
2202: 						participant_group_type = hegemon_ruler
----
2226: 				trigger = {
2227: 					scope:attacker = {
2228: 						top_participant_group:dynastic_cycle ?= {
2229: 							NOT = {
2230: 								participant_group_type = hegemon_ruler
----
2515: 		has_tgp_dlc_trigger = yes
2516: 		title:h_china.holder ?= root
2517: 		top_participant_group:dynastic_cycle ?= {
2518: 			has_participant_group_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
2519: 		}
----
2516: 		title:h_china.holder ?= root
2517: 		top_participant_group:dynastic_cycle ?= {
2518: 			has_participant_group_parameter = dynastic_cycle_hegemon_unlocks_external_casus_belli
2519: 		}
2520: 	}
```

## game/common/casus_belli_groups/00_casus_belli_groups.txt

Git blob: `f7cf33d76f2c12113114abf1502eb074901e46cf` — 10 matching lines / 200 lines

```text
19: 		herders_and_tributary_constraints = yes
20: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
21: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
22: 		tgp_war_ban_all_ministers_trigger = yes
23: 	}
----
39: 		herders_and_tributary_constraints = yes
40: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
41: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
42: 		tgp_war_ban_all_ministers_trigger = yes
43: 	}
----
49: 	allowed_for_character = {
50: 		herders_and_tributary_constraints = yes
51: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
52: 		tgp_war_ban_all_ministers_trigger = yes
53: 	}
----
58: 		herders_and_tributary_constraints = yes
59: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
60: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
61: 		tgp_war_ban_all_ministers_trigger = yes
62: 		NOT = { government_has_flag = government_is_theocracy }
----
77: 		herders_and_tributary_constraints = yes
78: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
79: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
80: 		tgp_war_ban_all_ministers_trigger = yes
81: 		NOT = { government_has_flag = government_is_theocracy }
----
95: 		herders_and_tributary_constraints = yes
96: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
97: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
98: 		tgp_war_ban_all_ministers_trigger = yes
99: 		NOT = { government_has_flag = government_is_theocracy }
----
105: 		herders_and_tributary_constraints = yes
106: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
107: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
108: 		tgp_war_ban_all_ministers_trigger = yes
109: 		NOT = { government_has_flag = government_is_theocracy }
----
115: 		herders_and_tributary_constraints = yes
116: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
117: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
118: 		tgp_war_ban_all_ministers_trigger = yes
119: 		NOT = { government_has_flag = government_is_theocracy }
----
126: 		herders_and_tributary_constraints = yes
127: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
128: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
129: 		tgp_war_ban_all_ministers_trigger = yes
130: 		NOT = { government_has_flag = government_is_theocracy }
----
136: 		herders_and_tributary_constraints = yes
137: 		pam_personal_pacifism_offensive_war_ban_trigger = yes
138: 		tgp_dynastic_cycle_offensive_wars_ban_trigger = yes
139: 		tgp_war_ban_all_ministers_trigger = yes
140: 		OR = {
```

## game/common/scripted_effects/10_dlc_tgp_scripted_effects.txt

Git blob: `1922ef58ddb847967c1b29dee6999d5b8d4213c6` — 31 matching lines / 9500 lines

```text
204: 			scope:owner ?= {
205: 				any_character_situation = {
206: 					situation_type = dynastic_cycle
207: 				}
208: 			}
----
215: 		}
216: 		random_character_situation = {
217: 			limit = { situation_type = dynastic_cycle }
218: 			switch = {
219: 				trigger = scope:great_project.great_project_type
----
288: 				limit = {
289: 					any_character_situation = {
290: 						situation_type = dynastic_cycle
291: 						has_situation_top_phase_parameter = dynastic_cycle_great_projects_increased_legitimacy
292: 					}
----
289: 					any_character_situation = {
290: 						situation_type = dynastic_cycle
291: 						has_situation_top_phase_parameter = dynastic_cycle_great_projects_increased_legitimacy
292: 					}
293: 				}
----
533: 		}
534: 		custom_tooltip = every_disciple_adds_movement_power_tt
535: 		hidden_effect = { recalculate_participant_group = situation:dynastic_cycle }
536: 	}
537: }
----
563: 		limit = {
564: 			any_character_situation = {
565: 				situation_type = dynastic_cycle
566: 				any_participant_group = {
567: 					participant_group_has_character = scope:new_movement_leader
----
579: 			subject = scope:new_movement_leader
580: 			object = scope:leaders_movement
581: 			situation:dynastic_cycle ?= {
582: 				random_participant_group = {
583: 					limit = {
----
600: 			switch = {
601: 				trigger = scope:leaders_movement
602: 				situation:dynastic_cycle.situation_participant_group:expansion_movement = {
603: 					tgp_activate_catalyst_against_hegemon_effect = {
604: 						HEGEMON = scope:new_movement_leader.top_liege
----
603: 					tgp_activate_catalyst_against_hegemon_effect = {
604: 						HEGEMON = scope:new_movement_leader.top_liege
605: 						CATALYST = catalyst_movement_gained_power_expansion
606: 					}
607: 				}
----
606: 					}
607: 				}
608: 				situation:dynastic_cycle.situation_participant_group:advancement_movement = {
609: 					tgp_activate_catalyst_against_hegemon_effect = {
610: 						HEGEMON = scope:new_movement_leader.top_liege
----
609: 					tgp_activate_catalyst_against_hegemon_effect = {
610: 						HEGEMON = scope:new_movement_leader.top_liege
611: 						CATALYST = catalyst_movement_gained_power_advancement
612: 					}
613: 				}
----
612: 					}
613: 				}
614: 				situation:dynastic_cycle.situation_participant_group:conservative_movement = {
615: 					tgp_activate_catalyst_against_hegemon_effect = {
616: 						HEGEMON = scope:new_movement_leader.top_liege
----
615: 					tgp_activate_catalyst_against_hegemon_effect = {
616: 						HEGEMON = scope:new_movement_leader.top_liege
617: 						CATALYST = catalyst_movement_gained_power_conservative
618: 					}
619: 				}
----
618: 					}
619: 				}
620: 				situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
621: 					tgp_activate_catalyst_against_hegemon_effect = {
622: 						HEGEMON = scope:new_movement_leader.top_liege
----
621: 					tgp_activate_catalyst_against_hegemon_effect = {
622: 						HEGEMON = scope:new_movement_leader.top_liege
623: 						CATALYST = catalyst_movement_gained_power_pro_hegemon
624: 					}
625: 				}
----
914: 			}
915: 		}
916: 		situation:dynastic_cycle ?= {
917: 			if = {
918: 				limit = {
----
917: 			if = {
918: 				limit = {
919: 				situation_top_has_catalyst = catalyst_hegemon_influenced_by_interaction
920: 				}
921: 				trigger_situation_catalyst = {
----
920: 				}
921: 				trigger_situation_catalyst = {
922: 				catalyst = catalyst_hegemon_influenced_by_interaction
923: 				character = scope:petitioner
924: 				}
----
990: 		}
991: 	}
992: 	situation:dynastic_cycle ?= {
993: 		if = {
994: 			limit = {
----
993: 		if = {
994: 			limit = {
995: 			situation_top_has_catalyst = catalyst_hegemon_influenced_by_interaction
996: 			}
997: 			trigger_situation_catalyst = {
----
996: 			}
997: 			trigger_situation_catalyst = {
998: 			catalyst = catalyst_hegemon_influenced_by_interaction
999: 			character = scope:petitioner
1000: 			}
----
1033: 					scope:petitioner.var:movement_petition ?= flag:hold_examinations
1034: 				}
1035: 				situation:dynastic_cycle = {
1036: 					if = {
1037: 						limit = {
----
1116: 		text = new_movement_becomes_favored_desc
1117: 		object = scope:movement_to_be_favored
1118: 		situation:dynastic_cycle ?= {
1119: 			random_participant_group = {
1120: 				limit = {
----
1134: 	custom_tooltip = new_movement_becomes_favored_power_increase
1135: 
1136: 	situation:dynastic_cycle ?= {
1137: 		random_participant_group = {
1138: 			limit = {
----
1441: 		}
1442: 		update_character_movement_power_effect = yes
1443: 		top_participant_group:dynastic_cycle ?= {
1444: 			update_movement_power_effect = yes
1445: 		}
----
1511: 		}
1512: 		update_character_movement_power_effect = yes
1513: 		top_participant_group:dynastic_cycle ?= {
1514: 			update_movement_power_effect = yes
1515: 		}
----
1587: 			}
1588: 			update_character_movement_power_effect = yes
1589: 			top_participant_group:dynastic_cycle ?= {
1590: 				update_movement_power_effect = yes
1591: 			}
----
1891: 				NOT = {
1892: 					any_character_situation = {
1893: 						situation_type = dynastic_cycle
1894: 					}
1895: 				}
----
1896: 				top_liege ?= {
1897: 					any_character_situation = {
1898: 						situation_type = dynastic_cycle
1899: 					}
1900: 				}
----
1901: 			}
1902: 
1903: 			situation:dynastic_cycle = {
1904: 				add_manual_participant = prev
1905: 			}
----
2127: 		}
2128: 
2129: 		situation:dynastic_cycle = {
2130: 			remove_manual_participant = prev
2131: 		}
```

## game/common/scripted_triggers/10_tgp_triggers.txt

Git blob: `24baf3ed08c7dbe1f065a93b49e8c1ca581c048c` — 8 matching lines / 1123 lines

```text
731: 	$CHARACTER$ = {
732: 		OR = {
733: 			top_participant_group:dynastic_cycle ?= { participant_group_type = conservative_movement }
734: 			has_title = title:e_minister_of_personnel
735: 			AND = {
----
752: 	$CHARACTER$ = {
753: 		OR = {
754: 			top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
755: 			AND = {
756: 				this = top_liege
----
758: 					ai_greed < 0
759: 					ai_rationality > 75
760: 					situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
761: 				}
762: 			}
----
772: 	$CHARACTER$ = {
773: 		OR = {
774: 			top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
775: 			has_title = title:e_minister_grand_marshal
776: 			has_title = title:e_minister_of_war
----
779: 				OR = {
780: 					ai_boldness > 90
781: 					situation:dynastic_cycle ?= {
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
----
781: 					situation:dynastic_cycle ?= {
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
784: 							situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
785: 						}
----
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
784: 							situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
785: 						}
786: 					}
----
799: 	$CHARACTER$ = {
800: 		OR = {
801: 			top_participant_group:dynastic_cycle ?= { participant_group_type = pro_hegemon_movement }
802: 			has_trait = loyal
803: 			AND = {
```

## game/common/scripted_triggers/00_secret_type_triggers.txt

Git blob: `91f7790af8efcf9cb7735ca9efe7cb51779e3b61` — 2 matching lines / 526 lines

```text
472: }
473: 
474: secret_siphoned_treasury_is_valid_trigger = {
475: 	# Both of y'all must still have treasuries
476: 	$OWNER$ = { has_treasury = yes }
----
479: 
480: # criminal only if the target is your liege or the Hegemon
481: secret_siphoned_treasury_is_criminal_trigger = {
482: 	$TARGET$ = {
483: 		OR = {
```

## game/common/laws/00_realm_laws.txt

Git blob: `92a99c13e001904e243cd7d768565126b4ec6b17` — 9 matching lines / 3562 lines

```text
2486: 				this = title:h_china.holder
2487: 			}
2488: 			situation:dynastic_cycle ?= {
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
----
2488: 			situation:dynastic_cycle ?= {
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2491: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2492: 				}
----
2489: 				NOR = {
2490: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2491: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2492: 				}
2493: 			}
----
2944: 				this = title:h_china.holder
2945: 			}
2946: 			situation:dynastic_cycle ?= {
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
----
2946: 			situation:dynastic_cycle ?= {
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2949: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2950: 				}
----
2947: 				NOR = {
2948: 					situation_current_phase = situation_dynastic_cycle_phase_instability
2949: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
2950: 				}
2951: 			}
----
3277: 				this = title:h_china.holder
3278: 			}
3279: 			situation:dynastic_cycle ?= {
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
----
3279: 			situation:dynastic_cycle ?= {
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
3282: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3283: 				}
----
3280: 				NOR = {
3281: 					situation_current_phase = situation_dynastic_cycle_phase_instability
3282: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
3283: 				}
3284: 			}
```

## game/common/laws/02_admininistrative_laws.txt

Git blob: `862ca2bddd9524379cfb2e273886016b89fb4d7d` — 15 matching lines / 3524 lines

```text
596: 				OR = { # AI should want this if warlike, or if in the expansion phase, regardless of personality
597: 					ai_has_warlike_personality = yes
598: 					situation:dynastic_cycle ?= {
599: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
600: 					}
----
597: 					ai_has_warlike_personality = yes
598: 					situation:dynastic_cycle ?= {
599: 						situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
600: 					}
601: 				}
----
627: 				this = title:h_china.holder
628: 			}
629: 			situation:dynastic_cycle ?= {
630: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
631: 			}
----
628: 			}
629: 			situation:dynastic_cycle ?= {
630: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
631: 			}
632: 		}
----
1369: 		exists = title:e_minister_chancellor.holder
1370: 		OR = {
1371: 			situation:dynastic_cycle ?= {
1372: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1373: 			}
----
1370: 		OR = {
1371: 			situation:dynastic_cycle ?= {
1372: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1373: 			}
1374: 			is_movement_in_power = {
----
1408: 		if = {
1409: 			limit = {
1410: 				situation:dynastic_cycle ?= {
1411: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1412: 				}
----
1409: 			limit = {
1410: 				situation:dynastic_cycle ?= {
1411: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1412: 				}
1413: 			}
----
1446: 	can_pass = {
1447: 		exists = title:e_minister_grand_marshal.holder
1448: 		situation:dynastic_cycle ?= {
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
----
1448: 		situation:dynastic_cycle ?= {
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1451: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1452: 			}
----
1449: 			NOR = {
1450: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1451: 				situation_current_phase = situation_dynastic_cycle_phase_instability
1452: 			}
1453: 			situation_participant_group:expansion_movement ?= {
----
1545: 	can_pass = {
1546: 		exists = title:e_minister_censor.holder
1547: 		situation:dynastic_cycle ?= {
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
----
1547: 		situation:dynastic_cycle ?= {
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1550: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1551: 			}
----
1548: 			NOR = {
1549: 				situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
1550: 				situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
1551: 			}
1552: 		}
----
1551: 			}
1552: 		}
1553: 		situation:dynastic_cycle.situation_participant_group:conservative_movement ?= {
1554: 			save_temporary_scope_as = my_movement
1555: 
```

## game/common/succession_appointment/celestial_minister.txt

Git blob: `94512db65bd47eefdc6a08f57e0d178b36ac853b` — 9 matching lines / 270 lines

```text
96: 				limit = {
97: 					top_liege = { has_title = title:h_china }
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
----
97: 					top_liege = { has_title = title:h_china }
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
101: 					}
----
98: 					situation:dynastic_cycle ?= {
99: 						has_variable = dynastic_cycle_favored_culture
100: 						root.culture = var:dynastic_cycle_favored_culture
101: 					}
102: 				}
----
103: 				add = {
104: 					value = 100
105: 					desc = dynastic_cycle_conquerer_promoted_culture
106: 				}
107: 			}
----
121: 			if = {
122: 				limit = {
123: 					situation:dynastic_cycle ?= {
124: 						situation_participant_group:expansion_movement = {
125: 							participant_group_has_character = root
----
135: 			if = {
136: 				limit = {
137: 					situation:dynastic_cycle ?= {
138: 						situation_participant_group:advancement_movement = {
139: 							participant_group_has_character = root
----
149: 			if = {
150: 				limit = {
151: 					situation:dynastic_cycle ?= {
152: 						situation_participant_group:pro_hegemon_movement = {
153: 							participant_group_has_character = root
----
163: 			if = {
164: 				limit = {
165: 					situation:dynastic_cycle ?= {
166: 						situation_participant_group:pro_hegemon_movement = {
167: 							participant_group_has_character = root
----
177: 			if = {
178: 				limit = {
179: 					situation:dynastic_cycle ?= {
180: 						situation_participant_group:conservative_movement = {
181: 							participant_group_has_character = root
```
