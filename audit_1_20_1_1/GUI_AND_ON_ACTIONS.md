# CK3 1.20.1.1 — shared GUI & on_actions (live review)

Verified on 2026-10-17 against `master` of besbesbechir93-cyber/ck3-mod-base. These are **documentary references only**. Do not replace shared vanilla files. Numbers reflect **1.20.1.1**, not the previous snapshot. Extract only cycle-specific blocks and merge selectively when building a playable mod.

## game/gui/hud.gui

Git blob: `100f925a5fe859b1daf21b576fbe792adeef4944` — 12 matching lines / 9356 lines

```text
1726: 		# BACKGROUND MERIT + DYNASTIC CYCLE
1727: 		icon = {
1728: 			visible = "[And(GetSituation('dynastic_cycle').GetTopParticipantGroupByKey('other_rulers').IsCharacterParticipant( Character.Self ), Character.ShouldShowMerit)]"
1729: 			parentanchor = left
1730: 			size = { 474 116 }
----
2434: 					datacontext = "[InGameBottomBar.GetDynasticCycle]"
2435: 					size = { 100 100 }
2436: 					name = "dynastic_cycle_highlight"
2437: 
2438: 					onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'dynastic_cycle' )]"
----
2436: 					name = "dynastic_cycle_highlight"
2437: 
2438: 					onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'dynastic_cycle' )]"
2439: 
2440: 					blockoverride "tooltipwidget"
----
2483: 
2484: 											cooltip_paragraph = {
2485: 												text = "DYNASTIC_CYCLE_FUTURE_ERA_TT"
2486: 											}
2487: 
----
2508: 					blockoverride "background_texture"
2509: 					{
2510: 						texture = "gfx/interface/hud/situation_background_dynastic_cycle.dds"
2511: 					}
2512: 
----
4888: 
4889: 		onclick = "[ToggleGameViewData(Situation.GetWindowName, Situation.GetID)]"
4890: 		onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'movements' )]"
4891: 		tooltip = "[SelectLocalization( And(SituationParticipantGroup.IsValid, InGameBottomBar.ShouldShowDynasticCycleOwnedLand), 'DYNASTIC_CYCLE_HUD_GROUP_OWNED_LAND_TOOLTIP', 'DYNASTIC_CYCLE_HUD_GROUP_POWER_TOOLTIP' )]"
4892: 		using = tooltip_ne
----
4889: 		onclick = "[ToggleGameViewData(Situation.GetWindowName, Situation.GetID)]"
4890: 		onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'movements' )]"
4891: 		tooltip = "[SelectLocalization( And(SituationParticipantGroup.IsValid, InGameBottomBar.ShouldShowDynasticCycleOwnedLand), 'DYNASTIC_CYCLE_HUD_GROUP_OWNED_LAND_TOOLTIP', 'DYNASTIC_CYCLE_HUD_GROUP_POWER_TOOLTIP' )]"
4892: 		using = tooltip_ne
4893: 
----
4938: 				spacing = 3
4939: 
4940: 				tooltip = "DYNASTIC_CYCLE_HUD_PERSONAL_MOVEMENT_POWER_TT"
4941: 				using = tooltip_ne
4942: 				tooltip_offset = { 0 -5 }
----
4968: 			position = { -5 10 }
4969: 
4970: 			texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
4971: 			visible = "[InGameBottomBar.IsDynasticCycleMovementFavored]"
4972: 			widgetanchor = center
----
4973: 			parentanchor = top|right
4974: 
4975: 			tooltip = "DYNASTIC_CYCLE_WINDOW_FAVORED_MOVEMENT_TOOLTIP"
4976: 		}
4977: 	}
----
8026: 						size = { 100% 100% }
8027: 						visible = "[GreaterThanOrEqualTo_int32( LegitimacyLevel.GetIndex, Character.GetAveragePowerfulVassalLegitimacyExpectation.GetIndex )]"
8028: 						texture = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_stability.dds"
8029: 						mirror = horizontal
8030: 
----
8040: 						size = { 100% 100% }
8041: 						visible = "[LessThan_int32( LegitimacyLevel.GetIndex, Character.GetAveragePowerfulVassalLegitimacyExpectation.GetIndex )]"
8042: 						texture = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_consolidation.dds"
8043: 						mirror = horizontal
8044: 
```

