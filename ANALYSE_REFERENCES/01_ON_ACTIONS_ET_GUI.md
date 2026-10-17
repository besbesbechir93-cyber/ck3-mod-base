# REFERENCES VANILLA PARTAGEES — ON_ACTIONS ET GUI

Ces extraits identifient le code chinois présent dans des fichiers vanilla communs. **Ne pas remplacer les fichiers partagés** et ne pas installer les extraits en tant que scripts actifs.

Version source: CK3 1.20.0.3 / `besbesbechir93-cyber/ck3-mod-base`.

## game/common/on_action/game_start.txt

Références directes : 7 ; SHA : `a095eb1ddb1ad3b8ccf6a163dea7b9b91b041fd9`.

Ligne 1442 :
```
1440: 		}
1441: 		# DYNASTIC CYCLE SETUP
1442: 		situation:dynastic_cycle ?= {
1443: 			title:h_china = {
1444: 				set_variable = {
```

Ligne 1454 :
```
1452: 				every_situation_sub_region = {
1453: 					add_takeover_phase_points = {
1454: 					   phase = situation_dynastic_cycle_phase_chaos
1455: 					   points = 800
1456: 					}
```

Ligne 2346 :
```
2344: 				if = {
2345: 					limit = {
2346: 						situation:dynastic_cycle ?= {
2347: 							OR = {
2348: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 2348 :
```
2346: 						situation:dynastic_cycle ?= {
2347: 							OR = {
2348: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2349: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2350: 							}
```

Ligne 2349 :
```
2347: 							OR = {
2348: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2349: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2350: 							}
2351: 						}
```

Ligne 3452 :
```
3450: 					if = { # We adjust Merit depending on the dynastic cycle phase
3451: 						limit = {
3452: 							situation:dynastic_cycle ?= {
3453: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3454: 							}
```

Ligne 3453 :
```
3451: 						limit = {
3452: 							situation:dynastic_cycle ?= {
3453: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3454: 							}
3455: 						}
```

## game/common/on_action/yearly_on_actions.txt

Références directes : 22 ; SHA : `7d43063f3c547ae09c8fa002a2817778b12309b0`.

Ligne 773 :
```
771: 					limit = {
772: 						has_title = title:h_china
773: 						exists = top_participant_group:dynastic_cycle
774: 					}
775: 					every_tributary = { # update tributary favor
```

Ligne 779 :
```
777: 						add_subject_standing = {
778: 							value = {
779: 								situation:dynastic_cycle = {
780: 									switch = {
781: 										trigger = situation_current_phase
```

Ligne 782 :
```
780: 									switch = {
781: 										trigger = situation_current_phase
782: 										situation_dynastic_cycle_phase_stability = {
783: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
784: 										}
```

Ligne 783 :
```
781: 										trigger = situation_current_phase
782: 										situation_dynastic_cycle_phase_stability = {
783: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
784: 										}
785: 										situation_dynastic_cycle_phase_stability_expansion = {
```

Ligne 785 :
```
783: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
784: 										}
785: 										situation_dynastic_cycle_phase_stability_expansion = {
786: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
787: 										}
```

Ligne 786 :
```
784: 										}
785: 										situation_dynastic_cycle_phase_stability_expansion = {
786: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
787: 										}
788: 										situation_dynastic_cycle_phase_stability_advancement = {
```

Ligne 788 :
```
786: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
787: 										}
788: 										situation_dynastic_cycle_phase_stability_advancement = {
789: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
790: 										}
```

Ligne 789 :
```
787: 										}
788: 										situation_dynastic_cycle_phase_stability_advancement = {
789: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
790: 										}
791: 										situation_dynastic_cycle_phase_instability = {
```

Ligne 791 :
```
789: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
790: 										}
791: 										situation_dynastic_cycle_phase_instability = {
792: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
793: 										}
```

Ligne 792 :
```
790: 										}
791: 										situation_dynastic_cycle_phase_instability = {
792: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
793: 										}
794: 										situation_dynastic_cycle_phase_instability_conquest = {
```

Ligne 794 :
```
792: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
793: 										}
794: 										situation_dynastic_cycle_phase_instability_conquest = {
795: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
796: 										}
```

Ligne 795 :
```
793: 										}
794: 										situation_dynastic_cycle_phase_instability_conquest = {
795: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
796: 										}
797: 										situation_dynastic_cycle_phase_chaos = {
```

Ligne 797 :
```
795: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
796: 										}
797: 										situation_dynastic_cycle_phase_chaos = {
798: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_chaos
799: 										}
```

Ligne 798 :
```
796: 										}
797: 										situation_dynastic_cycle_phase_chaos = {
798: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_chaos
799: 										}
800: 									}
```

Ligne 823 :
```
821: 				exists = suzerain
822: 				suzerain = { highest_held_title_tier = tier_hegemony }
823: 				NOT = { exists = suzerain.top_participant_group:dynastic_cycle }
824: 			}
825: 		}
```

Ligne 2649 :
```
2647: 			limit = {
2648: 				has_dlc_feature = all_under_heaven
2649: 				top_participant_group:dynastic_cycle ?= {
2650: 					participant_group_type = advancement_movement
2651: 				}
```

Ligne 4276 :
```
4274: 
4275: 		# TGP - Dynastic Cycle Events
4276: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
```

Ligne 4277 :
```
4275: 		# TGP - Dynastic Cycle Events
4276: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
```

Ligne 4278 :
```
4276: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
```

Ligne 4279 :
```
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4281: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
```

Ligne 4280 :
```
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4281: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
4282: 
```

Ligne 4281 :
```
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4281: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
4282: 
4283: 		# TGP - Confucianism Events
```

## game/common/on_action/title_on_actions.txt

Références directes : 22 ; SHA : `bc3d2716cb43715cdafa981f6a6504e84df746b9`.

Ligne 114 :
```
112: 				scope:landed_title = title:h_china
113: 			}
114: 			situation:dynastic_cycle ?= {
115: 				if = {
116: 					limit = {
```

Ligne 117 :
```
115: 				if = {
116: 					limit = {
117: 						situation_top_has_catalyst = catalyst_hegemon_lost_mandate_of_heaven
118: 					}
119: 					trigger_situation_catalyst = {
```

Ligne 120 :
```
118: 					}
119: 					trigger_situation_catalyst = {
120: 						catalyst = catalyst_hegemon_lost_mandate_of_heaven
121: 						character = root
122: 					}
```

Ligne 1626 :
```
1624: 								is_valid_celestial_dynasty = no
1625: 							}
1626: 							situation:dynastic_cycle = {
1627: 								situation_top_sub_region = {
1628: 									change_phase = { phase = situation_dynastic_cycle_phase_instability_conquest }
```

Ligne 1628 :
```
1626: 							situation:dynastic_cycle = {
1627: 								situation_top_sub_region = {
1628: 									change_phase = { phase = situation_dynastic_cycle_phase_instability_conquest }
1629: 								}
1630: 							}
```

Ligne 1634 :
```
1632: 						else_if = {
1633: 							limit = {
1634: 								situation:dynastic_cycle ?= {
1635: 									situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1636: 								}
```

Ligne 1635 :
```
1633: 							limit = {
1634: 								situation:dynastic_cycle ?= {
1635: 									situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1636: 								}
1637: 							}
```

Ligne 1638 :
```
1636: 								}
1637: 							}
1638: 							situation:dynastic_cycle = {
1639: 								situation_top_sub_region = {
1640: 									change_phase = { phase = situation_dynastic_cycle_phase_instability }
```

Ligne 1640 :
```
1638: 							situation:dynastic_cycle = {
1639: 								situation_top_sub_region = {
1640: 									change_phase = { phase = situation_dynastic_cycle_phase_instability }
1641: 								}
1642: 							}
```

Ligne 1651 :
```
1649: 							current_date_is_start_date_trigger = no # We check this to avoid potentially triggering this immediately on game start
1650: 						}
1651: 						situation:dynastic_cycle = {
1652: 							if = {
1653: 								limit = {
```

Ligne 1661 :
```
1659: 					}
1660: 					# Clear the Strengthen Capital great project cooldown
1661: 					situation:dynastic_cycle ?= {
1662: 						if = {
1663: 							limit = { has_variable = gp_strengthen_capital_cooldown }
```

Ligne 2256 :
```
2254: 				has_global_variable = game_has_started  # Don't mess up for initialization
2255: 			}
2256: 			situation:dynastic_cycle ?= {
2257: 				if = {
2258: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
```

Ligne 2258 :
```
2256: 			situation:dynastic_cycle ?= {
2257: 				if = {
2258: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
2259: 					trigger_situation_catalyst = {
2260: 						catalyst = catalyst_hegemon_appointing_low_merit_governor
```

Ligne 2260 :
```
2258: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
2259: 					trigger_situation_catalyst = {
2260: 						catalyst = catalyst_hegemon_appointing_low_merit_governor
2261: 						character = scope:previous_holder
2262: 					}
```

Ligne 2275 :
```
2273: 				NOT = { has_appointment_level_for_title = scope:title }
2274: 			}
2275: 			situation:dynastic_cycle ?= {
2276: 				if = {
2277: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
```

Ligne 2277 :
```
2275: 			situation:dynastic_cycle ?= {
2276: 				if = {
2277: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
2278: 					trigger_situation_catalyst = {
2279: 						catalyst = catalyst_hegemon_appointing_low_merit_councillor
```

Ligne 2279 :
```
2277: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
2278: 					trigger_situation_catalyst = {
2279: 						catalyst = catalyst_hegemon_appointing_low_merit_councillor
2280: 						character = root
2281: 					}
```

Ligne 4098 :
```
4096: 				is_landed = no
4097: 				tgp_is_any_minister = no
4098: 				any_character_situation = { this = situation:dynastic_cycle }
4099: 			}
4100: 			situation:dynastic_cycle = {
```

Ligne 4100 :
```
4098: 				any_character_situation = { this = situation:dynastic_cycle }
4099: 			}
4100: 			situation:dynastic_cycle = {
4101: 				remove_manual_participant = prev
4102: 			}
```

Ligne 5004 :
```
5002: 		if = {
5003: 			limit = {
5004: 				exists = top_participant_group:dynastic_cycle
5005: 				NOT = {
5006: 					has_title = title:h_china
```

Ligne 5010 :
```
5008: 				OR = {
5009: 					liege = root
5010: 					liege.top_participant_group:dynastic_cycle ?= {
5011: 						participant_group_type = other_rulers
5012: 					}
```

Ligne 5019 :
```
5017: 				remove_variable = movement_member
5018: 			}
5019: 			recalculate_participant_group = situation:dynastic_cycle
5020: 		}
5021: 
```

## game/common/on_action/war_on_actions.txt

Références directes : 23 ; SHA : `d888cf9390e5100c6eae762ea2e62a0601d399a7`.

Ligne 1113 :
```
1111: 					}
1112: 				}
1113: 				situation:dynastic_cycle ?= {
1114: 					if = {
1115: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
```

Ligne 1115 :
```
1113: 				situation:dynastic_cycle ?= {
1114: 					if = {
1115: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
1116: 						trigger_situation_catalyst = {
1117: 							catalyst = catalyst_hegemon_in_civil_war
```

Ligne 1117 :
```
1115: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
1116: 						trigger_situation_catalyst = {
1117: 							catalyst = catalyst_hegemon_in_civil_war
1118: 							character = scope:attacker
1119: 						}
```

Ligne 1502 :
```
1500: 				limit = {
1501: 					exists = title:h_china.holder
1502: 					top_participant_group:dynastic_cycle ?= {
1503: 						has_participant_group_parameter = dynastic_cycle_hegemon_legitimacy_from_external_conquest
1504: 					}
```

Ligne 1503 :
```
1501: 					exists = title:h_china.holder
1502: 					top_participant_group:dynastic_cycle ?= {
1503: 						has_participant_group_parameter = dynastic_cycle_hegemon_legitimacy_from_external_conquest
1504: 					}
1505: 					any_in_list = {
```

Ligne 1522 :
```
1520: 					send_interface_message = {
1521: 						type = event_struggle_good
1522: 						title = dynastic_cycle_hegemon_legitimacy_from_external_conquest_title
1523: 						left_icon = scope:defender
1524: 						right_icon = scope:highest_target_title
```

Ligne 1538 :
```
1536: 					send_interface_message = {
1537: 						type = event_struggle_good
1538: 						title = dynastic_cycle_hegemon_legitimacy_from_external_conquest_title
1539: 						left_icon = scope:defender
1540: 						right_icon = scope:highest_target_title
```

Ligne 1556 :
```
1554: 					has_title = title:h_china
1555: 				}
1556: 				situation:dynastic_cycle ?= {
1557: 					if = {
1558: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
```

Ligne 1558 :
```
1556: 				situation:dynastic_cycle ?= {
1557: 					if = {
1558: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
1559: 						trigger_situation_catalyst = {
1560: 							catalyst = catalyst_hegemon_won_war
```

Ligne 1560 :
```
1558: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
1559: 						trigger_situation_catalyst = {
1560: 							catalyst = catalyst_hegemon_won_war
1561: 							character = scope:attacker
1562: 						}
```

Ligne 1573 :
```
1571: 					has_title = title:h_china
1572: 				}
1573: 				situation:dynastic_cycle ?= {
1574: 					if = {
1575: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
```

Ligne 1575 :
```
1573: 				situation:dynastic_cycle ?= {
1574: 					if = {
1575: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
1576: 						trigger_situation_catalyst = {
1577: 							catalyst = catalyst_hegemon_lost_war
```

Ligne 1577 :
```
1575: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
1576: 						trigger_situation_catalyst = {
1577: 							catalyst = catalyst_hegemon_lost_war
1578: 							character = scope:attacker
1579: 						}
```

Ligne 1583 :
```
1581: 					if = {
1582: 						limit = {
1583: 							situation_top_has_catalyst = catalyst_hegemon_lost_defensive_territorial_war
1584: 							any_in_list = { list = target_titles }
1585: 						}
```

Ligne 1587 :
```
1585: 						}
1586: 						trigger_situation_catalyst = {
1587: 							catalyst = catalyst_hegemon_lost_defensive_territorial_war
1588: 							character = scope:attacker
1589: 						}
```

Ligne 1593 :
```
1591: 					if = {
1592: 						limit = {
1593: 							situation_top_has_catalyst = catalyst_hegemon_lost_capital_in_war
1594: 							any_in_list = {
1595: 								list = target_titles
```

Ligne 1600 :
```
1598: 						}
1599: 						trigger_situation_catalyst = {
1600: 							catalyst = catalyst_hegemon_lost_capital_in_war
1601: 							character = scope:attacker
1602: 						}
```

Ligne 2182 :
```
2180: 					has_title = title:h_china
2181: 				}
2182: 				situation:dynastic_cycle ?= {
2183: 					if = {
2184: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
```

Ligne 2184 :
```
2182: 				situation:dynastic_cycle ?= {
2183: 					if = {
2184: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
2185: 						trigger_situation_catalyst = {
2186: 							catalyst = catalyst_hegemon_lost_war
```

Ligne 2186 :
```
2184: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
2185: 						trigger_situation_catalyst = {
2186: 							catalyst = catalyst_hegemon_lost_war
2187: 							character = scope:defender
2188: 						}
```

Ligne 2198 :
```
2196: 					has_title = title:h_china
2197: 				}
2198: 				situation:dynastic_cycle ?= {
2199: 					if = {
2200: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
```

Ligne 2200 :
```
2198: 				situation:dynastic_cycle ?= {
2199: 					if = {
2200: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
2201: 						trigger_situation_catalyst = {
2202: 							catalyst = catalyst_hegemon_won_war
```

Ligne 2202 :
```
2200: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
2201: 						trigger_situation_catalyst = {
2202: 							catalyst = catalyst_hegemon_won_war
2203: 							character = scope:defender
2204: 						}
```

## game/common/on_action/death.txt

Références directes : 5 ; SHA : `c638fca7bb110ea2ae3224a7c181092e03d41347`.

Ligne 1765 :
```
1763: 			}
1764: 			save_scope_as = imperial_death
1765: 			situation:dynastic_cycle = {
1766: 				if = {
1767: 					limit = {
```

Ligne 1769 :
```
1767: 					limit = {
1768: 						scope:imperial_death = title:h_china.holder
1769: 						situation_top_has_catalyst = catalyst_hegemon_murdered
1770: 					}
1771: 					trigger_situation_catalyst = {
```

Ligne 1772 :
```
1770: 					}
1771: 					trigger_situation_catalyst = {
1772: 						catalyst = catalyst_hegemon_murdered
1773: 						character = scope:imperial_death
1774: 					}
```

Ligne 1778 :
```
1776: 				else_if = {
1777: 					limit = {
1778: 						situation_top_has_catalyst = catalyst_imperial_family_member_murdered
1779: 					}
1780: 					trigger_situation_catalyst = {
```

Ligne 1781 :
```
1779: 					}
1780: 					trigger_situation_catalyst = {
1781: 						catalyst = catalyst_imperial_family_member_murdered
1782: 						character = scope:imperial_death
1783: 					}
```

## game/common/on_action/dlc/tgp/tgp_china_yearly_on_actions.txt

Références directes : 7 ; SHA : `2a0e6b0fb8c8b1ac5dd5f71232f7a746816f3dbd`.

Ligne 6 :
```
4: 		OR = {
5: 			government_has_flag = government_is_celestial
6: 			exists = top_participant_group:dynastic_cycle
7: 		}
8: 	}
```

Ligne 32 :
```
30: 		
31: 		# TGP - Dynastic Cycle Events
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
```

Ligne 33 :
```
31: 		# TGP - Dynastic Cycle Events
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
```

Ligne 34 :
```
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
```

Ligne 35 :
```
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
```

Ligne 36 :
```
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
38: 		
```

Ligne 37 :
```
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
38: 		
39: 		# TGP - Confucianism Events
```

## game/gui/hud.gui

Références directes : 12 ; SHA : `d71e0c9856caeeaddebcb0a4de2c7c0be2b27404`.

Ligne 1726 :
```
1724: 		# BACKGROUND MERIT + DYNASTIC CYCLE
1725: 		icon = {
1726: 			visible = "[And(GetSituation('dynastic_cycle').GetTopParticipantGroupByKey('other_rulers').IsCharacterParticipant( Character.Self ), Character.ShouldShowMerit)]"
1727: 			parentanchor = left
1728: 			size = { 474 116 }
```

Ligne 2434 :
```
2432: 					datacontext = "[InGameBottomBar.GetDynasticCycle]"
2433: 					size = { 100 100 }
2434: 					name = "dynastic_cycle_highlight"
2435: 
2436: 					onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'dynastic_cycle' )]"
```

Ligne 2436 :
```
2434: 					name = "dynastic_cycle_highlight"
2435: 
2436: 					onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'dynastic_cycle' )]"
2437: 
2438: 					blockoverride "tooltipwidget"
```

Ligne 2483 :
```
2481: 
2482: 											cooltip_paragraph = {
2483: 												text = "DYNASTIC_CYCLE_FUTURE_ERA_TT"
2484: 											}
2485: 
```

Ligne 2508 :
```
2506: 					blockoverride "background_texture"
2507: 					{
2508: 						texture = "gfx/interface/hud/situation_background_dynastic_cycle.dds"
2509: 					}
2510: 
```

Ligne 4888 :
```
4886: 
4887: 		onclick = "[ToggleGameViewData(Situation.GetWindowName, Situation.GetID)]"
4888: 		onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'movements' )]"
4889: 		tooltip = "[SelectLocalization( And(SituationParticipantGroup.IsValid, InGameBottomBar.ShouldShowDynasticCycleOwnedLand), 'DYNASTIC_CYCLE_HUD_GROUP_OWNED_LAND_TOOLTIP', 'DYNASTIC_CYCLE_HUD_GROUP_POWER_TOOLTIP' )]"
4890: 		using = tooltip_ne
```

Ligne 4889 :
```
4887: 		onclick = "[ToggleGameViewData(Situation.GetWindowName, Situation.GetID)]"
4888: 		onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'movements' )]"
4889: 		tooltip = "[SelectLocalization( And(SituationParticipantGroup.IsValid, InGameBottomBar.ShouldShowDynasticCycleOwnedLand), 'DYNASTIC_CYCLE_HUD_GROUP_OWNED_LAND_TOOLTIP', 'DYNASTIC_CYCLE_HUD_GROUP_POWER_TOOLTIP' )]"
4890: 		using = tooltip_ne
4891: 
```

Ligne 4938 :
```
4936: 				spacing = 3
4937: 
4938: 				tooltip = "DYNASTIC_CYCLE_HUD_PERSONAL_MOVEMENT_POWER_TT"
4939: 				using = tooltip_ne
4940: 				tooltip_offset = { 0 -5 }
```

Ligne 4968 :
```
4966: 			position = { -5 10 }
4967: 
4968: 			texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
4969: 			visible = "[InGameBottomBar.IsDynasticCycleMovementFavored]"
4970: 			widgetanchor = center
```

Ligne 4973 :
```
4971: 			parentanchor = top|right
4972: 
4973: 			tooltip = "DYNASTIC_CYCLE_WINDOW_FAVORED_MOVEMENT_TOOLTIP"
4974: 		}
4975: 	}
```

Ligne 8024 :
```
8022: 						size = { 100% 100% }
8023: 						visible = "[GreaterThanOrEqualTo_int32( LegitimacyLevel.GetIndex, Character.GetAveragePowerfulVassalLegitimacyExpectation.GetIndex )]"
8024: 						texture = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_stability.dds"
8025: 						mirror = horizontal
8026: 
```

Ligne 8038 :
```
8036: 						size = { 100% 100% }
8037: 						visible = "[LessThan_int32( LegitimacyLevel.GetIndex, Character.GetAveragePowerfulVassalLegitimacyExpectation.GetIndex )]"
8038: 						texture = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_consolidation.dds"
8039: 						mirror = horizontal
8040: 
```

## game/gui/texticons.gui

Références directes : 11 ; SHA : `993c53202451c419b80ab69cbb5b91f288e523db`.

Ligne 5547 :
```
5545: # dynastic cycle
5546: texticon = {
5547: 	icon = tgp_dynastic_cycle_expansion_icon
5548: 	iconsize = {
5549: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_expansion.dds"
```

Ligne 5549 :
```
5547: 	icon = tgp_dynastic_cycle_expansion_icon
5548: 	iconsize = {
5549: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_expansion.dds"
5550: 		size = { 28 28 }
5551: 		offset = { 0 6 }
```

Ligne 5557 :
```
5555: 
5556: texticon = {
5557: 	icon = tgp_dynastic_cycle_advancement_icon
5558: 	iconsize = {
5559: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_advancement.dds"
```

Ligne 5559 :
```
5557: 	icon = tgp_dynastic_cycle_advancement_icon
5558: 	iconsize = {
5559: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_advancement.dds"
5560: 		size = { 28 28 }
5561: 		offset = { 0 6 }
```

Ligne 5567 :
```
5565: 
5566: texticon = {
5567: 	icon = tgp_dynastic_cycle_instability_icon
5568: 	iconsize = {
5569: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_instability.dds"
```

Ligne 5569 :
```
5567: 	icon = tgp_dynastic_cycle_instability_icon
5568: 	iconsize = {
5569: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_instability.dds"
5570: 		size = { 28 28 }
5571: 		offset = { 0 6 }
```

Ligne 5577 :
```
5575: 
5576: texticon = {
5577: 	icon = tgp_dynastic_cycle_conquest_icon
5578: 	iconsize = {
5579: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_conquest.dds"
```

Ligne 5579 :
```
5577: 	icon = tgp_dynastic_cycle_conquest_icon
5578: 	iconsize = {
5579: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_conquest.dds"
5580: 		size = { 28 28 }
5581: 		offset = { 0 6 }
```

Ligne 5587 :
```
5585: 
5586: texticon = {
5587: 	icon = tgp_dynastic_cycle_chaos_icon
5588: 	iconsize = {
5589: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_chaos.dds"
```

Ligne 5589 :
```
5587: 	icon = tgp_dynastic_cycle_chaos_icon
5588: 	iconsize = {
5589: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_chaos.dds"
5590: 		size = { 28 28 }
5591: 		offset = { 0 6 }
```

Ligne 5659 :
```
5657: 	icon = unaligned_movement
5658: 	iconsize = {
5659: 		texture = "gfx/interface/icons/portraits/dynastic_cycle_group_unaligned.dds"
5660: 		size = { 24 24 }
5661: 		offset = { -2 6 }
```

## game/gui/window_silk_road.gui

Références directes : 3 ; SHA : `c9b4e549f1d68716e83f303caf583e09382e47ae`.

Ligne 133 :
```
131: 				vbox = {
132: 					layoutpolicy_horizontal = expanding
133: 					datacontext = "[GetSituation('dynastic_cycle')]"
134: 
135: 					margin = { 15 0 }
```

Ligne 193 :
```
191: 									max_width = 210
192: 									fontsize_min = 10
193: 									text = "DYNASTIC_CYCLE_EVENT_CURRENT_ERA"
194: 								}
195: 
```

Ligne 676 :
```
674: 									blockoverride "button_text"
675: 									{
676: 										text = "DYNASTIC_CYCLE_WINDOW_TOGGLE_CATALYSTS"
677: 										max_width = 160
678: 									}
```

## game/gui/window_intrigue.gui

Références directes : 1 ; SHA : `fe5ab708281dd8c90a2f12f158f0336539721875`.

Ligne 2725 :
```
2723: 		margin_right = 30
2724: 
2725: 		button_dynastic_cycle_decision = {
2726: 			layoutpolicy_horizontal = expanding
2727: 			visible = yes
```

## game/gui/window_activity_list.gui

Références directes : 1 ; SHA : `5545cd2ed6f69b25b223927ae8e50ed49bd5be64`.

Ligne 205 :
```
203: 								vbox = {
204: 									margin_top = 8
205: 									datacontext = "[GetSituation('dynastic_cycle').GetParticipantGroupByCharacter( Character.Self )]"
206: 									visible = "[SituationParticipantGroup.IsValid]"
207: 									button_checkbox_label = {
```

## game/gui/window_domicile.gui

Références directes : 1 ; SHA : `5adec7c38a131d27d679b1433b77c7b47fcc61cf`.

Ligne 1561 :
```
1559: 							ignoreinvisible = yes
1560: 							spacing = 5
1561: 							visible = "[Not( ObjectsEqual( GetSituation('dynastic_cycle').GetParticipantGroupByCharacter(Character.Self), GetSituation('dynastic_cycle').GetTopParticipantGroupByKey('hegemon_ruler') ) )]"
1562: 
1563: 							datamodel = "[DomicileWindow.GetRelationOfType( GetRelation( 'elder' ))]"
```

