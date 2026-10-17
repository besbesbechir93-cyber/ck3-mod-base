# Références partagées — Interfaces et on_actions

Extraits de fichiers vanilla partagés (CK3 1.20.0.3). **NE PAS** copier ces fichiers intégralement dans le mod, ni utiliser ces extraits comme scripts prêts à charger. Les numéros indiquent leur position dans le fichier original. Les références doivent être adaptées ponctuellement à la GUI et aux scripts vanilla ciblés.

## gui/hud.gui

Occurrences directes : 12.

```text
1724: 		# BACKGROUND MERIT + DYNASTIC CYCLE
1725: 		icon = {
1726: 			visible = "[And(GetSituation('dynastic_cycle').GetTopParticipantGroupByKey('other_rulers').IsCharacterParticipant( Character.Self ), Character.ShouldShowMerit)]"
1727: 			parentanchor = left
1728: 			size = { 474 116 }
--
2432: 					datacontext = "[InGameBottomBar.GetDynasticCycle]"
2433: 					size = { 100 100 }
2434: 					name = "dynastic_cycle_highlight"
2435: 
2436: 					onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'dynastic_cycle' )]"
--
2434: 					name = "dynastic_cycle_highlight"
2435: 
2436: 					onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'dynastic_cycle' )]"
2437: 
2438: 					blockoverride "tooltipwidget"
--
2481: 
2482: 											cooltip_paragraph = {
2483: 												text = "DYNASTIC_CYCLE_FUTURE_ERA_TT"
2484: 											}
2485: 
--
2506: 					blockoverride "background_texture"
2507: 					{
2508: 						texture = "gfx/interface/hud/situation_background_dynastic_cycle.dds"
2509: 					}
2510: 
--
4886: 
4887: 		onclick = "[ToggleGameViewData(Situation.GetWindowName, Situation.GetID)]"
4888: 		onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'movements' )]"
4889: 		tooltip = "[SelectLocalization( And(SituationParticipantGroup.IsValid, InGameBottomBar.ShouldShowDynasticCycleOwnedLand), 'DYNASTIC_CYCLE_HUD_GROUP_OWNED_LAND_TOOLTIP', 'DYNASTIC_CYCLE_HUD_GROUP_POWER_TOOLTIP' )]"
4890: 		using = tooltip_ne
--
4887: 		onclick = "[ToggleGameViewData(Situation.GetWindowName, Situation.GetID)]"
4888: 		onclick = "[OpenGuiTab( 'dynastic_cycle_tabs', 'movements' )]"
4889: 		tooltip = "[SelectLocalization( And(SituationParticipantGroup.IsValid, InGameBottomBar.ShouldShowDynasticCycleOwnedLand), 'DYNASTIC_CYCLE_HUD_GROUP_OWNED_LAND_TOOLTIP', 'DYNASTIC_CYCLE_HUD_GROUP_POWER_TOOLTIP' )]"
4890: 		using = tooltip_ne
4891: 
--
4936: 				spacing = 3
4937: 
4938: 				tooltip = "DYNASTIC_CYCLE_HUD_PERSONAL_MOVEMENT_POWER_TT"
4939: 				using = tooltip_ne
4940: 				tooltip_offset = { 0 -5 }
--
4966: 			position = { -5 10 }
4967: 
4968: 			texture = "gfx/interface/icons/dynastic_cycle/favored_by_hegemon.dds"
4969: 			visible = "[InGameBottomBar.IsDynasticCycleMovementFavored]"
4970: 			widgetanchor = center
--
4971: 			parentanchor = top|right
4972: 
4973: 			tooltip = "DYNASTIC_CYCLE_WINDOW_FAVORED_MOVEMENT_TOOLTIP"
4974: 		}
4975: 	}
--
8022: 						size = { 100% 100% }
8023: 						visible = "[GreaterThanOrEqualTo_int32( LegitimacyLevel.GetIndex, Character.GetAveragePowerfulVassalLegitimacyExpectation.GetIndex )]"
8024: 						texture = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_stability.dds"
8025: 						mirror = horizontal
8026: 
--
8036: 						size = { 100% 100% }
8037: 						visible = "[LessThan_int32( LegitimacyLevel.GetIndex, Character.GetAveragePowerfulVassalLegitimacyExpectation.GetIndex )]"
8038: 						texture = "gfx/interface/illustrations/event_story/tgp_dynastic_cycle_consolidation.dds"
8039: 						mirror = horizontal
8040: 
```