## game/gui/texticons.gui

Git blob: `993c53202451c419b80ab69cbb5b91f288e523db` — 11 matching lines / 5907 lines

```text
5545: # dynastic cycle
5546: texticon = {
5547: 	icon = tgp_dynastic_cycle_expansion_icon
5548: 	iconsize = {
5549: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_expansion.dds"
----
5547: 	icon = tgp_dynastic_cycle_expansion_icon
5548: 	iconsize = {
5549: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_expansion.dds"
5550: 		size = { 28 28 }
5551: 		offset = { 0 6 }
----
5555: 
5556: texticon = {
5557: 	icon = tgp_dynastic_cycle_advancement_icon
5558: 	iconsize = {
5559: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_advancement.dds"
----
5557: 	icon = tgp_dynastic_cycle_advancement_icon
5558: 	iconsize = {
5559: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_advancement.dds"
5560: 		size = { 28 28 }
5561: 		offset = { 0 6 }
----
5565: 
5566: texticon = {
5567: 	icon = tgp_dynastic_cycle_instability_icon
5568: 	iconsize = {
5569: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_instability.dds"
----
5567: 	icon = tgp_dynastic_cycle_instability_icon
5568: 	iconsize = {
5569: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_instability.dds"
5570: 		size = { 28 28 }
5571: 		offset = { 0 6 }
----
5575: 
5576: texticon = {
5577: 	icon = tgp_dynastic_cycle_conquest_icon
5578: 	iconsize = {
5579: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_conquest.dds"
----
5577: 	icon = tgp_dynastic_cycle_conquest_icon
5578: 	iconsize = {
5579: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_conquest.dds"
5580: 		size = { 28 28 }
5581: 		offset = { 0 6 }
----
5585: 
5586: texticon = {
5587: 	icon = tgp_dynastic_cycle_chaos_icon
5588: 	iconsize = {
5589: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_chaos.dds"
----
5587: 	icon = tgp_dynastic_cycle_chaos_icon
5588: 	iconsize = {
5589: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_chaos.dds"
5590: 		size = { 28 28 }
5591: 		offset = { 0 6 }
----
5657: 	icon = unaligned_movement
5658: 	iconsize = {
5659: 		texture = "gfx/interface/icons/portraits/dynastic_cycle_group_unaligned.dds"
5660: 		size = { 24 24 }
5661: 		offset = { -2 6 }
```

## game/gui/window_silk_road.gui

Git blob: `c9b4e549f1d68716e83f303caf583e09382e47ae` — 3 matching lines / 1107 lines

```text
131: 				vbox = {
132: 					layoutpolicy_horizontal = expanding
133: 					datacontext = "[GetSituation('dynastic_cycle')]"
134: 
135: 					margin = { 15 0 }
----
191: 									max_width = 210
192: 									fontsize_min = 10
193: 									text = "DYNASTIC_CYCLE_EVENT_CURRENT_ERA"
194: 								}
195: 
----
674: 									blockoverride "button_text"
675: 									{
676: 										text = "DYNASTIC_CYCLE_WINDOW_TOGGLE_CATALYSTS"
677: 										max_width = 160
678: 									}
```

## game/gui/window_domicile.gui

Git blob: `7b52e2e2f72ffc234b79f6d3dc996f3c549b6b98` — 1 matching lines / 4550 lines

```text
1559: 							ignoreinvisible = yes
1560: 							spacing = 5
1561: 							visible = "[Not( ObjectsEqual( GetSituation('dynastic_cycle').GetParticipantGroupByCharacter(Character.Self), GetSituation('dynastic_cycle').GetTopParticipantGroupByKey('hegemon_ruler') ) )]"
1562: 
1563: 							datamodel = "[DomicileWindow.GetRelationOfType( GetRelation( 'elder' ))]"
```

