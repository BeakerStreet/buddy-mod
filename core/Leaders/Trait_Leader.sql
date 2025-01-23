
/* 
--------------------------------------------------------------------------------------------------------------------------
-- Expansionist
--------------------------------------------------------------------------------------------------------------------------

-- TRAIT_LEADER_EXPANSIONIST already exists (def for dido, trajan a few other leaders)

-- 		<Row ListType="ExpansionistCitySettlement" LeaderType="TRAIT_LEADER_EXPANSIONIST" System="SettlementPreferences"/>

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES

('ExpansionistDiplomacy'),
('ExpansionistUnitBuilds'),
('ExpansionistUnits'),
('ExpansionistDistricts'),
('ExpansionistTechs'),
('ExpansionistCivics'),
('ExpansionistYields'),
('ExpansionistPsuedos'),
('ExpansionistBuildings'),
('ExpansionistProjects'),
('ExpansionistOperations'),
('ExpansionistScoutUses'),
('ExpansionistSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('ExpansionistDiplomacy',   'TRAIT_LEADER_EXPANSIONIST', 'DiplomaticActions'),
('ExpansionistUnitBuilds',   'TRAIT_LEADER_EXPANSIONIST', 'UnitPromotionClasses'),
('ExpansionistUnits', 'TRAIT_LEADER_EXPANSIONIST', 'Units'),
('ExpansionistDistricts', 'TRAIT_LEADER_EXPANSIONIST', 'Districts'),
('ExpansionistTechs',   'TRAIT_LEADER_EXPANSIONIST', 'Technologies'),
('ExpansionistCivics',   'TRAIT_LEADER_EXPANSIONIST', 'Civics'),
('ExpansionistYields',   'TRAIT_LEADER_EXPANSIONIST', 'Yields'),
('ExpansionistPsuedos',   'TRAIT_LEADER_EXPANSIONIST', 'PseudoYields'),
('ExpansionistBuildings',   'TRAIT_LEADER_EXPANSIONIST', 'Buildings'),
('ExpansionistProjects',   'TRAIT_LEADER_EXPANSIONIST', 'Projects'),
('ExpansionistOperations',   'TRAIT_LEADER_EXPANSIONIST', 'AiOperationTypes'),
('ExpansionistScoutUses',   'TRAIT_LEADER_EXPANSIONIST', 'AiScoutUses'),
('ExpansionistSettlement',   'TRAIT_LEADER_EXPANSIONIST', 'PlotEvaluations');

-- 		<Row ListType="FreeCitiesOperationLimits" Item="CITY_ASSAULT" Value="10"/>


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

--('ExpansionistOperations', 'OP_SETTLE', 1, 1);  -- todo ancient and classical only



/*

		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="30"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="9"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="100"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="5"/>
		
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-25"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="-1"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="1"/>
*/



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR', 0, 0),

('ExpansionistDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 0),

-- todo ancient and classical only
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_SETTLER', 		1, 25),  
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_COMBAT',      	 1, 10), -- todo ancient and classical only
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_EXPLORER',      	 1, 15),
--('ExpansionistDistricts', 'DISTRICT_CAMPUS', 				1, 0), -- todo ancient and classical only
('ExpansionistPsuedos', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 100),
('ExpansionistBuildings', 'BUILDING_WALLS', 				1, 30), -- Defence after expansion
('ExpansionistBuildings', 'BUILDING_MONUMENT', 				1, 15), -- Some early culture / Loyalty
('ExpansionistYields', 'YIELD_FOOD', 						1, 15), -- Loyalty
('ExpansionistYields', 'YIELD_SCIENCE', 					1, 6),

('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 30), 
('ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 5), 

('ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 8), 
('ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 8), 

('ExpansionistPsuedos', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',   0, -12),

('ExpansionistPsuedos', 'PSEUDOYIELD_ENVIRONMENT',  			 0, -10),
('ExpansionistPsuedos', 'PSEUDOYIELD_IMPROVEMENT',   			1, 5), 

('ExpansionistPsuedos', 'PSEUDOYIELD_DIPLOMATIC_BONUS',   		1, -1), 
('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_BASE',            	1,  40), 

--('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, -23), 
--('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_DEFENSES',       		 1, -28), 

('ExpansionistPsuedos', 'PSEUDOYIELD_CITY_POPULATION',        1, -90);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistSettlement', 'Foreign Continent', 0, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('ExpansionistSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('ExpansionistSettlement', 'Resource Class', 0, 1, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
('ExpansionistSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), 
('ExpansionistSettlement', 'Specific Resource', 0, 1, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_MELEE',            1,  		5), -- pvs 15, 16, 17, 19
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 		0, 		-6),
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 	0, 		-6),
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 		3),
('ExpansionistUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE',      0,  		-5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('ExpansionistScoutUses', 'DEFAULT_LAND_SCOUTS',          						100), 
('ExpansionistScoutUses', 'DEFAULT_NAVAL_SCOUTS', 								150),
('ExpansionistScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 					50),
('ExpansionistScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 					50),
('ExpansionistScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION',     			200);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistBuildings', 'BUILDING_GOV_TALL', 			0, -100),
('ExpansionistBuildings', 'BUILDING_GOV_WIDE', 			1, 500),
('ExpansionistBuildings', 'BUILDING_GOV_CONQUEST', 		0, -100); 

-- Walls preference 

-- Civics

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistCivics', 'CIVIC_MILITARY_TRADITION', 1, 0), -- Flanking bonus
('ExpansionistCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('ExpansionistCivics', 'CIVIC_EARLY_EMPIRE', 1, 0), -- Settlers
('ExpansionistCivics', 'CIVIC_STATE_WORKFORCE', 1, 0), -- Gov plaza

('ExpansionistCivics', 'CIVIC_MOBILIZATION', 1, 0), -- Armies
('ExpansionistCivics', 'CIVIC_NATIONALISM', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistYields', 'YIELD_SCIENCE', 				1, 3), 
('ExpansionistYields', 'YIELD_PRODUCTION', 				1, 3);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ExpansionistUnits',        'UNIT_GALLEY', 				1, 5),
('ExpansionistUnits',        'UNIT_CARAVEL', 				1, 7),
('ExpansionistUnits',        'UNIT_ARCHER', 				1, 5);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistTechs', 'TECH_MINING', 								1, 0), 
('ExpansionistTechs', 'TECH_ANIMAL_HUSBANDRY', 						1, 0), -- Don't Build farms on Horses
('ExpansionistTechs', 'TECH_BRONZE_WORKING', 						1, 0), 

('ExpansionistTechs', 'TECH_SAILING', 								1, 0), 
('ExpansionistTechs', 'TECH_ARCHERY', 								1, 0), 
('ExpansionistTechs', 'TECH_WRITING', 								1, 50), 

('ExpansionistTechs', 'TECH_MASONRY', 							1, 0), -- Walls

('ExpansionistTechs', 'TECH_CELESTIAL_NAVIGATION', 				1, 100), -- naval expansion
('ExpansionistTechs', 'TECH_SHIPBUILDING', 						1, 100), -- naval expansion

('ExpansionistTechs', 'TECH_CARTOGRAPHY', 						1, 100), -- naval expansion

('ExpansionistTechs', 'TECH_APPRENTICESHIP', 				    1, 0), -- Man at Arms
('ExpansionistTechs', 'TECH_MACHINERY', 				    	1, 0), -- Crossbowmen / Kilwa

('ExpansionistTechs', 'TECH_MILITARY_ENGINEERING', 				1, 0), -- Trebuchet / Niter
('ExpansionistTechs', 'TECH_STIRRUPS', 				            1, 0), -- Knight / Musketman Rush

('ExpansionistTechs', 'TECH_GUNPOWDER', 							1, 0), 
('ExpansionistTechs', 'TECH_METAL_CASTING', 						1, 0), -- Bombard
--('ExpansionistTechs', 'TECH_BALLISTICS',     						1, 0), Field Cannon

('ExpansionistTechs', 'TECH_MILITARY_SCIENCE',     						1, 0),

('ExpansionistTechs', 'TECH_COMBINED_ARMS', 						1, 0), -- Uranium 
('ExpansionistTechs', 'TECH_FLIGHT', 								1, 0),
('ExpansionistTechs', 'TECH_ADVANCED_FLIGHT', 						1, 0), -- Important
('ExpansionistTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('ExpansionistTechs', 'TECH_REFINING', 								1, 0), -- Oil
('ExpansionistTechs', 'TECH_RIFLING', 								1, 0), -- Leads to TECH_REFINING and Steel

('ExpansionistTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers
('ExpansionistTechs', 'TECH_NUCLEAR_FISSION', 						1, 0), 
('ExpansionistTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('ExpansionistTechs', 'TECH_SMART_MATERIALS', 						1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('ExpansionistDistricts', 'DISTRICT_GOVERNMENT', 			1, 300),
('ExpansionistDistricts', 'DISTRICT_HARBOR', 				1, 0);

-- Todo IMPORATANT

-- Scout uses -- Land Exploration Preference


/*
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveProjects', 'PROJECT_MANHATTAN_PROJECT', 			1, 90),
('AggressiveProjects', 'PROJECT_OPERATION_IVY', 				1, 90),
('AggressiveProjects', 'PROJECT_CARBON_RECAPTURE', 				0, -50); -- new value -50
*/


--DISTRICT_NEIGHBORHOOD


--('AggressiveProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0),
--('AggressiveProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 0);


/*

		('AggressiveSpecializations',	1,			10,			'BUILD_TRADE_UNITS',				Null),
		('AggressiveSpecializations',	1,			10,			'BUILD_FOR_FOOD',					Null),
		('AggressiveSpecializations',	1,			10,			'BUILD_FOR_PRODUCTION',				Null),
		('AggressiveSpecializations',	1,			5,			'BUILD_FOR_CULTURE',				Null),
		('AggressiveSpecializations',	1,			-20,		'BUILD_FOR_FAITH',				    Null),

*/

/*

INSERT OR IGNORE INTO AgendaPreferredLeaders	
		(LeaderType,				AgendaType,				PercentageChance)
VALUES	

		('',				'AGENDA_DARWINIST',						30),
		('',				'AGENDA_AIRPOWER',						15),
		('',				'AGENDA_CITY_STATE_PROTECTOR',			30),
		('',				'AGENDA_CULTURED',						15),
		('',				'AGENDA_DESTINATION_CIV',				10),
		('',				'AGENDA_DEMAGOGUE',						25),
		('',				'AGENDA_LIBERTARIAN',					10);
		
*/
-- Doesn't use trait_leader, just leader name

INSERT OR IGNORE INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_MAD_EXPANSIONIST',				'KIND_TRAIT');

INSERT OR IGNORE INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_MAD_EXPANSIONIST');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('Mad_ExpansionistDiplomacy'),
('Mad_ExpansionistUnitBuilds'),
('Mad_ExpansionistUnits'),
('Mad_ExpansionistDistricts'),
('Mad_ExpansionistTechs'),
('Mad_ExpansionistCivics'),
('Mad_ExpansionistYields'),
('Mad_ExpansionistPsuedos'),
('Mad_ExpansionistBuildings'),
('Mad_ExpansionistProjects'),
('Mad_ExpansionistOperations'),
('Mad_ExpansionistScoutUses'),
('Mad_ExpansionistSettlement'),
('Mad_ExpansionistSettlementPrefs');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('Mad_ExpansionistDiplomacy',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'DiplomaticActions'),
('Mad_ExpansionistUnitBuilds',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'UnitPromotionClasses'),
('Mad_ExpansionistUnits', 'TRAIT_LEADER_MAD_EXPANSIONIST', 'Units'),
('Mad_ExpansionistDistricts', 'TRAIT_LEADER_MAD_EXPANSIONIST', 'Districts'),
('Mad_ExpansionistTechs',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Technologies'),
('Mad_ExpansionistCivics',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Civics'),
('Mad_ExpansionistYields',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Yields'),
('Mad_ExpansionistPsuedos',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'PseudoYields'),
('Mad_ExpansionistBuildings',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Buildings'),
('Mad_ExpansionistProjects',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'Projects'),
('Mad_ExpansionistOperations',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'AiOperationTypes'),
('Mad_ExpansionistScoutUses',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'AiScoutUses'),
('Mad_ExpansionistSettlement',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'PlotEvaluations'),
('Mad_ExpansionistSettlementPrefs',   'TRAIT_LEADER_MAD_EXPANSIONIST', 'SettlementPreferences');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
-- todo early only
('Mad_ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 		1, 10),
('Mad_ExpansionistPsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 			1, 8),
('Mad_ExpansionistPsuedos', 'PSEUDOYIELD_UNIT_SETTLER', 				1, 30); 
	
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Mad_ExpansionistOperations', 'OP_SETTLE', 1, 1);  -- todo ancient and classical only

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Mad_ExpansionistSettlement', 'Foreign Continent', 0, 9);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('Mad_ExpansionistSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('Mad_ExpansionistSettlement', 'Resource Class', 0, 1, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
--('Mad_ExpansionistSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), 
('Mad_ExpansionistSettlement', 'Specific Resource', 0, 1, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES

('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_MIN_VALUE_NEEDED', 										-10), 
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_ADDITIONAL_VALUE_PER_CITY', 						    0), 
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_DECAY_TURNS', 											-1), 
('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_DECAY_AMOUNT', 					 						2);
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_CITY_MINIMUM_VALUE', 									25);
--('Mad_ExpansionistSettlementPrefs', 						'SETTLEMENT_CITY_VALUE_MULTIPLIER', 									1);

/*

		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="30"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="9"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="100"/>
		<Row ListType="DefaultCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="5"/>
		
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_MIN_VALUE_NEEDED" Value="-25"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_ADDITIONAL_VALUE_PER_CITY" Value="-1"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_TURNS" Value="-3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_DECAY_AMOUNT" Value="3"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_MINIMUM_VALUE" Value="50"/>
		<Row ListType="ExpansionistCitySettlement" Item="SETTLEMENT_CITY_VALUE_MULTIPLIER" Value="1"/>
*/



--------------------------------------------------------------------------------------------------------------------------
-- Aggressive Military / Diplomacy Trait
--------------------------------------------------------------------------------------------------------------------------

-- Todo     <Row ListType="ScienceSensitivity" Item="YIELD_SCIENCE" Value="25"/>

DELETE FROM AiFavoredItems WHERE ListType = 'AgressiveDiplomacy'; -- Is spelt wrong lol 
DELETE FROM AiFavoredItems WHERE ListType = 'AggressivePseudoYields';

--INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
--('DarwinistEnjoysWarDiplomacy',    'TRAIT_AGENDA_ENJOYS_WAR', 'DiplomaticActions'),
--('DarwinistEnjoysWarPseudoYields', 'TRAIT_AGENDA_ENJOYS_WAR', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AgressiveDiplomacy', 'DIPLOACTION_DENOUNCE', 1, 0), 
('AgressiveDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
--('AgressiveDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 85),
--('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP', 0, 0),
--('AgressiveDiplomacy', 'DIPLOACTION_ALLIANCE', 0, 0),
('AgressiveDiplomacy', 'DIPLOACTION_RENEW_FRIENDSHIP', 0, 0), -- Might need checking
('AgressiveDiplomacy', 'DIPLOACTION_PROPOSE_TRADE', 0, 0), -- Might need checking
('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0),
('AgressiveDiplomacy', 'DIPLOACTION_DECLARE_FORMAL_WAR', 1, 0),

('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15), -- pvs 5, 7
('AggressivePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 27), -- pvs 19, 18, 19, 20, 22
('AggressivePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 17), -- 14, 15, 14
('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',       1, 25), -- 25, pvs 24, 22, 25 (however base pseudo is higher by default at 1.15, now 1.12)
('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 55), -- 25 pvs 26, 27, 30, 45
('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 40), -- 25 pvs 27, 31, 34

('AggressivePseudoYields', 'PSEUDOYIELD_UNIT_TRADE',  		 1, 50), -- Diplo Vision and Money for Units
('AggressivePseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 75),

('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',   1, -40),
('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT',   0, -40),

('AggressivePseudoYields', 'PSEUDOYIELD_INFLUENCE',  				 0, -30),
('AggressivePseudoYields', 'PSEUDOYIELD_ENVIRONMENT',  				 0, -12),
('AggressivePseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   			1, 23), -- Hopefully more Strategics, pvs 20, 12, 21
('AggressivePseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON',   			1, 20), -- pvs 38, 20, 18
('AggressivePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',   		1, -23), -- Pvs -6, -12, -10, -7, -13, -14, -21
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_BASE',            		1,  140), -- 40, pvs 180, 160, 130, 110, 130
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 		1, -28), -- -10 -- pvs -25, -20, -22, -24
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',       		 1, -28), -- -25, pvs -28, -25
('AggressivePseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',      1, -50),

--('AggressivePseudoYields', 'PSEUDOYIELD_CITY_POPULATION',        1, 10),
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20), -- 50, 12
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15), -- Gold
--('AggressivePseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, -6), 
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -10),
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 7), -- pvs 5, 6
('AggressivePseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 35); -- 50, 22

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressivePseudoYields', 'PSEUDOYIELD_WONDER',  -15);

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AggressiveSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AggressiveSettlement',   'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'PlotEvaluations');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveSettlement', 'Foreign Continent', 0, 4);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('AggressiveSettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('AggressiveSettlement', 'Resource Class', 0, 3, 'RESOURCECLASS_STRATEGIC', 'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'),
('AggressiveSettlement', 'Nearest Friendly City', 0, 1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_NEAREST_CITY'), -- pvs 2 ( now reduced def to -9) -- now back to 1 -- back to 2, back to 1
('AggressiveSettlement', 'Specific Resource', 0, 6, 'RESOURCE_NITER', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AggressiveSettlement', 'Specific Resource', 0, 3, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AggressiveSettlement', 'Specific Resource', 0, 6, 'RESOURCE_ALUMINUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 2, 1, 3
('AggressiveSettlement', 'Specific Resource', 0, 15, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 8



-- More siege units to take out cities

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AggressiveUnitBuilds'),
('AggressiveUnits'),
('AggressiveDistricts'),
('AggressiveTechs'),
('AggressiveCivics'),
('AggressiveYields'),
('AggressiveBuildings'),
('AggressiveSavings'),
('AggressiveSpecializations'),
('AggressiveOperations'),
('AggressiveImprovements'),
('AggressiveProjects');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AggressiveUnitBuilds',   		'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'UnitPromotionClasses'),
('AggressiveUnits', 			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Units'),
('AggressiveDistricts', 		'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Districts'),
('AggressiveTechs',   			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Technologies'),
('AggressiveCivics',   			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Civics'),
('AggressiveYields',   			'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Yields'),
('AggressiveBuildings',  		 'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Buildings'),
('AggressiveSavings',  			 'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'SavingTypes'),
('AggressiveSpecializations',   'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'AiBuildSpecializations'),
('AggressiveOperations',       'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'AiOperationTypes'),
('AggressiveImprovements',       'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Improvements'),
('AggressiveProjects',  		 'TRAIT_LEADER_AGGRESSIVE_MILITARY', 'Projects');



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveImprovements', 'IMPROVEMENT_MINE', 					1, 40), -- pvs 25 
('AggressiveImprovements', 'IMPROVEMENT_PASTURE', 				1,  25);
--('AggressiveImprovements',	'IMPROVEMENT_QUARRY',	0,	-5),

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 	1, 200),
('AggressiveImprovements', 'IMPROVEMENT_AIRSTRIP', 			1, 10),
--('AggressiveImprovements', 'IMPROVEMENT_CITY_PARK', 		1, 90),
--('AggressiveImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 0, -80), 
('AggressiveImprovements', 'IMPROVEMENT_MISSILE_SILO', 		1, 90),
('AggressiveImprovements', 'IMPROVEMENT_OIL_WELL', 			1, 200);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveImprovements', 'IMPROVEMENT_MOUNTAIN_TUNNEL', 1, 		30),
('AggressiveImprovements', 'IMPROVEMENT_FORT',  			0,	    50); 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveUnitBuilds', 'PROMOTION_CLASS_RANGED', 					 -2),
('AggressiveUnitBuilds', 'PROMOTION_CLASS_MELEE', 					 1); -- pvs 3 (and favoured), pvs 0

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AggressiveUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 3), -- pvs 0

('AggressiveUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 		1,  4), -- pvs 1, 3, 5
('AggressiveUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 		0, -6),
('AggressiveUnitBuilds', 'PROMOTION_CLASS_AIR_BOMBER', 			1, 30), -- pvs 20
('AggressiveUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		0,-15); -- pvs -2, -3, -4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1),
('AggressiveUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', -9);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveUnitBuilds', 'PROMOTION_CLASS_SIEGE',            1,  10), -- pvs 15, 16, 17, 19 (was 20, boosting for all other civs instead, military strat), pvs 13
('AggressiveUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE',      0,  -5);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveOperations', 'CITY_ASSAULT', 1, 1); 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('AggressiveBuildings', 'BUILDING_MONUMENT', 			1, 0), -- Some early culture

('AggressiveBuildings', 'BUILDING_GOV_MILITARY', 		1, 				900),
('AggressiveBuildings', 'BUILDING_GOV_TALL', 			0,	     		-20),
('AggressiveBuildings', 'BUILDING_GOV_WIDE', 			1, 				700),

('AggressiveBuildings', 'BUILDING_GOV_FAITH',			1, 				 900),
('AggressiveBuildings', 'BUILDING_GOV_SPIES', 			1, 				900),

('AggressiveBuildings', 'BUILDING_GOV_CONQUEST', 		1,				 50); 

-- Civics

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('AggressiveCivics', 'CIVIC_MILITARY_TRADITION', 1, 0), -- Flanking bonus
('AggressiveCivics', 'CIVIC_MILITARY_TRAINING', 1, 0),
('AggressiveCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 1, 0),
('AggressiveCivics', 'CIVIC_EARLY_EMPIRE', 1, 0), -- Settlers
('AggressiveCivics', 'CIVIC_STATE_WORKFORCE', 1, 0), -- Gov plaza

('AggressiveCivics', 'CIVIC_MERCENARIES', 1, 0),
('AggressiveCivics', 'CIVIC_NATIONALISM', 1, 0),
('AggressiveCivics', 'CIVIC_MOBILIZATION', 1, 0),
('AggressiveCivics', 'CIVIC_RAPID_DEPLOYMENT', 1, 0),
('AggressiveCivics', 'CIVIC_SUFFRAGE', 0, 0), 
('AggressiveCivics', 'CIVIC_TOTALITARIANISM', 1, 0), 
--('AggressiveCivics', 'CIVIC_CLASS_STRUGGLE', 0, 0), 
('AggressiveCivics', 'CIVIC_OPTIMIZATION_IMPERATIVE', 1, 0), 
('AggressiveCivics', 'CIVIC_DISTRIBUTED_SOVEREIGNTY', 0, 0), -- -3 Combat Strength from Digital Democracy No lol
('AggressiveCivics', 'CIVIC_VENTURE_POLITICS', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveYields', 'YIELD_SCIENCE', 				1, 5), 
('AggressiveYields', 'YIELD_PRODUCTION', 			1, 3),
('AggressiveYields', 'YIELD_GOLD', 					1, 10), -- pvs 5, 8
('AggressiveYields', 'YIELD_CULTURE', 				1, -2),
('AggressiveYields', 'YIELD_FAITH', 				1, -7);
--('AggressiveYields', 'YIELD_FOOD', 					0, -3); -- needed for loyalty


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item,  Value) VALUES
('AggressiveUnits',        'UNIT_CROSSBOWMAN', 		 -8);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveUnits',        'UNIT_TANK', 				1, 5), -- pvs 40, 10, 9
('AggressiveUnits',        'UNIT_INFANTRY', 			0, -10), -- pvs -10, -12
('AggressiveUnits',        'UNIT_MECHANIZED_INFANTRY', 	0, -11), -- pvs -10
('AggressiveUnits', 		'UNIT_SIEGE_TOWER', 		1, 	5), -- pvs 8 AI is terrible at using them
('AggressiveUnits', 	'UNIT_BOMBARD', 				1,  8), -- pvs 6
('AggressiveUnits', 	'UNIT_ARTILLERY', 				1, 	8), -- pvs 12, 14, 17
('AggressiveUnits', 	'UNIT_ROCKET_ARTILLERY',		1, 	12), -- 7
('AggressiveUnits',        'UNIT_AT_CREW', 				0, -4),
('AggressiveUnits',        'UNIT_MODERN_ARMOR', 		1, 3);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AggressiveTechs', 'TECH_TELECOMMUNICATIONS', 0, 0), -- Fewer nuclear subs test

--('AggressiveTechs', 'TECH_ANIMAL_HUSBANDRY', 					1, 0), -- Don't Build farms on Horses, temp disabled for gaul
('AggressiveTechs', 'TECH_WRITING', 							1, 0),
('AggressiveTechs', 'TECH_BRONZE_WORKING', 						1, 0), 
('AggressiveTechs', 'TECH_IRON_WORKING', 						1, 0), -- Swordsmen
('AggressiveTechs', 'TECH_ENGINEERING', 						1, 0), -- Catapult
('AggressiveTechs', 'TECH_MACHINERY', 							1, 0), -- Crossbowmen

('AggressiveTechs', 'TECH_APPRENTICESHIP', 						1, 0), -- Man at Arms!

('AggressiveTechs', 'TECH_MILITARY_ENGINEERING', 				1, 0),  -- armoury / niter
('AggressiveTechs', 'TECH_STIRRUPS', 							1, 0), -- Knight
('AggressiveTechs', 'TECH_GUNPOWDER', 							1, 0),

('AggressiveTechs', 'TECH_PRINTING', 							1, 0), -- +3 Combat strength

('AggressiveTechs', 'TECH_METAL_CASTING', 						1, 0), -- Bombard

('AggressiveTechs', 'TECH_BALLISTICS',     						1, 0),
('AggressiveTechs', 'TECH_MILITARY_SCIENCE', 					1, 0), -- cav / military academy / line infantry
('AggressiveTechs', 'TECH_COMBUSTION', 							1, 0), -- Tanks
('AggressiveTechs', 'TECH_COMBINED_ARMS', 						1, 0), -- Uranium 
('AggressiveTechs', 'TECH_FLIGHT', 								1, 0),
('AggressiveTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0), -- Important
('AggressiveTechs', 'TECH_RADIO', 								1, 0), -- Aluminium
('AggressiveTechs', 'TECH_REFINING', 							1, 0), -- Oil
('AggressiveTechs', 'TECH_RIFLING', 							1, 0), -- Leads to TECH_REFINING and Steel

('AggressiveTechs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0), -- adv bombers
('AggressiveTechs', 'TECH_NUCLEAR_FISSION', 					1, 0), 
('AggressiveTechs', 'TECH_NUCLEAR_FUSION', 						1, 0), 
('AggressiveTechs', 'TECH_SMART_MATERIALS', 					1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveSavings', 'SAVING_GREAT_PEOPLE', 						 1), -- def 1
('AggressiveSavings', 'SAVING_UNITS', 								 -2); -- def 3

--('AggressiveSavings', 'SAVING_PLOTS', 							0), -- def 2
--('AggressiveSavings', 'SAVING_SLUSH_FUND', 							 0); -- def 4


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('AggressiveSpecializations', 'BUILD_MILITARY_UNITS', 			1); -- def 1

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveProjects', 'PROJECT_MANHATTAN_PROJECT', 			1, 100),
('AggressiveProjects', 'PROJECT_OPERATION_IVY', 				1, 100),
('AggressiveProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 			1, 20),
('AggressiveProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 	1, 100),

('AggressiveProjects', 'PROJECT_CARBON_RECAPTURE', 				0, -50); -- new value -50


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AggressiveDistricts', 'DISTRICT_NEIGHBORHOOD', 				0, 0);


/*
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_FOOD"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_PRODUCTION"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_GOLD"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_SCIENCE"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_CULTURE"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_FOR_FAITH"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_CITY_DEFENSES" Value="-1"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_MILITARY_UNITS" Value="1"/>
		<Row ListType="DefaultCitySpecialization" Item="BUILD_TRADE_UNITS" Value="2"/>
		
		<Row ListType="DefaultScoutUse" Item="DEFAULT_LAND_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="DEFAULT_NAVAL_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_PRIMARY_REGION" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_SECONDARY_REGION" Value="50"/>
		<Row ListType="DefaultScoutUse" Item="NAVAL_SCOUTS_FOR_WORLD_EXPLORATION" Value="300"/>
*/


--DISTRICT_NEIGHBORHOOD


--('AggressiveProjects', 'PROJECT_BUILD_NUCLEAR_DEVICE', 1, 0),
--('AggressiveProjects', 'PROJECT_BUILD_THERMONUCLEAR_DEVICE', 1, 0);


-- Defensive

INSERT OR IGNORE INTO Types   (Type,	Kind)  VALUES	
('TRAIT_LEADER_DEFENSIVE',	'KIND_TRAIT');

INSERT OR IGNORE INTO Traits    (TraitType)  VALUES		
('TRAIT_LEADER_DEFENSIVE');


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('DefensiveAlliances'),
('DefensiveDiplomacy'),
('DefensiveUnitBuilds'),
('DefensiveUnits'),
('DefensiveDistricts'),
('DefensiveTechs'),
('DefensiveCivics'),
('DefensiveYields'),
('DefensivePsuedos'),
('DefensiveBuildings'),
('DefensiveProjects'),
('DefensiveOperations'),
('DefensiveScoutUses'),
('DefensiveSettlement');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('DefensiveAlliances',   'TRAIT_LEADER_DEFENSIVE', 'Alliances'),
('DefensiveDiplomacy',   'TRAIT_LEADER_DEFENSIVE', 'DiplomaticActions'),
('DefensiveUnitBuilds',   'TRAIT_LEADER_DEFENSIVE', 'UnitPromotionClasses'),
('DefensiveUnits', 'TRAIT_LEADER_DEFENSIVE', 'Units'),
('DefensiveDistricts', 'TRAIT_LEADER_DEFENSIVE', 'Districts'),
('DefensiveTechs',   'TRAIT_LEADER_DEFENSIVE', 'Technologies'),
('DefensiveCivics',   'TRAIT_LEADER_DEFENSIVE', 'Civics'),
('DefensiveYields',   'TRAIT_LEADER_DEFENSIVE', 'Yields'),
('DefensivePsuedos',   'TRAIT_LEADER_DEFENSIVE', 'PseudoYields'),
('DefensiveBuildings',   'TRAIT_LEADER_DEFENSIVE', 'Buildings'),
('DefensiveProjects',   'TRAIT_LEADER_DEFENSIVE', 'Projects'),
('DefensiveOperations',   'TRAIT_LEADER_DEFENSIVE', 'AiOperationTypes'),
('DefensiveScoutUses',   'TRAIT_LEADER_DEFENSIVE', 'AiScoutUses'),
('DefensiveSettlement',   'TRAIT_LEADER_DEFENSIVE', 'PlotEvaluations');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
('DefensiveDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
--('DefensiveDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),
('DefensiveDiplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 0, 0),
('DefensiveDiplomacy', 'DIPLOACTION_JOINT_WAR', 0, 0),

('DefensiveDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveAlliances', 'ALLIANCE_MILITARY', 1, 20);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensivePsuedos', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 			1, 3),
('DefensivePsuedos', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 		1, 5),
('DefensivePsuedos', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 			1, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('DefensiveUnitBuilds', 'PROMOTION_CLASS_AIR_FIGHTER', 		8);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveBuildings', 'BUILDING_WALLS', 							1, 100),
('DefensiveBuildings', 'BUILDING_CASTLE', 							1, 100),
('DefensiveBuildings', 'BUILDING_ALHAMBRA', 						1, 0),
('DefensiveBuildings', 'BUILDING_STAR_FORT', 						1, 100);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveCivics', 'CIVIC_DEFENSIVE_TACTICS', 							1, 0),
('DefensiveCivics', 'CIVIC_DIVINE_RIGHT', 								1, 0),
('DefensiveCivics', 'CIVIC_CIVIL_SERVICE', 							    1, 0); -- Alliance

UPDATE AiFavoredItems SET Item = (SELECT PrereqCivic FROM Governments WHERE GovernmentType = 'GOVERNMENT_MONARCHY')
WHERE ListType = 'DefensiveCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DefensiveTechs', 'TECH_ARCHERY', 							1, 0),
('DefensiveTechs', 'TECH_MASONRY', 							1, 0),
('DefensiveTechs', 'TECH_APPRENTICESHIP', 					1, 0), -- Man at Arms high combat strength
('DefensiveTechs', 'TECH_CASTLES', 							1, 0), 
('DefensiveTechs', 'TECH_SIEGE_TACTICS', 					1, 0), 
('DefensiveTechs', 'TECH_MACHINERY', 						1, 0), -- Crossbowmen
('DefensiveTechs', 'TECH_BALLISTICS', 						1, 0), -- Field Cannons
('DefensiveTechs', 'TECH_ADVANCED_FLIGHT', 					1, 0),
('DefensiveTechs', 'TECH_COMPUTERS', 						1, 0), -- Defence Against the Sea lol
('DefensiveTechs', 'TECH_NUCLEAR_FISSION', 					1, 0);





*/