## gui/texticons.gui

Occurrences directes : 11.

```text
5545: # dynastic cycle
5546: texticon = {
5547: 	icon = tgp_dynastic_cycle_expansion_icon
5548: 	iconsize = {
5549: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_expansion.dds"
--
5547: 	icon = tgp_dynastic_cycle_expansion_icon
5548: 	iconsize = {
5549: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_expansion.dds"
5550: 		size = { 28 28 }
5551: 		offset = { 0 6 }
--
5555: 
5556: texticon = {
5557: 	icon = tgp_dynastic_cycle_advancement_icon
5558: 	iconsize = {
5559: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_advancement.dds"
--
5557: 	icon = tgp_dynastic_cycle_advancement_icon
5558: 	iconsize = {
5559: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_advancement.dds"
5560: 		size = { 28 28 }
5561: 		offset = { 0 6 }
--
5565: 
5566: texticon = {
5567: 	icon = tgp_dynastic_cycle_instability_icon
5568: 	iconsize = {
5569: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_instability.dds"
--
5567: 	icon = tgp_dynastic_cycle_instability_icon
5568: 	iconsize = {
5569: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_instability.dds"
5570: 		size = { 28 28 }
5571: 		offset = { 0 6 }
--
5575: 
5576: texticon = {
5577: 	icon = tgp_dynastic_cycle_conquest_icon
5578: 	iconsize = {
5579: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_conquest.dds"
--
5577: 	icon = tgp_dynastic_cycle_conquest_icon
5578: 	iconsize = {
5579: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_conquest.dds"
5580: 		size = { 28 28 }
5581: 		offset = { 0 6 }
--
5585: 
5586: texticon = {
5587: 	icon = tgp_dynastic_cycle_chaos_icon
5588: 	iconsize = {
5589: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_chaos.dds"
--
5587: 	icon = tgp_dynastic_cycle_chaos_icon
5588: 	iconsize = {
5589: 		texture = "gfx/interface/icons/dynastic_cycle/dynastic_cycle_phase_chaos.dds"
5590: 		size = { 28 28 }
5591: 		offset = { 0 6 }
--
5657: 	icon = unaligned_movement
5658: 	iconsize = {
5659: 		texture = "gfx/interface/icons/portraits/dynastic_cycle_group_unaligned.dds"
5660: 		size = { 24 24 }
5661: 		offset = { -2 6 }
```

## gui/window_silk_road.gui

Occurrences directes : 3.

```text
131: 				vbox = {
132: 					layoutpolicy_horizontal = expanding
133: 					datacontext = "[GetSituation('dynastic_cycle')]"
134: 
135: 					margin = { 15 0 }
--
191: 									max_width = 210
192: 									fontsize_min = 10
193: 									text = "DYNASTIC_CYCLE_EVENT_CURRENT_ERA"
194: 								}
195: 
--
674: 									blockoverride "button_text"
675: 									{
676: 										text = "DYNASTIC_CYCLE_WINDOW_TOGGLE_CATALYSTS"
677: 										max_width = 160
678: 									}
```

## gui/window_domicile.gui

Occurrences directes : 1.

```text
1559: 							ignoreinvisible = yes
1560: 							spacing = 5
1561: 							visible = "[Not( ObjectsEqual( GetSituation('dynastic_cycle').GetParticipantGroupByCharacter(Character.Self), GetSituation('dynastic_cycle').GetTopParticipantGroupByKey('hegemon_ruler') ) )]"
1562: 
1563: 							datamodel = "[DomicileWindow.GetRelationOfType( GetRelation( 'elder' ))]"
```

## gui/window_intrigue.gui

Occurrences directes : 1.