## game/gui/window_intrigue.gui

Git blob: `ffe15ea207b095c00bb367a69cf16cf3121d519a` — 1 matching lines / 3315 lines

```text
2892: 		margin_right = 30
2893: 
2894: 		button_dynastic_cycle_decision = {
2895: 			layoutpolicy_horizontal = expanding
2896: 			visible = yes
```

## game/gui/window_activity_list.gui

Git blob: `5545cd2ed6f69b25b223927ae8e50ed49bd5be64` — 1 matching lines / 1049 lines

```text
203: 								vbox = {
204: 									margin_top = 8
205: 									datacontext = "[GetSituation('dynastic_cycle').GetParticipantGroupByCharacter( Character.Self )]"
206: 									visible = "[SituationParticipantGroup.IsValid]"
207: 									button_checkbox_label = {
```

## game/common/on_action/game_start.txt

Git blob: `f083feb57ca4eaf811dae3c443f58e8f88f033fd` — 7 matching lines / 7357 lines

```text
1482: 		}
1483: 		# DYNASTIC CYCLE SETUP
1484: 		situation:dynastic_cycle ?= {
1485: 			title:h_china = {
1486: 				set_variable = {
----
1494: 				every_situation_sub_region = {
1495: 					add_takeover_phase_points = {
1496: 					   phase = situation_dynastic_cycle_phase_chaos
1497: 					   points = 800
1498: 					}
----
2386: 				if = {
2387: 					limit = {
2388: 						situation:dynastic_cycle ?= {
2389: 							OR = {
2390: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
----
2388: 						situation:dynastic_cycle ?= {
2389: 							OR = {
2390: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2391: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2392: 							}
----
2389: 							OR = {
2390: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2391: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2392: 							}
2393: 						}
----
3493: 					if = { # We adjust Merit depending on the dynastic cycle phase
3494: 						limit = {
3495: 							situation:dynastic_cycle ?= {
3496: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3497: 							}
----
3494: 						limit = {
3495: 							situation:dynastic_cycle ?= {
3496: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3497: 							}
3498: 						}
```

## game/common/on_action/yearly_on_actions.txt

Git blob: `a11471aebbe0ca8fc47ffb3aaf02b33bc1180477` — 22 matching lines / 4476 lines

```text
779: 					limit = {
780: 						has_title = title:h_china
781: 						exists = top_participant_group:dynastic_cycle
782: 					}
783: 					every_tributary = { # update tributary favor
----
785: 						add_subject_standing = {
786: 							value = {
787: 								situation:dynastic_cycle = {
788: 									switch = {
789: 										trigger = situation_current_phase
----
788: 									switch = {
789: 										trigger = situation_current_phase
790: 										situation_dynastic_cycle_phase_stability = {
791: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
792: 										}
----
789: 										trigger = situation_current_phase
790: 										situation_dynastic_cycle_phase_stability = {
791: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
792: 										}
793: 										situation_dynastic_cycle_phase_stability_expansion = {
----
791: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
792: 										}
793: 										situation_dynastic_cycle_phase_stability_expansion = {
794: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
795: 										}
----
792: 										}
793: 										situation_dynastic_cycle_phase_stability_expansion = {
794: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
795: 										}
796: 										situation_dynastic_cycle_phase_stability_advancement = {
----
794: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
795: 										}
796: 										situation_dynastic_cycle_phase_stability_advancement = {
797: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
798: 										}
----
795: 										}
796: 										situation_dynastic_cycle_phase_stability_advancement = {
797: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
798: 										}
799: 										situation_dynastic_cycle_phase_instability = {
----
797: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
798: 										}
799: 										situation_dynastic_cycle_phase_instability = {
800: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
801: 										}
----
798: 										}
799: 										situation_dynastic_cycle_phase_instability = {
800: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
801: 										}
802: 										situation_dynastic_cycle_phase_instability_conquest = {
----
800: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
801: 										}
802: 										situation_dynastic_cycle_phase_instability_conquest = {
803: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
804: 										}
----
801: 										}
802: 										situation_dynastic_cycle_phase_instability_conquest = {
803: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
804: 										}
805: 										situation_dynastic_cycle_phase_chaos = {
----
803: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
804: 										}
805: 										situation_dynastic_cycle_phase_chaos = {
806: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_chaos
807: 										}
----
804: 										}
805: 										situation_dynastic_cycle_phase_chaos = {
806: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_chaos
807: 										}
808: 									}
----
829: 				exists = suzerain
830: 				suzerain = { highest_held_title_tier = tier_hegemony }
831: 				NOT = { exists = suzerain.top_participant_group:dynastic_cycle }
832: 			}
833: 		}
----
2662: 			limit = {
2663: 				has_dlc_feature = all_under_heaven
2664: 				top_participant_group:dynastic_cycle ?= {
2665: 					participant_group_type = advancement_movement
2666: 				}
----
4292: 
4293: 		# TGP - Dynastic Cycle Events
4294: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4295: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4296: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
----
4293: 		# TGP - Dynastic Cycle Events
4294: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4295: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4296: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4297: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
----
4294: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4295: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4296: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4297: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4298: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
----
4295: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4296: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4297: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4298: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4299: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
----
4296: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4297: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4298: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4299: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
4300: 
----
4297: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4298: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4299: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
4300: 
4301: 		# TGP - Confucianism Events
```

