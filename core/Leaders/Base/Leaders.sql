
--------------------------------------------------------------------------------------------------------------------------
-- Base Game Specific Leader Strategy / Personality Improvements File 1 - Big Credit for some of the adjustment ideas and for the best way of improving the AI's personality using sqlite AIlists methods - Infixo
--------------------------------------------------------------------------------------------------------------------------

-- PHILIP_II / SPAIN


INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_PHILIP_II', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PhilipYields'),
('PhilipDiplomacy'),
('PhilipPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PhilipYields', 'TRAIT_LEADER_EL_ESCORIAL', 		'Yields'),
('PhilipDiplomacy',    'TRAIT_LEADER_EL_ESCORIAL', 'DiplomaticActions'),
('PhilipPseudoYields', 'TRAIT_LEADER_EL_ESCORIAL', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('PhilipYields', 'YIELD_PRODUCTION',  1, 3),
('PhilipYields', 'YIELD_CULTURE',  1, 3),
('PhilipYields', 'YIELD_FAITH', 1, 10), -- pvs 8
('PhilipYields', 'YIELD_GOLD',  1, 15),
('PhilipCivics', 'CIVIC_MERCANTILISM', 1, 0),
('PhilipDiplomacy', 'DIPLOACTION_DECLARE_HOLY_WAR', 1, 70),
('PhilipDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_CONVERT', 0, 0), 
('PhilipPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 16), -- mission espically on foreign Continents
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 75), -- Huge bonus from trade routes
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 25),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -6),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -3),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 22),
('PhilipPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('PhilipPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 22),
('PhilipPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20), -- Trade Routes
('PhilipPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 40), -- Trade Routes + armadas
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 7), -- pvs 4
('PhilipPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('PhilipPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 3),
('PhilipPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 35); -- pvs 20


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PhilipPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 30);

-- Todo Mission Improvement, improvement slight settle prefs
UPDATE AiFavoredItems SET Value = 20 WHERE ListType = 'PhilipForeignSettlement' AND Item = 'Foreign Continent'; -- def 60

/*

		<Row ListType="PhilipWonders" Item="BUILDING_COLOSSUS" Favored="true"/>
		<Row ListType="PhilipWonders" Item="BUILDING_GREAT_LIGHTHOUSE" Favored="true"/>
		<Row ListType="PhilipWonders" Item="BUILDING_HAGIA_SOPHIA" Favored="true"/>
		<Row ListType="PhilipWonders" Item="BUILDING_MAHABODHI_TEMPLE" Favored="true"/>
		<Row ListType="PhilipForeignSettlement" Item="Foreign Continent" Favored="false" Value="60"/>
		
				<Row ListType="PhilipCivics" Item="CIVIC_EXPLORATION" Favored="true"/>
		<Row ListType="PhilipCivics" Item="CIVIC_COLONIALISM" Favored="true"/>
		<Row ListType="PhilipCivics" Item="CIVIC_CULTURAL_HERITAGE" Favored="true"/>
		
				<Row ListType="PhilipTechs" Item="TECH_ANIMAL_HUSBANDRY" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_CELESTIAL_NAVIGATION" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_CARTOGRAPHY" Favored="true"/>
		<Row ListType="PhilipTechs" Item="TECH_GUNPOWDER" Favored="true"/>
		
*/



UPDATE AiFavoredItems SET Value = 10 WHERE ListType = 'CounterReformerInquisitorPreference' AND Item = 'UNIT_INQUISITOR'; 

-- TOMYRIS / SCYTHIA

UPDATE AiFavoredItems SET Value = 27 WHERE ListType = 'TomyrisiUnitBuilds' AND Item = 'PROMOTION_CLASS_LIGHT_CAVALRY'; 

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ScythiaYields'),
('ScythiaBuildings');
--('ScythiaSettlement');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ScythiaYields', 'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'Yields'),
('ScythiaBuildings', 'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'Buildings');
--('ScythiaSettlement',   'TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY', 'PlotEvaluations');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ScythiaYields', 'YIELD_FOOD', 					1, 50),
('ScythiaYields', 'YIELD_GOLD', 					1, 20),

('TomyrisDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 	1, 0), -- Friendlyish
('TomyrisDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 		1, 0),
('TomyrisDiplomacy', 'DIPLOACTION_ALLIANCE', 			1, 0),
('ScythiaBuildings', 'BUILDING_STABLE', 				1, 90),
('ScythiaBuildings', 'BUILDING_TEMPLE_ARTEMIS', 		1, 900); -- Horses spawn bias (and settle preference)


--<Row ListType="CavalryLoverCitySettlement" Item="Specific Resource" Favored="true" Value="12" StringVal="RESOURCE_HORSES"/>

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('CavalryLoverCitySettlement', 'Coastal', 0, 			-4, 	NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('CavalryLoverCitySettlement', 'Specific Resource', 0, 4, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('CavalryLoverCitySettlement', 'Inner Ring Yield', 0, 1, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'); -- def 1
-- Horses def 12 (and favoured true)



-- India General

-- IndiaUnitBuilds transfer
UPDATE AiListTypes    SET ListType = 'IndiaUnitBuilds' WHERE ListType = 'GandhiUnitBuilds'; -- def only for Gandhi even though both have religion bonus
UPDATE AiLists        SET LeaderType = 'TRAIT_CIVILIZATION_DHARMA' WHERE ListType = 'IndiaUnitBuilds';

UPDATE AiFavoredItems SET Value = -100 WHERE ListType = 'IndiaUnitBuilds' AND Item = 'PROMOTION_CLASS_INQUISITOR'; -- def -1

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('IndiaTechs'),
('IndiaYields'),
('IndiaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('IndiaTechs', 'TRAIT_CIVILIZATION_IMPROVEMENT_STEPWELL', 'Technologies'),
('IndiaYields', 'TRAIT_CIVILIZATION_IMPROVEMENT_STEPWELL', 'Yields'),
('IndiaPseudoYields', 'TRAIT_CIVILIZATION_IMPROVEMENT_STEPWELL', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('IndiaTechs', 'TECH_IRRIGATION', 				1, 0), 
('IndiaYields', 'YIELD_FOOD',  					1, 20),
('IndiaYields', 'YIELD_FAITH', 					1, 6), -- pvs 11
('IndiaYields', 'YIELD_GOLD',  					1,-15),
('IndiaYields', 'YIELD_PRODUCTION', 			1, -9),
('IndiaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 10), -- holy sites -- pvs 15
('IndiaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 18); -- stepwell -- pvs 12

DELETE FROM AiFavoredItems WHERE ListType = 'GandhiTechs'   AND Item = 'TECH_IRRIGATION'; -- this is India now

--UPDATE AiFavoredItems SET Value = -30 WHERE ListType = 'GandhiUnitBuilds' AND Item = 'PROMOTION_CLASS_GIANT_DEATH_ROBOT';


-- THE TRUE LEADER GANDHI OF INDIA

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('GandhiPseudoYields'),
('GandhiProjects'),
('GandhiYields'),
('GandhiUnitBuilds'),
('GandhiTechs'),
('GandhiSettlement'),
('GandhiImprovements'),
('GandhiUnits');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GandhiPseudoYields', 'TRAIT_LEADER_SATYAGRAHA', 			'PseudoYields'),
('GandhiProjects', 'TRAIT_LEADER_SATYAGRAHA', 				'Projects'),
('GandhiYields', 'TRAIT_LEADER_SATYAGRAHA', 				'Yields'),
('GandhiTechs', 'TRAIT_LEADER_SATYAGRAHA', 					'Technologies'),
('GandhiUnitBuilds',   'TRAIT_LEADER_SATYAGRAHA', 			'UnitPromotionClasses'), -- already exists but if disabled breaks the game lol
('GandhiImprovements',		'TRAIT_LEADER_SATYAGRAHA',		'Improvements'),
('GandhiSettlement',   'TRAIT_LEADER_SATYAGRAHA', 			'PlotEvaluations'),
('GandhiUnits', 'TRAIT_LEADER_SATYAGRAHA', 					'Units');


/*
	<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_SURPRISE_WAR" Favored="false"/>
	<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_FORMAL_WAR" Favored="false"/>
	<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_WAR_MINOR_CIV" Favored="false"/>
	
		<Row ListType="GandhiWonders" Item="BUILDING_HANGING_GARDENS" Favored="true"/>
		<Row ListType="GandhiWonders" Item="BUILDING_MAHABODHI_TEMPLE" Favored="true"/>
		<Row ListType="GandhiWonders" Item="BUILDING_OXFORD_UNIVERSITY" Favored="true"/>
		
		<Row ListType="GandhiCivics" Item="CIVIC_THEOLOGY" Favored="true"/>
		<Row ListType="GandhiCivics" Item="CIVIC_CIVIL_SERVICE" Favored="true"/>
		<Row ListType="GandhiCivics" Item="CIVIC_HUMANISM" Favored="true"/>
		<Row ListType="GandhiCivics" Item="CIVIC_DIPLOMATIC_SERVICE" Favored="true"/>
		
		<Row ListType="GandhiTechs" Item="TECH_ASTROLOGY" Favored="true"/>
		<Row ListType="GandhiTechs" Item="TECH_IRRIGATION" Favored="true"/>
		<Row ListType="GandhiTechs" Item="TECH_HORSEBACK_RIDING" Favored="true"/>
		<Row ListType="GandhiTechs" Item="TECH_ELECTRICITY" Favored="true"/>
		
		<Row ListType="GandhiUnitBuilds" Item="PROMOTION_CLASS_INQUISITOR" Value="-1"/>
		
*/


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiWonders', 'BUILDING_GOV_TALL', 1, 90), 
('GandhiWonders', 'BUILDING_GOV_WIDE', 0, 0), 
--('GandhiWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('GandhiWonders', 'BUILDING_GOV_FAITH', 1, 90),
--('GandhiWonders', 'BUILDING_GOV_SPIES', 0, 0),
('GandhiWonders', 'BUILDING_GOV_CITYSTATES', 0, 0),

('GandhiWonders', 'BUILDING_GOV_MILITARY', 1, 90);
--('GandhiWonders', 'BUILDING_GOV_CULTURE', 1, 90),
--('GandhiWonders', 'BUILDING_GOV_SCIENCE', 1, 90);

/*
		<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_SURPRISE_WAR" Favored="false"/>
		<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_FORMAL_WAR" Favored="false"/>
		<Row ListType="PeacekeeperWarLimits" Item="DIPLOACTION_DECLARE_WAR_MINOR_CIV" Favored="false"/>
*/

DELETE FROM AiFavoredItems WHERE ListType = 'PeacekeeperWarLimits'   AND Item = 'DIPLOACTION_DECLARE_SURPRISE_WAR';



INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GANDHI', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PeacekeeperWarLimits', 'DIPLOACTION_OPEN_BORDERS', 1, 0), 
('PeacekeeperWarLimits', 'DIPLOACTION_ALLIANCE', 1, 0), 
--('PeacekeeperWarLimits', 'DIPLOACTION_DECLARE_FRIENDSHIP', 1, 0), (will do on meet if enabled)
--('PeacekeeperWarLimits', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0), 
('PeacekeeperWarLimits', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0), -- lets be friends (for now)
--('PeacekeeperWarLimits', 'DIPLOACTION_DIPLOMATIC_DELEGATION', 1, 0),
('PeacekeeperWarLimits', 'DIPLOACTION_DECLARE_HOLY_WAR', 1, 0),
('PeacekeeperWarLimits', 'DIPLOACTION_THIRD_PARTY_WAR',  0, 0),

('GandhiPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -65), 
('GandhiPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 16),
('GandhiPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 300),
('GandhiYields', 'YIELD_SCIENCE',  1, 13),
('GandhiYields', 'YIELD_FAITH', 1, 22), -- pvs 16, 21 (reduced indias trait)
('GandhiPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 16),
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 46), -- pvs 22, 35, 40, 42
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 28), -- pvs 10
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, -25), -- Reduced further to help reduce military engineers - reduced but still needs Encampments for increased stockpile value
('GandhiPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 3), -- Increased stockpile (ideally should set increased stockpile buildings as favoured)
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 2), -- RST DEF - 15
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 11), 
('GandhiPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 80), -- pvs 55, 70
('GandhiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 14),
('GandhiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 8),
('GandhiPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 30), -- pvs 20
--('GandhiPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 8), -- Already for India as a whole
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 35),
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15),
('GandhiPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, -20), -- pvs -15
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 36),
('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 40), -- to differ from CHANDRAGUPTA
('GandhiPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 9), -- peace?, pvs 12
('GandhiUnitBuilds',        'PROMOTION_CLASS_MELEE', 1, 4),
('GandhiUnitBuilds',        'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 2),
('GandhiUnitBuilds',        'PROMOTION_CLASS_LIGHT_CAVALRY', 0, -6),
--('GandhiUnitBuilds',        'PROMOTION_CLASS_ANTI_CAVALRY', 1, -3),
('GandhiUnitBuilds',        'PROMOTION_CLASS_RANGED', 1, 8),
('GandhiUnitBuilds',        'PROMOTION_CLASS_AIR_BOMBER', 1, 35),
('GandhiUnitBuilds',        'PROMOTION_CLASS_SIEGE', 1, 13),
--('GandhiUnits',        'UNIT_GIANT_DEATH_ROBOT', 0, -95),
('GandhiImprovements',		'IMPROVEMENT_MINE',		1,	200);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiUnits',        'UNIT_MILITARY_ENGINEER', 0, -100);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiSettlement', 'Foreign Continent', 0, 4), 
('GandhiSettlement', 'Nearest Friendly City', 0, 2); -- Gandhi's expansive empire ;)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 					TooltipString) VALUES
('GandhiSettlement', 'Total Yield', 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('GandhiSettlement', 'Specific Resource', 0, 6, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('GandhiSettlement', 'Specific Resource', 0, 7, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('GandhiSettlement', 'Specific Resource', 1, 35, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GandhiTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('GandhiTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('GandhiTechs', 'TECH_COMPUTERS', 							1, 0), 
('GandhiTechs', 'TECH_ROBOTICS', 							1, 0),
('GandhiTechs', 'TECH_REFINING', 							1, 0),
('GandhiTechs', 'TECH_COMBINED_ARMS', 						1, 0),

('GandhiTechs', 'TECH_FLIGHT', 								1, 0),
('GandhiTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('GandhiTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers

('GandhiTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('GandhiTechs', 'TECH_SMART_MATERIALS', 					1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('PeacekeeperWarLimits', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 90),
--('GandhiPseudoYields', 'PSEUDOYIELD_UNIT_GIANT_DEATH_ROBOT', 1, -95),

('GandhiPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1,		 40),
('GandhiProjects', 'PROJECT_MANHATTAN_PROJECT', 1,			900),
('GandhiProjects', 'PROJECT_OPERATION_IVY', 1, 				900),
--('GandhiProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 			1, 0),
('GandhiProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 	1, 0);

--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_GANDHI'; 
--INSERT OR IGNORE INTO StartBiasResources (CivilizationType, ResourceType, Tier) VALUES ('CIVILIZATION_INDIA', 'RESOURCE_URANIUM', 3);

--INSERT OR REPLACE INTO AgendaPreferredLeaders	
--		(LeaderType,				AgendaType,				PercentageChance)
--VALUES	('LEADER_GANDHI',		'AGENDA_DARWINIST',		33);

-- Already has 70% chance of nuke lover

-- Testing, Possibly won't work as Agenda Darwinist Exclusive with Peacekeeper?

DELETE FROM AiFavoredItems WHERE Item='DIPLOACTION_DECLARE_FRIENDSHIP' AND Favored=1 AND ListType='PeacekeeperWarLimits'; -- Don't think it is here but just in case