```text
2723: 		margin_right = 30
2724: 
2725: 		button_dynastic_cycle_decision = {
2726: 			layoutpolicy_horizontal = expanding
2727: 			visible = yes
```

## gui/window_activity_list.gui

Occurrences directes : 1.

```text
203: 								vbox = {
204: 									margin_top = 8
205: 									datacontext = "[GetSituation('dynastic_cycle').GetParticipantGroupByCharacter( Character.Self )]"
206: 									visible = "[SituationParticipantGroup.IsValid]"
207: 									button_checkbox_label = {
```

## common/on_action/game_start.txt

Occurrences directes : 7.

```text
1440: 		}
1441: 		# DYNASTIC CYCLE SETUP
1442: 		situation:dynastic_cycle ?= {
1443: 			title:h_china = {
1444: 				set_variable = {
--
1452: 				every_situation_sub_region = {
1453: 					add_takeover_phase_points = {
1454: 					   phase = situation_dynastic_cycle_phase_chaos
1455: 					   points = 800
1456: 					}
--
2344: 				if = {
2345: 					limit = {
2346: 						situation:dynastic_cycle ?= {
2347: 							OR = {
2348: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
--
2346: 						situation:dynastic_cycle ?= {
2347: 							OR = {
2348: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2349: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2350: 							}
--
2347: 							OR = {
2348: 								situation_current_phase = situation_dynastic_cycle_phase_stability_expansion
2349: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
2350: 							}
2351: 						}
--
3450: 					if = { # We adjust Merit depending on the dynastic cycle phase
3451: 						limit = {
3452: 							situation:dynastic_cycle ?= {
3453: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3454: 							}
--
3451: 						limit = {
3452: 							situation:dynastic_cycle ?= {
3453: 								situation_current_phase = situation_dynastic_cycle_phase_stability_advancement
3454: 							}
3455: 						}
```

## common/on_action/yearly_on_actions.txt

Occurrences directes : 22.

```text
771: 					limit = {
772: 						has_title = title:h_china
773: 						exists = top_participant_group:dynastic_cycle
774: 					}
775: 					every_tributary = { # update tributary favor
--
777: 						add_subject_standing = {
778: 							value = {
779: 								situation:dynastic_cycle = {
780: 									switch = {
781: 										trigger = situation_current_phase
--
780: 									switch = {
781: 										trigger = situation_current_phase
782: 										situation_dynastic_cycle_phase_stability = {
783: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
784: 										}
--
781: 										trigger = situation_current_phase
782: 										situation_dynastic_cycle_phase_stability = {
783: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
784: 										}
785: 										situation_dynastic_cycle_phase_stability_expansion = {
--
783: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability
784: 										}
785: 										situation_dynastic_cycle_phase_stability_expansion = {
786: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
787: 										}
--
784: 										}
785: 										situation_dynastic_cycle_phase_stability_expansion = {
786: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
787: 										}
788: 										situation_dynastic_cycle_phase_stability_advancement = {
--
786: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_expansion
787: 										}
788: 										situation_dynastic_cycle_phase_stability_advancement = {
789: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
790: 										}
--
787: 										}
788: 										situation_dynastic_cycle_phase_stability_advancement = {
789: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
790: 										}
791: 										situation_dynastic_cycle_phase_instability = {
--
789: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_stability_advancement
790: 										}
791: 										situation_dynastic_cycle_phase_instability = {
792: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
793: 										}
--
790: 										}
791: 										situation_dynastic_cycle_phase_instability = {
792: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
793: 										}
794: 										situation_dynastic_cycle_phase_instability_conquest = {
--
792: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability
793: 										}
794: 										situation_dynastic_cycle_phase_instability_conquest = {
795: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
796: 										}
--
793: 										}
794: 										situation_dynastic_cycle_phase_instability_conquest = {
795: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
796: 										}
797: 										situation_dynastic_cycle_phase_chaos = {
--
795: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_instability_conquest
796: 										}
797: 										situation_dynastic_cycle_phase_chaos = {
798: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_chaos
799: 										}
--
796: 										}
797: 										situation_dynastic_cycle_phase_chaos = {
798: 											value = imperial_grace_loss_situation_dynastic_cycle_phase_chaos
799: 										}
800: 									}
--
821: 				exists = suzerain
822: 				suzerain = { highest_held_title_tier = tier_hegemony }
823: 				NOT = { exists = suzerain.top_participant_group:dynastic_cycle }
824: 			}
825: 		}
--
2647: 			limit = {
2648: 				has_dlc_feature = all_under_heaven
2649: 				top_participant_group:dynastic_cycle ?= {
2650: 					participant_group_type = advancement_movement
2651: 				}
--
4274: 
4275: 		# TGP - Dynastic Cycle Events
4276: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
--
4275: 		# TGP - Dynastic Cycle Events
4276: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
--
4276: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
--
4277: 		200 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4281: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
--
4278: 		200 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4281: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
4282: 
--
4279: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
4280: 		200 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
4281: 		200 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
4282: 
4283: 		# TGP - Confucianism Events
```