## game/common/on_action/title_on_actions.txt

Git blob: `8c60ed75ae13d75e7760a8a0ff8ecba609fdf9bf` — 22 matching lines / 5374 lines

```text
112: 				scope:landed_title = title:h_china
113: 			}
114: 			situation:dynastic_cycle ?= {
115: 				if = {
116: 					limit = {
----
115: 				if = {
116: 					limit = {
117: 						situation_top_has_catalyst = catalyst_hegemon_lost_mandate_of_heaven
118: 					}
119: 					trigger_situation_catalyst = {
----
118: 					}
119: 					trigger_situation_catalyst = {
120: 						catalyst = catalyst_hegemon_lost_mandate_of_heaven
121: 						character = root
122: 					}
----
1669: 								is_valid_celestial_dynasty = no
1670: 							}
1671: 							situation:dynastic_cycle = {
1672: 								situation_top_sub_region = {
1673: 									change_phase = { phase = situation_dynastic_cycle_phase_instability_conquest }
----
1671: 							situation:dynastic_cycle = {
1672: 								situation_top_sub_region = {
1673: 									change_phase = { phase = situation_dynastic_cycle_phase_instability_conquest }
1674: 								}
1675: 							}
----
1677: 						else_if = {
1678: 							limit = {
1679: 								situation:dynastic_cycle ?= {
1680: 									situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1681: 								}
----
1678: 							limit = {
1679: 								situation:dynastic_cycle ?= {
1680: 									situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1681: 								}
1682: 							}
----
1681: 								}
1682: 							}
1683: 							situation:dynastic_cycle = {
1684: 								situation_top_sub_region = {
1685: 									change_phase = { phase = situation_dynastic_cycle_phase_instability }
----
1683: 							situation:dynastic_cycle = {
1684: 								situation_top_sub_region = {
1685: 									change_phase = { phase = situation_dynastic_cycle_phase_instability }
1686: 								}
1687: 							}
----
1694: 							current_date_is_start_date_trigger = no # We check this to avoid potentially triggering this immediately on game start
1695: 						}
1696: 						situation:dynastic_cycle = {
1697: 							if = {
1698: 								limit = {
----
1704: 					}
1705: 					# Clear the Strengthen Capital great project cooldown
1706: 					situation:dynastic_cycle ?= {
1707: 						if = {
1708: 							limit = { has_variable = gp_strengthen_capital_cooldown }
----
2306: 				has_global_variable = game_has_started  # Don't mess up for initialization
2307: 			}
2308: 			situation:dynastic_cycle ?= {
2309: 				if = {
2310: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
----
2308: 			situation:dynastic_cycle ?= {
2309: 				if = {
2310: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
2311: 					trigger_situation_catalyst = {
2312: 						catalyst = catalyst_hegemon_appointing_low_merit_governor
----
2310: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
2311: 					trigger_situation_catalyst = {
2312: 						catalyst = catalyst_hegemon_appointing_low_merit_governor
2313: 						character = scope:previous_holder
2314: 					}
----
2325: 				NOT = { has_appointment_level_for_title = scope:title }
2326: 			}
2327: 			situation:dynastic_cycle ?= {
2328: 				if = {
2329: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
----
2327: 			situation:dynastic_cycle ?= {
2328: 				if = {
2329: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
2330: 					trigger_situation_catalyst = {
2331: 						catalyst = catalyst_hegemon_appointing_low_merit_councillor
----
2329: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
2330: 					trigger_situation_catalyst = {
2331: 						catalyst = catalyst_hegemon_appointing_low_merit_councillor
2332: 						character = root
2333: 					}
----
4148: 				is_landed = no
4149: 				tgp_is_any_minister = no
4150: 				any_character_situation = { this = situation:dynastic_cycle }
4151: 			}
4152: 			situation:dynastic_cycle = {
----
4150: 				any_character_situation = { this = situation:dynastic_cycle }
4151: 			}
4152: 			situation:dynastic_cycle = {
4153: 				remove_manual_participant = prev
4154: 			}
----
5083: 		if = {
5084: 			limit = {
5085: 				exists = top_participant_group:dynastic_cycle
5086: 				NOT = {
5087: 					has_title = title:h_china
----
5089: 				OR = {
5090: 					liege = root
5091: 					liege.top_participant_group:dynastic_cycle ?= {
5092: 						participant_group_type = other_rulers
5093: 					}
----
5098: 				remove_variable = movement_member
5099: 			}
5100: 			recalculate_participant_group = situation:dynastic_cycle
5101: 		}
5102: 
```

