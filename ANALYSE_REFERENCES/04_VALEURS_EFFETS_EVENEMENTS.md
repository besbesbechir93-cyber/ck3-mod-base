# REFERENCES VANILLA PARTAGEES — VALEURS, EFFETS, ROUTE DE LA SOIE ET EVENEMENTS

Références et extraits contextuels uniquement : les fichiers sources de vanilla restent dans le jeu et ne doivent pas être entièrement recopiés dans Diwan.

## game/common/script_values/tgp_values.txt

Références : 12. SHA : `4f884b1adefeba7107dee72f05a098cb917e378c`.

Ligne 46 :
```
44: 
45: # Imperial Grace loss values depending on phase
46: imperial_grace_loss_situation_dynastic_cycle_phase_stability = -1
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
```

Ligne 47 :
```
45: # Imperial Grace loss values depending on phase
46: imperial_grace_loss_situation_dynastic_cycle_phase_stability = -1
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
```

Ligne 48 :
```
46: imperial_grace_loss_situation_dynastic_cycle_phase_stability = -1
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
```

Ligne 49 :
```
47: imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion = -2
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
51: imperial_grace_loss_situation_dynastic_cycle_phase_chaos = -5
```

Ligne 50 :
```
48: imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement = -1
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
51: imperial_grace_loss_situation_dynastic_cycle_phase_chaos = -5
52: 
```

Ligne 51 :
```
49: imperial_grace_loss_situation_dynastic_cycle_phase_instability = -3
50: imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest = -3
51: imperial_grace_loss_situation_dynastic_cycle_phase_chaos = -5
52: 
53: # This value is used for the ai_expected_level param for mandate_legitimacy, but can also be used directly without a vassal scope
```

Ligne 55 :
```
53: # This value is used for the ai_expected_level param for mandate_legitimacy, but can also be used directly without a vassal scope
54: # It's set to max, unless Cycle is in Stability Era, then it is lower by 2 for the first 50 years and lower by 1 for another 50 years
55: dynastic_cycle_legitimacy_expectation = {
56: 	value = 7 #max
57: 	if = {
```