## common/on_action/title_on_actions.txt

Occurrences directes : 22.

```text
112: 				scope:landed_title = title:h_china
113: 			}
114: 			situation:dynastic_cycle ?= {
115: 				if = {
116: 					limit = {
--
115: 				if = {
116: 					limit = {
117: 						situation_top_has_catalyst = catalyst_hegemon_lost_mandate_of_heaven
118: 					}
119: 					trigger_situation_catalyst = {
--
118: 					}
119: 					trigger_situation_catalyst = {
120: 						catalyst = catalyst_hegemon_lost_mandate_of_heaven
121: 						character = root
122: 					}
--
1624: 								is_valid_celestial_dynasty = no
1625: 							}
1626: 							situation:dynastic_cycle = {
1627: 								situation_top_sub_region = {
1628: 									change_phase = { phase = situation_dynastic_cycle_phase_instability_conquest }
--
1626: 							situation:dynastic_cycle = {
1627: 								situation_top_sub_region = {
1628: 									change_phase = { phase = situation_dynastic_cycle_phase_instability_conquest }
1629: 								}
1630: 							}
--
1632: 						else_if = {
1633: 							limit = {
1634: 								situation:dynastic_cycle ?= {
1635: 									situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1636: 								}
--
1633: 							limit = {
1634: 								situation:dynastic_cycle ?= {
1635: 									situation_current_phase = situation_dynastic_cycle_phase_instability_conquest
1636: 								}
1637: 							}
--
1636: 								}
1637: 							}
1638: 							situation:dynastic_cycle = {
1639: 								situation_top_sub_region = {
1640: 									change_phase = { phase = situation_dynastic_cycle_phase_instability }
--
1638: 							situation:dynastic_cycle = {
1639: 								situation_top_sub_region = {
1640: 									change_phase = { phase = situation_dynastic_cycle_phase_instability }
1641: 								}
1642: 							}
--
1649: 							current_date_is_start_date_trigger = no # We check this to avoid potentially triggering this immediately on game start
1650: 						}
1651: 						situation:dynastic_cycle = {
1652: 							if = {
1653: 								limit = {
--
1659: 					}
1660: 					# Clear the Strengthen Capital great project cooldown
1661: 					situation:dynastic_cycle ?= {
1662: 						if = {
1663: 							limit = { has_variable = gp_strengthen_capital_cooldown }
--
2254: 				has_global_variable = game_has_started  # Don't mess up for initialization
2255: 			}
2256: 			situation:dynastic_cycle ?= {
2257: 				if = {
2258: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
--
2256: 			situation:dynastic_cycle ?= {
2257: 				if = {
2258: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
2259: 					trigger_situation_catalyst = {
2260: 						catalyst = catalyst_hegemon_appointing_low_merit_governor
--
2258: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_governor }
2259: 					trigger_situation_catalyst = {
2260: 						catalyst = catalyst_hegemon_appointing_low_merit_governor
2261: 						character = scope:previous_holder
2262: 					}
--
2273: 				NOT = { has_appointment_level_for_title = scope:title }
2274: 			}
2275: 			situation:dynastic_cycle ?= {
2276: 				if = {
2277: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
--
2275: 			situation:dynastic_cycle ?= {
2276: 				if = {
2277: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
2278: 					trigger_situation_catalyst = {
2279: 						catalyst = catalyst_hegemon_appointing_low_merit_councillor
--
2277: 					limit = { situation_top_has_catalyst = catalyst_hegemon_appointing_low_merit_councillor }
2278: 					trigger_situation_catalyst = {
2279: 						catalyst = catalyst_hegemon_appointing_low_merit_councillor
2280: 						character = root
2281: 					}
--
4096: 				is_landed = no
4097: 				tgp_is_any_minister = no
4098: 				any_character_situation = { this = situation:dynastic_cycle }
4099: 			}
4100: 			situation:dynastic_cycle = {
--
4098: 				any_character_situation = { this = situation:dynastic_cycle }
4099: 			}
4100: 			situation:dynastic_cycle = {
4101: 				remove_manual_participant = prev
4102: 			}
--
5002: 		if = {
5003: 			limit = {
5004: 				exists = top_participant_group:dynastic_cycle
5005: 				NOT = {
5006: 					has_title = title:h_china
--
5008: 				OR = {
5009: 					liege = root
5010: 					liege.top_participant_group:dynastic_cycle ?= {
5011: 						participant_group_type = other_rulers
5012: 					}
--
5017: 				remove_variable = movement_member
5018: 			}
5019: 			recalculate_participant_group = situation:dynastic_cycle
5020: 		}
5021: 
```