## game/common/on_action/war_on_actions.txt

Git blob: `7843a913107a1fcded4e7bc70edeb69ec0685f29` — 23 matching lines / 2583 lines

```text
1109: 					}
1110: 				}
1111: 				situation:dynastic_cycle ?= {
1112: 					if = {
1113: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
----
1111: 				situation:dynastic_cycle ?= {
1112: 					if = {
1113: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
1114: 						trigger_situation_catalyst = {
1115: 							catalyst = catalyst_hegemon_in_civil_war
----
1113: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
1114: 						trigger_situation_catalyst = {
1115: 							catalyst = catalyst_hegemon_in_civil_war
1116: 							character = scope:attacker
1117: 						}
----
1504: 				limit = {
1505: 					exists = title:h_china.holder
1506: 					top_participant_group:dynastic_cycle ?= {
1507: 						has_participant_group_parameter = dynastic_cycle_hegemon_legitimacy_from_external_conquest
1508: 					}
----
1505: 					exists = title:h_china.holder
1506: 					top_participant_group:dynastic_cycle ?= {
1507: 						has_participant_group_parameter = dynastic_cycle_hegemon_legitimacy_from_external_conquest
1508: 					}
1509: 					any_in_list = {
----
1524: 					send_interface_message = {
1525: 						type = event_struggle_good
1526: 						title = dynastic_cycle_hegemon_legitimacy_from_external_conquest_title
1527: 						left_icon = scope:defender
1528: 						right_icon = scope:highest_target_title
----
1540: 					send_interface_message = {
1541: 						type = event_struggle_good
1542: 						title = dynastic_cycle_hegemon_legitimacy_from_external_conquest_title
1543: 						left_icon = scope:defender
1544: 						right_icon = scope:highest_target_title
----
1558: 					has_title = title:h_china
1559: 				}
1560: 				situation:dynastic_cycle ?= {
1561: 					if = {
1562: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
----
1560: 				situation:dynastic_cycle ?= {
1561: 					if = {
1562: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
1563: 						trigger_situation_catalyst = {
1564: 							catalyst = catalyst_hegemon_won_war
----
1562: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
1563: 						trigger_situation_catalyst = {
1564: 							catalyst = catalyst_hegemon_won_war
1565: 							character = scope:attacker
1566: 						}
----
1575: 					has_title = title:h_china
1576: 				}
1577: 				situation:dynastic_cycle ?= {
1578: 					if = {
1579: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
----
1577: 				situation:dynastic_cycle ?= {
1578: 					if = {
1579: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
1580: 						trigger_situation_catalyst = {
1581: 							catalyst = catalyst_hegemon_lost_war
----
1579: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
1580: 						trigger_situation_catalyst = {
1581: 							catalyst = catalyst_hegemon_lost_war
1582: 							character = scope:attacker
1583: 						}
----
1585: 					if = {
1586: 						limit = {
1587: 							situation_top_has_catalyst = catalyst_hegemon_lost_defensive_territorial_war
1588: 							any_in_list = { list = target_titles }
1589: 						}
----
1589: 						}
1590: 						trigger_situation_catalyst = {
1591: 							catalyst = catalyst_hegemon_lost_defensive_territorial_war
1592: 							character = scope:attacker
1593: 						}
----
1595: 					if = {
1596: 						limit = {
1597: 							situation_top_has_catalyst = catalyst_hegemon_lost_capital_in_war
1598: 							any_in_list = {
1599: 								list = target_titles
----
1602: 						}
1603: 						trigger_situation_catalyst = {
1604: 							catalyst = catalyst_hegemon_lost_capital_in_war
1605: 							character = scope:attacker
1606: 						}
----
2184: 					has_title = title:h_china
2185: 				}
2186: 				situation:dynastic_cycle ?= {
2187: 					if = {
2188: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
----
2186: 				situation:dynastic_cycle ?= {
2187: 					if = {
2188: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
2189: 						trigger_situation_catalyst = {
2190: 							catalyst = catalyst_hegemon_lost_war
----
2188: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
2189: 						trigger_situation_catalyst = {
2190: 							catalyst = catalyst_hegemon_lost_war
2191: 							character = scope:defender
2192: 						}
----
2200: 					has_title = title:h_china
2201: 				}
2202: 				situation:dynastic_cycle ?= {
2203: 					if = {
2204: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
----
2202: 				situation:dynastic_cycle ?= {
2203: 					if = {
2204: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
2205: 						trigger_situation_catalyst = {
2206: 							catalyst = catalyst_hegemon_won_war
----
2204: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
2205: 						trigger_situation_catalyst = {
2206: 							catalyst = catalyst_hegemon_won_war
2207: 							character = scope:defender
2208: 						}
```