Ligne 59 :
```
57: 	if = {
58: 		limit = {
59: 			situation:dynastic_cycle ?= {
60: 				OR = {
61: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 61 :
```
59: 			situation:dynastic_cycle ?= {
60: 				OR = {
61: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
62: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
63: 				}
```

Ligne 62 :
```
60: 				OR = {
61: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
62: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
63: 				}
64: 				has_variable = stability_phase_start_date
```

Ligne 69 :
```
67: 		if = {
68: 			limit = {
69: 				situation:dynastic_cycle = {
70: 					var:stability_phase_start_date <= {
71: 						value = current_date
```

Ligne 80 :
```
78: 		if = {
79: 			limit = {
80: 				situation:dynastic_cycle = {
81: 					var:stability_phase_start_date <= {
82: 						value = current_date
```

## game/common/script_values/tgp_natural_disaster_values.txt

Références : 9. SHA : `0a44cd30a401b6c4bc0c1066740e055f2bb1beb3`.

Ligne 119 :
```
117: 		if = {
118: 			limit = {
119: 				situation:dynastic_cycle ?= {
120: 					OR = {
121: 						situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 121 :
```
119: 				situation:dynastic_cycle ?= {
120: 					OR = {
121: 						situation_current_phase = situation_dynastic_cycle_phase_instability
122: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
123: 					}
```

Ligne 122 :
```
120: 					OR = {
121: 						situation_current_phase = situation_dynastic_cycle_phase_instability
122: 						situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
123: 					}
124: 				}
```

Ligne 136 :
```
134: 		limit = { 
135: 			title:h_china.holder ?= this 
136: 			situation:dynastic_cycle ?= {
137: 				OR = {
138: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 138 :
```
136: 			situation:dynastic_cycle ?= {
137: 				OR = {
138: 					situation_current_phase = situation_dynastic_cycle_phase_instability
139: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
140: 				}
```

Ligne 139 :
```
137: 				OR = {
138: 					situation_current_phase = situation_dynastic_cycle_phase_instability
139: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
140: 				}
141: 			}
```

Ligne 152 :
```
150: 		limit = { 
151: 			title:h_china.holder ?= this 
152: 			situation:dynastic_cycle ?= {
153: 				OR = {
154: 					situation_current_phase = situation_dynastic_cycle_phase_instability
```

Ligne 154 :
```
152: 			situation:dynastic_cycle ?= {
153: 				OR = {
154: 					situation_current_phase = situation_dynastic_cycle_phase_instability
155: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
156: 				}
```

Ligne 155 :
```
153: 				OR = {
154: 					situation_current_phase = situation_dynastic_cycle_phase_instability
155: 					situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
156: 				}
157: 			}
```

## game/common/script_values/tgp_great_project_values.txt

Références : 2. SHA : `476311ff4fdd0d81568de3892a9efe6925e24186`.

Ligne 64 :
```
62: 	if = {
63: 		limit = {
64: 			top_participant_group:dynastic_cycle ?= {
65: 				has_participant_group_parameter = dynastic_cycle_imperial_buildings_increased_build_speed
66: 			}
```

Ligne 65 :
```
63: 		limit = {
64: 			top_participant_group:dynastic_cycle ?= {
65: 				has_participant_group_parameter = dynastic_cycle_imperial_buildings_increased_build_speed
66: 			}
67: 		}
```

## game/common/script_values/07_appointment_values.txt

Références : 9. SHA : `2c20326ef9b743b1f6f3aa221e77967c89bf4765`.

Ligne 1298 :
```
1296: }
1297: 
1298: appointment_score_dynastic_cycle = {
1299: 	# Conquest Dynasty has a favored culture
1300: 	if = {
```

Ligne 1303 :
```
1301: 		limit = {
1302: 			top_liege = { has_title = title:h_china }
1303: 			situation:dynastic_cycle ?= {
1304: 				has_variable = dynastic_cycle_favored_culture
1305: 				root.culture = var:dynastic_cycle_favored_culture
```

Ligne 1304 :
```
1302: 			top_liege = { has_title = title:h_china }
1303: 			situation:dynastic_cycle ?= {
1304: 				has_variable = dynastic_cycle_favored_culture
1305: 				root.culture = var:dynastic_cycle_favored_culture
1306: 			}
```

Ligne 1305 :
```
1303: 			situation:dynastic_cycle ?= {
1304: 				has_variable = dynastic_cycle_favored_culture
1305: 				root.culture = var:dynastic_cycle_favored_culture
1306: 			}
1307: 		}
```

Ligne 1310 :
```
1308: 		add = {
1309: 			value = 100
1310: 			desc = dynastic_cycle_conquerer_promoted_culture
1311: 		}
1312: 	}
```

Ligne 1317 :
```
1315: 	if = {
1316: 		limit = {
1317: 			situation:dynastic_cycle ?= {
1318: 				situation_participant_group:expansion_movement = {
1319: 					participant_group_has_character = root
```

Ligne 1331 :
```
1329: 	if = {
1330: 		limit = {
1331: 			situation:dynastic_cycle ?= {
1332: 				situation_participant_group:advancement_movement = {
1333: 					participant_group_has_character = root
```

Ligne 1345 :
```
1343: 	if = {
1344: 		limit = {
1345: 			situation:dynastic_cycle ?= {
1346: 				situation_participant_group:pro_hegemon_movement = {
1347: 					participant_group_has_character = root
```

Ligne 1359 :
```
1357: 	if = {
1358: 		limit = {
1359: 			situation:dynastic_cycle ?= {
1360: 				situation_participant_group:conservative_movement = {
1361: 					participant_group_has_character = root
```

## game/common/scripted_triggers/10_tgp_triggers.txt

Références : 8. SHA : `24baf3ed08c7dbe1f065a93b49e8c1ca581c048c`.

Ligne 733 :
```
731: 	$CHARACTER$ = {
732: 		OR = {
733: 			top_participant_group:dynastic_cycle ?= { participant_group_type = conservative_movement }
734: 			has_title = title:e_minister_of_personnel
735: 			AND = {
```

Ligne 754 :
```
752: 	$CHARACTER$ = {
753: 		OR = {
754: 			top_participant_group:dynastic_cycle ?= { participant_group_type = advancement_movement }
755: 			AND = {
756: 				this = top_liege
```

Ligne 760 :
```
758: 					ai_greed < 0
759: 					ai_rationality > 75
760: 					situation:dynastic_cycle ?= { situation_current_phase = situation_dynastic_cycle_phase_stability_advancement }
761: 				}
762: 			}
```

Ligne 774 :
```
772: 	$CHARACTER$ = {
773: 		OR = {
774: 			top_participant_group:dynastic_cycle ?= { participant_group_type = expansion_movement }
775: 			has_title = title:e_minister_grand_marshal
776: 			has_title = title:e_minister_of_war
```

Ligne 781 :
```
779: 				OR = {
780: 					ai_boldness > 90
781: 					situation:dynastic_cycle ?= {
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
```

Ligne 783 :
```
781: 					situation:dynastic_cycle ?= {
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
784: 							situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
785: 						}
```

Ligne 784 :
```
782: 						OR = {
783: 							situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
784: 							situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
785: 						}
786: 					}
```

Ligne 801 :
```
799: 	$CHARACTER$ = {
800: 		OR = {
801: 			top_participant_group:dynastic_cycle ?= { participant_group_type = pro_hegemon_movement }
802: 			has_trait = loyal
803: 			AND = {
```

## game/common/scripted_effects/10_dlc_tgp_scripted_effects.txt

Références : 37. SHA : `1922ef58ddb847967c1b29dee6999d5b8d4213c6`.

Ligne 206 :
```
204: 			scope:owner ?= {
205: 				any_character_situation = {
206: 					situation_type = dynastic_cycle
207: 				}
208: 			}
```

Ligne 217 :
```
215: 		}
216: 		random_character_situation = {
217: 			limit = { situation_type = dynastic_cycle }
218: 			switch = {
219: 				trigger = scope:great_project.great_project_type
```

Ligne 290 :
```
288: 				limit = {
289: 					any_character_situation = {
290: 						situation_type = dynastic_cycle
291: 						has_situation_top_phase_parameter = dynastic_cycle_great_projects_increased_legitimacy
292: 					}
```

Ligne 291 :
```
289: 					any_character_situation = {
290: 						situation_type = dynastic_cycle
291: 						has_situation_top_phase_parameter = dynastic_cycle_great_projects_increased_legitimacy
292: 					}
293: 				}
```

Ligne 535 :
```
533: 		}
534: 		custom_tooltip = every_disciple_adds_movement_power_tt
535: 		hidden_effect = { recalculate_participant_group = situation:dynastic_cycle }
536: 	}
537: }
```

Ligne 565 :
```
563: 		limit = {
564: 			any_character_situation = {
565: 				situation_type = dynastic_cycle
566: 				any_participant_group = {
567: 					participant_group_has_character = scope:new_movement_leader
```

Ligne 581 :
```
579: 			subject = scope:new_movement_leader
580: 			object = scope:leaders_movement
581: 			situation:dynastic_cycle ?= {
582: 				random_participant_group = {
583: 					limit = {
```

Ligne 602 :
```
600: 			switch = {
601: 				trigger = scope:leaders_movement
602: 				situation:dynastic_cycle.situation_participant_group:expansion_movement = {
603: 					tgp_activate_catalyst_against_hegemon_effect = {
604: 						HEGEMON = scope:new_movement_leader.top_liege
```

Ligne 605 :
```
603: 					tgp_activate_catalyst_against_hegemon_effect = {
604: 						HEGEMON = scope:new_movement_leader.top_liege
605: 						CATALYST = catalyst_movement_gained_power_expansion
606: 					}
607: 				}
```

Ligne 608 :
```
606: 					}
607: 				}
608: 				situation:dynastic_cycle.situation_participant_group:advancement_movement = {
609: 					tgp_activate_catalyst_against_hegemon_effect = {
610: 						HEGEMON = scope:new_movement_leader.top_liege
```

Ligne 611 :
```
609: 					tgp_activate_catalyst_against_hegemon_effect = {
610: 						HEGEMON = scope:new_movement_leader.top_liege
611: 						CATALYST = catalyst_movement_gained_power_advancement
612: 					}
613: 				}
```

Ligne 614 :
```
612: 					}
613: 				}
614: 				situation:dynastic_cycle.situation_participant_group:conservative_movement = {
615: 					tgp_activate_catalyst_against_hegemon_effect = {
616: 						HEGEMON = scope:new_movement_leader.top_liege
```

Ligne 617 :
```
615: 					tgp_activate_catalyst_against_hegemon_effect = {
616: 						HEGEMON = scope:new_movement_leader.top_liege
617: 						CATALYST = catalyst_movement_gained_power_conservative
618: 					}
619: 				}
```

Ligne 620 :
```
618: 					}
619: 				}
620: 				situation:dynastic_cycle.situation_participant_group:pro_hegemon_movement = {
621: 					tgp_activate_catalyst_against_hegemon_effect = {
622: 						HEGEMON = scope:new_movement_leader.top_liege
```

Ligne 623 :
```
621: 					tgp_activate_catalyst_against_hegemon_effect = {
622: 						HEGEMON = scope:new_movement_leader.top_liege
623: 						CATALYST = catalyst_movement_gained_power_pro_hegemon
624: 					}
625: 				}
```

Ligne 916 :
```
914: 			}
915: 		}
916: 		situation:dynastic_cycle ?= {
917: 			if = {
918: 				limit = {
```

Ligne 919 :
```
917: 			if = {
918: 				limit = {
919: 				situation_top_has_catalyst = catalyst_hegemon_influenced_by_interaction
920: 				}
921: 				trigger_situation_catalyst = {
```

Ligne 922 :
```
920: 				}
921: 				trigger_situation_catalyst = {
922: 				catalyst = catalyst_hegemon_influenced_by_interaction
923: 				character = scope:petitioner
924: 				}
```

Ligne 992 :
```
990: 		}
991: 	}
992: 	situation:dynastic_cycle ?= {
993: 		if = {
994: 			limit = {
```

Ligne 995 :
```
993: 		if = {
994: 			limit = {
995: 			situation_top_has_catalyst = catalyst_hegemon_influenced_by_interaction
996: 			}
997: 			trigger_situation_catalyst = {
```

Ligne 998 :
```
996: 			}
997: 			trigger_situation_catalyst = {
998: 			catalyst = catalyst_hegemon_influenced_by_interaction
999: 			character = scope:petitioner
1000: 			}
```

Ligne 1035 :
```
1033: 					scope:petitioner.var:movement_petition ?= flag:hold_examinations
1034: 				}
1035: 				situation:dynastic_cycle = {
1036: 					if = {
1037: 						limit = {
```

Ligne 1038 :
```
1036: 					if = {
1037: 						limit = {
1038: 							situation_top_has_catalyst = catalyst_imperial_examinations_gap_short_yearly
1039: 							exists = title:h_china.var:years_since_imperial_examination
1040: 							title:h_china.var:years_since_imperial_examination >= catalyst_imperial_examinations_gap_short_yearly_value
```

Ligne 1040 :
```
1038: 							situation_top_has_catalyst = catalyst_imperial_examinations_gap_short_yearly
1039: 							exists = title:h_china.var:years_since_imperial_examination
1040: 							title:h_china.var:years_since_imperial_examination >= catalyst_imperial_examinations_gap_short_yearly_value
1041: 						}
1042: 						trigger_situation_catalyst = {
```

Ligne 1043 :
```
1041: 						}
1042: 						trigger_situation_catalyst = {
1043: 							catalyst = catalyst_imperial_examinations_gap_short_yearly
1044: 							character = scope:petitioner
1045: 						}
```

Ligne 1049 :
```
1047: 					if = {
1048: 						limit = {
1049: 							situation_top_has_catalyst = catalyst_imperial_examinations_gap_long_yearly
1050: 							exists = title:h_china.var:years_since_imperial_examination
1051: 							title:h_china.var:years_since_imperial_examination >= catalyst_imperial_examinations_gap_long_yearly_value
```

Ligne 1051 :
```
1049: 							situation_top_has_catalyst = catalyst_imperial_examinations_gap_long_yearly
1050: 							exists = title:h_china.var:years_since_imperial_examination
1051: 							title:h_china.var:years_since_imperial_examination >= catalyst_imperial_examinations_gap_long_yearly_value
1052: 						}
1053: 						trigger_situation_catalyst = {
```

Ligne 1054 :
```
1052: 						}
1053: 						trigger_situation_catalyst = {
1054: 							catalyst = catalyst_imperial_examinations_gap_long_yearly
1055: 							character = scope:petitioner
1056: 						}
```

Ligne 1118 :
```
1116: 		text = new_movement_becomes_favored_desc
1117: 		object = scope:movement_to_be_favored
1118: 		situation:dynastic_cycle ?= {
1119: 			random_participant_group = {
1120: 				limit = {
```

Ligne 1136 :
```
1134: 	custom_tooltip = new_movement_becomes_favored_power_increase
1135: 
1136: 	situation:dynastic_cycle ?= {
1137: 		random_participant_group = {
1138: 			limit = {
```

Ligne 1443 :
```
1441: 		}
1442: 		update_character_movement_power_effect = yes
1443: 		top_participant_group:dynastic_cycle ?= {
1444: 			update_movement_power_effect = yes
1445: 		}
```

Ligne 1513 :
```
1511: 		}
1512: 		update_character_movement_power_effect = yes
1513: 		top_participant_group:dynastic_cycle ?= {
1514: 			update_movement_power_effect = yes
1515: 		}
```

Ligne 1589 :
```
1587: 			}
1588: 			update_character_movement_power_effect = yes
1589: 			top_participant_group:dynastic_cycle ?= {
1590: 				update_movement_power_effect = yes
1591: 			}
```

Ligne 1893 :
```
1891: 				NOT = {
1892: 					any_character_situation = {
1893: 						situation_type = dynastic_cycle
1894: 					}
1895: 				}
```

Ligne 1898 :
```
1896: 				top_liege ?= {
1897: 					any_character_situation = {
1898: 						situation_type = dynastic_cycle
1899: 					}
1900: 				}
```

Ligne 1903 :
```
1901: 			}
1902: 
1903: 			situation:dynastic_cycle = {
1904: 				add_manual_participant = prev
1905: 			}
```

Ligne 2129 :
```
2127: 		}
2128: 
2129: 		situation:dynastic_cycle = {
2130: 			remove_manual_participant = prev
2131: 		}
```

## game/common/scripted_effects/10_dlc_tgp_silk_road_scripted_effects.txt

Références : 4. SHA : `472841523378c3d269e2ebf23ac370bb79ce221a`.

Ligne 557 :
```
555: 	if = {
556: 		limit = {
557: 			situation:dynastic_cycle = {
558: 				OR = {
559: 					situation_current_phase = situation_dynastic_cycle_phase_stability
```

Ligne 559 :
```
557: 			situation:dynastic_cycle = {
558: 				OR = {
559: 					situation_current_phase = situation_dynastic_cycle_phase_stability
560: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
561: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
```

Ligne 560 :
```
558: 				OR = {
559: 					situation_current_phase = situation_dynastic_cycle_phase_stability
560: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
561: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
562: 				}
```

Ligne 561 :
```
559: 					situation_current_phase = situation_dynastic_cycle_phase_stability
560: 					situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
561: 					situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
562: 				}
563: 			}
```

## game/common/scripted_effects/00_faction_effects.txt

Références : 6. SHA : `7d9d71768488eda6b1dab5a10610f240d8dffea1`.

Ligne 741 :
```
739: 	if = {
740: 		limit = {
741: 			scope:faction_target.top_participant_group:dynastic_cycle ?= {
742: 				participant_group_type = hegemon_ruler 
743: 			}
```

Ligne 744 :
```
742: 				participant_group_type = hegemon_ruler 
743: 			}
744: 			situation:dynastic_cycle = {
745: 				situation_top_has_catalyst = catalyst_hegemon_lost_defensive_territorial_war
746: 			}
```

Ligne 745 :
```
743: 			}
744: 			situation:dynastic_cycle = {
745: 				situation_top_has_catalyst = catalyst_hegemon_lost_defensive_territorial_war
746: 			}
747: 		}
```

Ligne 748 :
```
746: 			}
747: 		}
748: 		situation:dynastic_cycle = {
749: 			trigger_situation_catalyst = {
750: 				catalyst = catalyst_hegemon_lost_defensive_territorial_war
```

Ligne 750 :
```
748: 		situation:dynastic_cycle = {
749: 			trigger_situation_catalyst = {
750: 				catalyst = catalyst_hegemon_lost_defensive_territorial_war
751: 				character = scope:faction_leader
752: 			}
```

Ligne 1527 :
```
1525: 			scope:peasant_demands_defender != scope:peasant_demands_defender.top_liege
1526: 			#only in Dynastic Cycle
1527: 			scope:peasant_demands_defender.top_liege.top_participant_group:dynastic_cycle ?= {
1528: 				participant_group_type = hegemon_ruler
1529: 			}
```

## game/common/situation/catalysts/10_tgp_silk_road_catalysts.txt

Références : 1. SHA : `1e9cb8547e4b40edd92ac52d98f101895b2c958d`.

Ligne 26 :
```
24: ### TGP Dynastic Cycle factors
25: catalyst_silk_road_china_stability = {} # neutral_struggle.0001
26: catalyst_silk_road_china_consolidation = {} # situation_dynastic_cycle_phase_chaos on_start
27: catalyst_silk_road_china_grand_canal_expanded = {} # grand_canals great_project
28: catalyst_silk_road_china_grand_canal_expanded_secondary = {} # grand_canals great_project
```

## game/events/dlc/tgp/tgp_china_career_events.txt

Références : 8. SHA : `c51e6a3a05747cd486192873215c9701ccdaff1a`.

Ligne 14 :
```
12: # Intro Event - Who are you playing as and what is your situation
13: # Also acts as an introduction if you become a noble family in China
14: tgp_china_career.0001 = {
15: 	type = character_event
16: 	title = tgp_china_career.0001.t
```

Ligne 16 :
```
14: tgp_china_career.0001 = {
15: 	type = character_event
16: 	title = tgp_china_career.0001.t
17: 	desc = {
18: 		desc = tgp_china_career.0001.desc
```

Ligne 18 :
```
16: 	title = tgp_china_career.0001.t
17: 	desc = {
18: 		desc = tgp_china_career.0001.desc
19: 		first_valid =  {
20: 			triggered_desc = {
```

Ligne 22 :
```
20: 			triggered_desc = {
21: 				trigger = { tgp_is_any_minister = yes }
22: 				desc = tgp_china_career.0001.minister_desc
23: 			}
24: 			triggered_desc = {
```

Ligne 26 :
```
24: 			triggered_desc = {
25: 				trigger = { is_landed = yes }
26: 				desc = tgp_china_career.0001.landed_desc
27: 			}
28: 			desc = tgp_china_career.0001.unlanded_desc
```

Ligne 28 :
```
26: 				desc = tgp_china_career.0001.landed_desc
27: 			}
28: 			desc = tgp_china_career.0001.unlanded_desc
29: 		}
30: 	}
```

Ligne 77 :
```
75: 
76: 	option = {
77: 		name = tgp_china_career.0001.a
78: 		add_character_modifier = {
79: 			modifier = tgp_merit_boost_modifier
```

Ligne 84 :
```
82: 
83: 	option = {
84: 		name = tgp_china_career.0001.b
85: 		add_character_modifier = {
86: 			modifier = tgp_influence_boost_modifier
```

## game/events/dlc/tgp/tgp_china_ministry_events.txt

Références : 1. SHA : `170d366a756604a0d52df853d7806ff3e43f9342`.

Ligne 162 :
```
160: 			tgp_activate_catalyst_against_hegemon_effect = {
161: 				HEGEMON = root
162: 				CATALYST = catalyst_hegemon_lost_war
163: 			}
164: 		}
```

## game/events/situation_events/tgp_natural_disaster_events.txt

Références : 2. SHA : `092d83c5d68c664f52afd096996015ec696b9fdb`.

Ligne 93 :
```
91: 			has_title = title:h_china
92: 		}
93: 		situation:dynastic_cycle = {
94: 			trigger_situation_catalyst = catalyst_hegemon_natural_disaster_recovered
95: 		}
```

Ligne 94 :
```
92: 		}
93: 		situation:dynastic_cycle = {
94: 			trigger_situation_catalyst = catalyst_hegemon_natural_disaster_recovered
95: 		}
96: 	}
```