## common/on_action/war_on_actions.txt

Occurrences directes : 23.

```text
1111: 					}
1112: 				}
1113: 				situation:dynastic_cycle ?= {
1114: 					if = {
1115: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
--
1113: 				situation:dynastic_cycle ?= {
1114: 					if = {
1115: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
1116: 						trigger_situation_catalyst = {
1117: 							catalyst = catalyst_hegemon_in_civil_war
--
1115: 						limit = { situation_top_has_catalyst = catalyst_hegemon_in_civil_war }
1116: 						trigger_situation_catalyst = {
1117: 							catalyst = catalyst_hegemon_in_civil_war
1118: 							character = scope:attacker
1119: 						}
--
1500: 				limit = {
1501: 					exists = title:h_china.holder
1502: 					top_participant_group:dynastic_cycle ?= {
1503: 						has_participant_group_parameter = dynastic_cycle_hegemon_legitimacy_from_external_conquest
1504: 					}
--
1501: 					exists = title:h_china.holder
1502: 					top_participant_group:dynastic_cycle ?= {
1503: 						has_participant_group_parameter = dynastic_cycle_hegemon_legitimacy_from_external_conquest
1504: 					}
1505: 					any_in_list = {
--
1520: 					send_interface_message = {
1521: 						type = event_struggle_good
1522: 						title = dynastic_cycle_hegemon_legitimacy_from_external_conquest_title
1523: 						left_icon = scope:defender
1524: 						right_icon = scope:highest_target_title
--
1536: 					send_interface_message = {
1537: 						type = event_struggle_good
1538: 						title = dynastic_cycle_hegemon_legitimacy_from_external_conquest_title
1539: 						left_icon = scope:defender
1540: 						right_icon = scope:highest_target_title
--
1554: 					has_title = title:h_china
1555: 				}
1556: 				situation:dynastic_cycle ?= {
1557: 					if = {
1558: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
--
1556: 				situation:dynastic_cycle ?= {
1557: 					if = {
1558: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
1559: 						trigger_situation_catalyst = {
1560: 							catalyst = catalyst_hegemon_won_war
--
1558: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
1559: 						trigger_situation_catalyst = {
1560: 							catalyst = catalyst_hegemon_won_war
1561: 							character = scope:attacker
1562: 						}
--
1571: 					has_title = title:h_china
1572: 				}
1573: 				situation:dynastic_cycle ?= {
1574: 					if = {
1575: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
--
1573: 				situation:dynastic_cycle ?= {
1574: 					if = {
1575: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
1576: 						trigger_situation_catalyst = {
1577: 							catalyst = catalyst_hegemon_lost_war
--
1575: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
1576: 						trigger_situation_catalyst = {
1577: 							catalyst = catalyst_hegemon_lost_war
1578: 							character = scope:attacker
1579: 						}
--
1581: 					if = {
1582: 						limit = {
1583: 							situation_top_has_catalyst = catalyst_hegemon_lost_defensive_territorial_war
1584: 							any_in_list = { list = target_titles }
1585: 						}
--
1585: 						}
1586: 						trigger_situation_catalyst = {
1587: 							catalyst = catalyst_hegemon_lost_defensive_territorial_war
1588: 							character = scope:attacker
1589: 						}
--
1591: 					if = {
1592: 						limit = {
1593: 							situation_top_has_catalyst = catalyst_hegemon_lost_capital_in_war
1594: 							any_in_list = {
1595: 								list = target_titles
--
1598: 						}
1599: 						trigger_situation_catalyst = {
1600: 							catalyst = catalyst_hegemon_lost_capital_in_war
1601: 							character = scope:attacker
1602: 						}
--
2180: 					has_title = title:h_china
2181: 				}
2182: 				situation:dynastic_cycle ?= {
2183: 					if = {
2184: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
--
2182: 				situation:dynastic_cycle ?= {
2183: 					if = {
2184: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
2185: 						trigger_situation_catalyst = {
2186: 							catalyst = catalyst_hegemon_lost_war
--
2184: 						limit = { situation_top_has_catalyst = catalyst_hegemon_lost_war }
2185: 						trigger_situation_catalyst = {
2186: 							catalyst = catalyst_hegemon_lost_war
2187: 							character = scope:defender
2188: 						}
--
2196: 					has_title = title:h_china
2197: 				}
2198: 				situation:dynastic_cycle ?= {
2199: 					if = {
2200: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
--
2198: 				situation:dynastic_cycle ?= {
2199: 					if = {
2200: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
2201: 						trigger_situation_catalyst = {
2202: 							catalyst = catalyst_hegemon_won_war
--
2200: 						limit = { situation_top_has_catalyst = catalyst_hegemon_won_war }
2201: 						trigger_situation_catalyst = {
2202: 							catalyst = catalyst_hegemon_won_war
2203: 							character = scope:defender
2204: 						}
```