## game/common/on_action/death.txt

Git blob: `5046ba72b382f1466057104c9ff4b4588cbd6316` — 3 matching lines / 2570 lines

```text
1795: 			}
1796: 			save_scope_as = imperial_death
1797: 			situation:dynastic_cycle = {
1798: 				if = {
1799: 					limit = {
----
1799: 					limit = {
1800: 						scope:imperial_death = title:h_china.holder
1801: 						situation_top_has_catalyst = catalyst_hegemon_murdered
1802: 					}
1803: 					trigger_situation_catalyst = {
----
1802: 					}
1803: 					trigger_situation_catalyst = {
1804: 						catalyst = catalyst_hegemon_murdered
1805: 						character = scope:imperial_death
1806: 					}
```

## game/common/on_action/dlc/tgp/tgp_china_yearly_on_actions.txt

Git blob: `2a0e6b0fb8c8b1ac5dd5f71232f7a746816f3dbd` — 7 matching lines / 47 lines

```text
4: 		OR = {
5: 			government_has_flag = government_is_celestial
6: 			exists = top_participant_group:dynastic_cycle
7: 		}
8: 	}
----
30: 		
31: 		# TGP - Dynastic Cycle Events
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
----
31: 		# TGP - Dynastic Cycle Events
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
----
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
----
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
----
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
38: 		
----
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
38: 		
39: 		# TGP - Confucianism Events
```