## common/on_action/death.txt

Occurrences directes : 3.

```text
1763: 			}
1764: 			save_scope_as = imperial_death
1765: 			situation:dynastic_cycle = {
1766: 				if = {
1767: 					limit = {
--
1767: 					limit = {
1768: 						scope:imperial_death = title:h_china.holder
1769: 						situation_top_has_catalyst = catalyst_hegemon_murdered
1770: 					}
1771: 					trigger_situation_catalyst = {
--
1770: 					}
1771: 					trigger_situation_catalyst = {
1772: 						catalyst = catalyst_hegemon_murdered
1773: 						character = scope:imperial_death
1774: 					}
```

## common/on_action/dlc/tgp/tgp_china_yearly_on_actions.txt

Occurrences directes : 7.

```text
4: 		OR = {
5: 			government_has_flag = government_is_celestial
6: 			exists = top_participant_group:dynastic_cycle
7: 		}
8: 	}
--
30: 		
31: 		# TGP - Dynastic Cycle Events
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
--
31: 		# TGP - Dynastic Cycle Events
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
--
32: 		200 = tgp_dynastic_cycle_events.0001 # Tilt the scales towards Advancement
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
--
33: 		250 = tgp_dynastic_cycle_events.0010 # Disciple has a mental breakdown in Instability
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
--
34: 		100 = tgp_dynastic_cycle_events.0020 # Rowdy peasants steal food during Instability
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
38: 		
--
35: 		200 = tgp_dynastic_cycle_events.0030 # In this time of Expansion you should become a Military Governor
36: 		100 = tgp_dynastic_cycle_events.0040 # Steward is interested in the Silk Road
37: 		100 = tgp_dynastic_cycle_events.0050 # Debate the Favoured Movement and get ahead of them
38: 		
39: 		# TGP - Confucianism Events
```

