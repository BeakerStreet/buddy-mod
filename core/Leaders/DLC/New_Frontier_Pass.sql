/*

-- CATHERINE_DE_MEDICI_ALT / FRANCE -- MAGNIFICENCE -- TRAIT_LEADER_MAGNIFICENCES

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CatherineAltCivics'),
('CatherineAltProjects');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CatherineWonders',      'TRAIT_LEADER_MAGNIFICENCES', 'Buildings'),
('CatherineTechs',        'TRAIT_LEADER_MAGNIFICENCES', 'Technologies'),
--('CatherineCivics',       'TRAIT_LEADER_MAGNIFICENCES', 'Civics'),
('CatherineAltCivics',    'TRAIT_LEADER_MAGNIFICENCES', 'Civics'),
('CatherineAltProjects',  'TRAIT_LEADER_MAGNIFICENCES', 'Projects');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CatherineAltDistricts'),
('CatherineAltYields'),
('FranceSettlement'),
('CatherineAltSettlement'),
('CatherineAltPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CatherineAltDistricts', 'TRAIT_LEADER_MAGNIFICENCES', 'Districts'),
('CatherineAltYields',       'TRAIT_LEADER_MAGNIFICENCES', 'Yields'),
('FranceSettlement',       'TRAIT_CIVILIZATION_IMPROVEMENT_CHATEAU', 'PlotEvaluations'),
('CatherineAltSettlement',       'TRAIT_LEADER_MAGNIFICENCES', 'PlotEvaluations'),
('CatherineAltPseudoYields', 'TRAIT_LEADER_MAGNIFICENCES', 'PseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CatherineAltCivics', 'TRAIT_LEADER_MAGNIFICENCES', 'Civics');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CatherineAltYields', 'YIELD_PRODUCTION', 1, 3),
('CatherineAltYields', 'YIELD_CULTURE', 1, 15),
('CatherineAltYields', 'YIELD_SCIENCE', 1, -2),
('CatherineAltYields', 'YIELD_FAITH', 1, -5),     
('CatherineAltDistricts', 'DISTRICT_THEATER', 1, 0), -- +2 Culture next to Chateau or Luxury, Tourism from Court Festival
('CatherineAltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -25),
('CatherineAltPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 25),
('CatherineAltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 35),
('CatherineAltPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 40), -- City state luxuries
('CatherineAltPseudoYields', 'PSEUDOYIELD_SETTLER', 1, 20), -- Settle luxuries
('CatherineAltPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 15),
('CatherineAltPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 40), -- luxuries / amenities

('CatherineAltPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 200), -- Court Festival 
('CatherineAltPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 42), 
('CatherineAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 2),
('CatherineAltPseudoYields', 'PSEUDOYIELD_WONDER', 1, 105), -- Double tourism, Production bonus in med, ren, industrial
('CatherineAltCivics', 'CIVIC_DRAMA_POETRY', 1, 0),
('CatherineAltCivics', 'CIVIC_HUMANISM',     1, 0),
('CatherineAltCivics', 'CIVIC_CONSERVATION', 1, 0),
('CatherineAltProjects', 'PROJECT_COURT_FESTIVAL', 1, 400); -- pvs 30, 200

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('FranceSettlement', 'Fresh Water',           0, 6,                   NULL); -- CHATEAU

INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'FranceSettlement', 0, 2, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' 
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true" -- Chateau Appeal

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('CatherineAltSettlement', 'Nearest Friendly City', 0, -1,                   NULL),
('CatherineAltSettlement', 'New Resources',         0, -2,                   NULL), -- base 4
('CatherineAltSettlement', 'Resource Class',        0, 18, 'RESOURCECLASS_LUXURY'); 


-- Todo add luxury settling preference


-- Bull Moose Teddy TRAIT_LEADER_ANTIQUES_AND_PARKS

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_T_ROOSEVELT',				'AGENDA_CULTURED',				34);

-- LEADER_T_ROOSEVELT
-- LEADER_T_ROOSEVELT_ROUGHRIDER

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_T_ROOSEVELT', 'TRAIT_LEADER_CULTURAL_MAJOR_CIV');

-- Bring over
INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RooseveltWonders',      'TRAIT_AGENDA_BULL_MOOSE', 'Buildings'),
('RooseveltTechs',        'TRAIT_AGENDA_BULL_MOOSE', 'Technologies'),
('RooseveltCivics',       'TRAIT_AGENDA_BULL_MOOSE', 'Civics'),
('RooseveltUnits',        'TRAIT_AGENDA_BULL_MOOSE', 'Units');

-- New
INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RooseveltAltYields'),
('RooseveltAltPseudoYields'),
('RooseveltAltSettlement'),
('RooseveltAltDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RooseveltAltYields', 'TRAIT_AGENDA_BULL_MOOSE', 'Yields'),
('RooseveltAltPseudoYields', 'TRAIT_AGENDA_BULL_MOOSE', 'PseudoYields'),
('RooseveltAltSettlement',       'TRAIT_AGENDA_BULL_MOOSE', 'PlotEvaluations'),
('RooseveltAltDistricts', 'TRAIT_AGENDA_BULL_MOOSE', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RooseveltAltYields', 'YIELD_PRODUCTION', 1, -5),
('RooseveltAltYields', 'YIELD_CULTURE', 1, 20),
('RooseveltAltYields', 'YIELD_SCIENCE', 1, 2),
('RooseveltAltYields', 'YIELD_FAITH', 1, -3),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -40),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 15),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 12),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 9),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 11), -- potential DP Victory
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -90),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, -20),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 50), -- extra
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 12),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 30), -- Film Studio
('RooseveltAltPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 60),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 15),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -15), -- pvs -50, too low when improved tiles get +2 science / culture
('RooseveltAltPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 15),
('RooseveltAltPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 50), -- film studio combo + national parks
('RooseveltAltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 8), -- pvs 17
('RooseveltAltDistricts', 'DISTRICT_THEATER', 1, 0),
('RooseveltAltDistricts', 'DISTRICT_PRESERVE', 1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('RooseveltAltSettlement', 'Total Yield', 0, -1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'),
('RooseveltAltSettlement', 'Total Yield', 0, 2, 'YIELD_SCIENCE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('RooseveltAltSettlement', 'Total Yield', 0, 2, 'YIELD_CULTURE', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('RooseveltAltSettlement', 'Total Yield', 0, 2, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'); -- 1

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('RooseveltAltSettlement', 'Specific Terrain', 0, 6, 'TERRAIN_GRASS_MOUNTAIN', NULL),
('RooseveltAltSettlement', 'Specific Terrain', 0, 6, 'TERRAIN_PLAINS_MOUNTAIN', NULL),
('RooseveltAltSettlement', 'Specific Feature', 0, 6, 'FEATURE_VOLCANO', NULL);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'RooseveltAltSettlement', 0, 5, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES' 
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true"

-- MENELIK / ETHIOPIA

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('MenelikYields'),
('MenelikWonders'),
('MenelikTechs'), 
('MenelikCivics'),
('MenelikPseudoYields'),
('MenelikUnitBuilds'),
('MenelikSettlement'),
('MenelikUnits'),
('MenelikAlliances');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MenelikYields',      'TRAIT_LEADER_MENELIK', 'Yields'),
('MenelikWonders',      'TRAIT_LEADER_MENELIK', 'Buildings'),
('MenelikTechs',        'TRAIT_LEADER_MENELIK', 'Technologies'),
('MenelikCivics',       'TRAIT_LEADER_MENELIK', 'Civics'),
('MenelikPseudoYields', 'TRAIT_LEADER_MENELIK', 'PseudoYields'),
('MenelikUnitBuilds',   'TRAIT_LEADER_MENELIK', 'UnitPromotionClasses'),
('MenelikSettlement',   'TRAIT_LEADER_MENELIK', 'PlotEvaluations'),
('MenelikUnits',   		'TRAIT_LEADER_MENELIK', 'Units'),
('MenelikAlliances',    'TRAIT_LEADER_MENELIK', 'Alliances');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MenelikYields',      'YIELD_FAITH', 						   1, 20),
('MenelikYields',      'YIELD_GOLD', 						   1, 8),
('MenelikWonders', 'BUILDING_HAGIA_SOPHIA', 		 		   1, 90), -- cheaper religious
('MenelikWonders', 'BUILDING_COLOSSUS',    			 		   1, 0), -- TRs
('MenelikTechs', 'TECH_CASTLES', 					  		   1, 0), -- oromo cav
('MenelikCivics', 'CIVIC_DRAMA_POETRY', 			  		   1, 0), -- Rock-Hewn
('MenelikCivics', 'CIVIC_FOREIGN_TRADE', 			  		   1, 0), -- traders
('MenelikPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',    		   1, 20), -- Rock-Hewn Church + faith
('MenelikPseudoYields', 'PSEUDOYIELD_UNIT_TRADE',     		   1, 25), -- traders
('MenelikPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',     		   1, 25),

('MenelikPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY',     	   1, 25),
('MenelikUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		   1, 6),
('MenelikAlliances', 'ALLIANCE_RELIGIOUS', 		       		   1, 0),
('MenelikAlliances', 'ALLIANCE_CULTURAL',  			   		   1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MenelikUnits', 'UNIT_ETHIOPIAN_OROMO_CAVALRY', 		1, 15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('MenelikSettlement', 'Inner Ring Yield', 			0, 3, 'YIELD_PRODUCTION', 			'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('MenelikSettlement', 'Fresh Water', 				0, -10, NULL, 						'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), 
('MenelikSettlement', 'Coastal', 					0, -6, NULL,						'LOC_SETTLEMENT_RECOMMENDATION_COAST'),

('MenelikSettlement', 'Resource Class', 			0, 1, 'RESOURCECLASS_BONUS',     'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- Faith
('MenelikSettlement', 'Specific Resource', 		    0, 3, 'RESOURCE_HORSES', 				'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- 3
('MenelikSettlement', 'Resource Class', 			0, 2, 'RESOURCECLASS_LUXURY',    'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'), -- 2
('MenelikSettlement', 'Specific Terrain', 			0, 10, 'TERRAIN_GRASS_HILLS',							 NULL),
('MenelikSettlement', 'Specific Terrain', 			0, 10, 'TERRAIN_PLAINS_HILLS', 							 NULL),
('MenelikSettlement', 'Specific Terrain', 			0, 2, 'TERRAIN_TUNDRA_HILLS',							 NULL);


/*
		<Row ListType="PreferHills" Item="Inner Ring Yield" Favored="false" Value="1" StringVal="YIELD_PRODUCTION" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD"/>
    <Row ListType="MinorCivDistricts" Item="DISTRICT_DIPLOMATIC_QUARTER" Favored="false"/>
*/


UPDATE AiLists
SET LeaderType = NULL, AgendaType = 'TRAIT_AGENDA_ETHIOPIAN_HIGHLANDS'
WHERE ListType = 'PreferHills' AND LeaderType = 'AGENDA_ETHIOPIAN_HIGHLANDS';

-- KUBLAI_KHAN_MONGOLIA / MONGOLIA -- TRAIT_LEADER_KUBLAI

-- China TRAIT_LEADER_KUBLAI


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('KublaiMongoliaTechs'), 
('KublaiMongoliaPseudoYields'),
('KublaiMongoliaUnitBuilds');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('KublaiMongoliaTechs',        'TRAIT_LEADER_KUBLAI_MONGOLIA', 'Technologies'),
('KublaiMongoliaPseudoYields', 'TRAIT_LEADER_KUBLAI_MONGOLIA', 'PseudoYields'),
('KublaiMongoliaUnitBuilds',   'TRAIT_LEADER_KUBLAI_MONGOLIA', 'UnitPromotionClasses');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KublaiMongoliaTechs', 'TECH_STIRRUPS', 1, 0),
('KublaiMongoliaTechs', 'TECH_HORSEBACK_RIDING', 1, 0),
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 15),
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 14),
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 15),
--('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 1),
('KublaiMongoliaUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KublaiMongoliaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50);

/*
		<Row ListType="KublaiKhanPseudoYieldPreferences" Item="PSEUDOYIELD_UNIT_TRADE" Value="50"/>
		<Row ListType="KublaiKhanYieldPreferences" Item="YIELD_GOLD" Value="20"/>
*/

-- LADY_SIX_SKY / MAYA

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LadySixSkyWonders'),
('LadySixSkyTechs'), 
('LadySixSkyCivics'),
('LadySixSkyDistricts'),
('LadySixSkyPseudoYields'),
('LadySixSkyUnitBuilds'),
('LadySixSkyAlliances'),
('LadySixSkyDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LadySixSkyWonders',      'TRAIT_LEADER_MUTAL', 'Buildings'),
('LadySixSkyTechs',        'TRAIT_LEADER_MUTAL', 'Technologies'),
('LadySixSkyCivics',       'TRAIT_LEADER_MUTAL', 'Civics'),
('LadySixSkyDistricts',    'TRAIT_LEADER_MUTAL', 'Districts'),
('LadySixSkyPseudoYields', 'TRAIT_LEADER_MUTAL', 'PseudoYields'),
('LadySixSkyUnitBuilds',   'TRAIT_LEADER_MUTAL', 'UnitPromotionClasses'),
('LadySixSkyAlliances',    'TRAIT_LEADER_MUTAL', 'Alliances'),
('LadySixSkyDiplomacy',    'TRAIT_LEADER_MUTAL', 'DiplomaticActions');

-- Todo improvement plantation

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LadySixSkyDistricts', 'DISTRICT_AQUEDUCT', 1, 20), -- +4 Housing in every city
('LadySixSkyDistricts', 'DISTRICT_OBSERVATORY', 1, 30), -- just to make sure

('MayanObservatory', 'YIELD_FOOD', 1, 8), -- bigger cities, farms
('MayanObservatory', 'YIELD_PRODUCTION', 1, 8), -- industrial zones by aqueducts, more production

('MayanEmpire', 'Foreign Continent', 0, -7),
--('MayanEmpire', 'Nearest Friendly City', 0, -6), -- Much more compact

--		<Row ListType="CompactEmpire" Item="Nearest Friendly City" Favored="false" Value="-5"/> seperate civ and leader
-- Def Fresh water -20, luxury +3

('LadySixSkyWonders', 'BUILDING_CASA_DE_CONTRATACION', 0, 0), 
('LadySixSkyWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 40), -- plantations
('LadySixSkyWonders', 'BUILDING_COLOSSEUM', 	1, 200),

('LadySixSkyWonders', 'BUILDING_GOV_TALL', 1, 900), 
('LadySixSkyWonders', 'BUILDING_GOV_WIDE', 0, -100), 

('LadySixSkyTechs', 'TECH_WRITING', 1, 0), -- Observatory
('LadySixSkyTechs', 'TECH_ARCHERY', 1, 0), -- unique unit
('LadySixSkyTechs', 'TECH_IRRIGATION', 1, 0), -- plantations for Observatory adj
--('LadySixSkyCivics', 'CIVIC_DRAMA_POETRY', 1, 0), -- for Great Library
('LadySixSkyCivics', 'CIVIC_GAMES_RECREATION', 1, 0), -- BUILDING_COLOSSEUM
('LadySixSkyPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 50), -- farms & plantations
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 20),
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 20), -- Turtle

('LadySixSkyPseudoYields', 'PSEUDOYIELD_WONDER', 1, 20),
('LadySixSkyPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, -30), -- discourage CASA_DE_CONTRATACION
('LadySixSkyPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 35), --BUILDING_COLOSSEUM / growth

('LadySixSkyUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 10),
('LadySixSkyUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, -15), -- pvs -23
('LadySixSkyAlliances', 'ALLIANCE_RESEARCH', 1, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 0, 0),
('LadySixSkyDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_SETTLE_TOO_NEAR', 0, 0); -- Agenda

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('MayanEmpire', 'Fresh Water', 				0, -22, NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'), -- base. 30
('MayanEmpire', 'Total Yield', 				0, 1, 'YIELD_FOOD', 			'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('MayanEmpire', 'Inner Ring Yield',			0, 1, 'YIELD_FOOD',    			'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('MayanEmpire', 'Inner Ring Yield',			0, 1, 'YIELD_PRODUCTION',   	 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('MayanEmpire', 'Specific Resource', 		0, 5, 'RESOURCE_BANANAS', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_COCOA', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_COFFEE', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_COTTON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_SPICES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_SUGAR', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_TEA', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Specific Resource', 		0, 6, 'RESOURCE_TOBACCO', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- Plantation
('MayanEmpire', 'Resource Class', 			0, 7, 'RESOURCECLASS_LUXURY',    'LOC_SETTLEMENT_RECOMMENDATION_STRATEGIC_RESOURCES'); -- base 4, adj and plantations for observatory
--('MayanEmpire', 'Coastal', 					0, -1, NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_COAST'); -- base 13


-- Don't Build (Portugal DLC, part of NFP anyway)
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LadySixSkyWonders', 'BUILDING_TORRE_DE_BELEM', 0, 0);

-- Already have Yield Science 25
UPDATE AiFavoredItems
SET Favored = 1
WHERE ListType = 'MayanObservatory' AND Item = 'YIELD_SCIENCE';

UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'MayanObservatory' AND Item = 'YIELD_SCIENCE'; -- def 25

-- BASIL / BYZANTIUM

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BASIL', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BASIL', 'TRAIT_LEADER_EXPANSIONIST');

-- Exclusive Zealot

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_BASIL',				'AGENDA_DEVOUT',				30);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('BasilDistricts'),
('BasilWonders'),
('BasilTechs'), 
('BasilCivics'),
('BasilPseudoYields'),
('BasilYields'),
('BasilUnitBuilds'),
('BasilUnits'),
('BasilImprovements'),
('BasilDiplomacy'),
('BasilSettlement');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('BasilDistricts',      'TRAIT_LEADER_BASIL', 'Districts'),
('BasilWonders',      'TRAIT_LEADER_BASIL', 'Buildings'),
('BasilTechs',        'TRAIT_LEADER_BASIL', 'Technologies'),
('BasilCivics',       'TRAIT_LEADER_BASIL', 'Civics'), -- Non defined at all by default
('BasilYields', 'TRAIT_LEADER_BASIL', 'Yields'),
('BasilPseudoYields', 'TRAIT_LEADER_BASIL', 'PseudoYields'),
('BasilUnitBuilds',   'TRAIT_LEADER_BASIL', 'UnitPromotionClasses'),
('BasilUnits',   'TRAIT_LEADER_BASIL', 'Units'),
('BasilImprovements',   'TRAIT_LEADER_BASIL', 'Improvements'),
('BasilDiplomacy',    'TRAIT_LEADER_BASIL', 'DiplomaticActions'),
('BasilSettlement',   'TRAIT_LEADER_BASIL', 'PlotEvaluations');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

--('BasilYields', 'YIELD_FAITH', 1, 40), -- pvs 8, 11, 14, 25 aggressive -7
('BasilFavoredYields', 'YIELD_SCIENCE', 1, 5),
('BasilFavoredYields', 'YIELD_CULTURE', 1, 5), -- Tagma Rush
('BasilFavoredYields', 'YIELD_GOLD', 0, -5),
--('BasilFavoredYields', 'YIELD_PRODUCTION', 1, 1),

('BasilDistricts', 'DISTRICT_HIPPODROME', 1, 90),
('BasilDistricts', 'DISTRICT_HOLY_SITE', 1, 45),

('BasilWonders', 'BUILDING_HAGIA_SOPHIA', 1, 900), -- +1 spread / BBG cheaper religious units
('BasilWonders', 'BUILDING_MONT_ST_MICHEL', 1, 0), -- Martyr Ability good for Combat
('BasilWonders', 'BUILDING_BARRACKS', 0, -20), -- Ovs not lol
('BasilWonders', 'BUILDING_STABLE', 1, 90), -- yes
('BasilWonders', 'BUILDING_TEMPLE', 1, 20), -- Apostles
('BasilWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 30), -- Normally spawns by lots of pastures

('BasilWonders', 'BUILDING_MONUMENT', 1, 90), 
('BasilWonders', 'BUILDING_GOV_WIDE', 1, 90), 
('BasilWonders', 'BUILDING_GOV_FAITH', 1, 9000), 
('BasilWonders', 'BUILDING_GOV_SPIES', 0, -100), 
('BasilWonders', 'BUILDING_GOV_CITYSTATES', 0, -100), 

('BasilTechs', 'TECH_ASTROLOGY', 1, 0),
('BasilTechs', 'TECH_THE_WHEEL', 1, 0),
('BasilTechs', 'TECH_HORSEBACK_RIDING', 1, 0),
('BasilTechs', 'TECH_BUTTRESS', 1, 0), -- Hagia Sophia
('BasilTechs', 'TECH_BALLISTICS', 1, 0), -- Cuirassier
('BasilTechs', 'TECH_COMBUSTION', 1, 0),
('BasilTechs', 'TECH_COMPOSITES', 1, 0), -- Modern Armour

('BasilCivics', 'CIVIC_MYSTICISM',  1, 0),
('BasilCivics', 'CIVIC_GAMES_RECREATION',  1, 0),
('BasilCivics', 'CIVIC_DIVINE_RIGHT', 1, 0), -- TAGMA UNIT, lol surprised this is not favoured already
('BasilCivics', 'CIVIC_THEOLOGY', 1, 0), -- Temples
('BasilCivics', 'CIVIC_DRAMA_POETRY', 1, 0), -- Needed for Theology
('BasilCivics', 'CIVIC_MYSTICISM', 1, 0), -- Needed for Theology
('BasilCivics', 'CIVIC_CHIVALRY', 1, 0), -- Production towards Industrial era and earlier cav (tagmas)

('BasilPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 55), -- (pvs 20, 25, 30 extra +1 great prophet point from holy sites already)
('BasilPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 25), -- Try and keep a tech adv
('BasilPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS',  1, 110), -- pvs 20, 35, 40, 42, 50, 75
('BasilPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  1, 10),
('BasilPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  1, 5),
('BasilPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 5),
('BasilPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 1000), -- pvs 50, 90, 110, 200, 300
('BasilPseudoYields', 'PSEUDOYIELD_CITY_BASE',  1, 70), -- it's Basil
('BasilPseudoYields', 'PSEUDOYIELD_CITY_POPULATION',  1, 20),

('BasilPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',  1, -6),
('BasilPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES',  1, -35), -- Remember aggressive trait 
('BasilPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',  1, 14), -- pvs 8
('BasilPseudoYields', 'PSEUDOYIELD_INFLUENCE',  1, 30),
('BasilPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR',  1, 25), -- World Religion

('BasilPseudoYields', 'PSEUDOYIELD_HAPPINESS',  1, 150), -- pvs 0, 27
('BasilPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  1, -6), 
('BasilPseudoYields', 'PSEUDOYIELD_WONDER',  1, 10), 

('BasilUnitBuilds', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 30), -- pvs 17, 21, 22, 25
('BasilUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 0, -12),
('BasilUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 2),
--('BasilUnitBuilds', 'PROMOTION_CLASS_MELEE', 0, -10),
--('BasilUnitBuilds', 'PROMOTION_CLASS_SIEGE', 1, 4), -- To trigger city attack, pvs 4, 6, 8, now 0
('BasilUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1, 5), -- pvs 3, 6
('BasilUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 9), -- pvs 10, 16, 15, 12
('BasilDiplomacy', 'DIPLOACTION_DECLARE_HOLY_WAR', 1, 70),
--('BasilDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 90),
('BasilImprovements',	'IMPROVEMENT_PASTURE',		1,		500),
('BasilImprovements', 'IMPROVEMENT_OIL_WELL', 1, 200),
('BasilImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 200),

('BasilDiplomacy', 'DIPLOACTION_KEEP_PROMISE_DONT_CONVERT', 0, 0);

UPDATE AiFavoredItems SET Value = 70 WHERE ListType = 'BasilFavoredYields' AND Item = 'YIELD_FAITH'; -- def 33

--INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES
--('UNIT_BYZANTINE_TAGMA', 'UNITTYPE_SIEGE_ALL');

-- test make TAGMA a siege_all unit because of basils walls bonus

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('BasilUnits',        'UNIT_APOSTLE', 			1, 90),
('BasilUnits',        'UNIT_MISSIONARY', 		0, -150),
('BasilUnits',        'UNIT_GURU', 				0, -50),
('BasilUnits',        'UNIT_NATURALIST', 		0, -10),
('BasilUnits',        'UNIT_TANK', 				1, 25),
('BasilUnits',        'UNIT_BYZANTINE_TAGMA', 	1, 30),
('BasilUnits',        'UNIT_BYZANTINE_DROMON', 	1, 15),
('BasilUnits',        'UNIT_WARRIOR_MONK', 		0, -35),
('BasilUnits',        'UNIT_INFANTRY', 			0, -70),
('BasilUnits',        'UNIT_MODERN_ARMOR', 		1, 7);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('BasilUnits', 'UNIT_ROCK_BAND', -20);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
--('BasilSettlement', 'Coastal', 0, -1, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('BasilSettlement', 'Specific Resource', 0, 7, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('BasilSettlement', 'Inner Ring Yield', 0, 2, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- def 1
('BasilSettlement', 'Total Yield',      0, 2, 'YIELD_FAITH',   'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- 1
('BasilSettlement', 'Specific Resource', 1, 12, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'BasilSettlement', 0, 1, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true", holy site adj



-- Testing horses favoured = true (Scythia has favoured 1, val 12)

-- AMBIORIX / GAUL
-- 		<Row AgendaOne="AGENDA_AMBIORIX_ARMY" AgendaTwo="AGENDA_STANDING_ARMY"/>

--INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_AMBIORIX', 'TRAIT_LEADER_EXPANSIONIST'); -- tech prefs

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('AmbiorixTechs'),
('AmbiorixCivics'),
('AmbiorixYields'),
('AmbiorixDistricts'),
('AmbiorixWonders'),
('AmbiorixPseudoYields'),
('AmbiorixSettlement'),
('AmbiorixScoutUses'),
('AmbiorixUnitBuilds');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('AmbiorixTechs',        'TRAIT_LEADER_AMBIORIX', 'Technologies'),
('AmbiorixCivics',       'TRAIT_LEADER_AMBIORIX', 'Civics'),
('AmbiorixYields',       'TRAIT_LEADER_AMBIORIX', 'Yields'),
('AmbiorixDistricts',       'TRAIT_LEADER_AMBIORIX', 'Districts'),
('AmbiorixWonders',       'TRAIT_LEADER_AMBIORIX', 'Buildings'),
('AmbiorixPseudoYields', 'TRAIT_LEADER_AMBIORIX', 'PseudoYields'),
('AmbiorixSettlement', 'TRAIT_LEADER_AMBIORIX', 'PlotEvaluations'),
('AmbiorixScoutUses', 'TRAIT_LEADER_AMBIORIX', 'AIScoutUses'),
('AmbiorixUnitBuilds',   'TRAIT_LEADER_AMBIORIX', 'UnitPromotionClasses');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmbiorixYields',       'YIELD_PRODUCTION', 	1, 30),
('AmbiorixYields',       'YIELD_FOOD',      	1, 12), -- To help maintain decent pop cities
('AmbiorixYields',       'YIELD_SCIENCE', 		1, 7),
('AmbiorixDistricts',     'DISTRICT_OPPIDUM', 	1, 90),
('AmbiorixDistricts',     'DISTRICT_AQUEDUCT', 	0, -20),
('AmbiorixDistricts',     'DISTRICT_CANAL', 	0, 0),
('AmbiorixDistricts',     'DISTRICT_HARBOR', 	0, 0),
--('AmbiorixDistricts',     'DISTRICT_DAM', 	0, 0),

-- Todo Anker Watt for Population

('AmbiorixTechs', 'TECH_MINING', 1, 0),
('AmbiorixTechs', 'TECH_BRONZE_WORKING', 1, 0),
('AmbiorixTechs', 'TECH_IRON_WORKING', 1, 0), -- Oppidum
--('AmbiorixTechs', 'TECH_ARCHERY', 1, 0),
('AmbiorixScoutUses', 'DEFAULT_LAND_SCOUTS', 1, 150), -- good settlement
('AmbiorixScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 0, -100),
('AmbiorixScoutUses', 'DEFAULT_NAVAL_SCOUTS',               0, -50),

('AmbiorixCivics', 'CIVIC_MILITARY_TRADITION',  1, 0), -- flanking bonus
('AmbiorixCivics', 'CIVIC_MERCENARIES', 1, 0),
('AmbiorixPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 12),
('AmbiorixPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',  1, -20),
('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',  1, 25),
('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',  0, -35),
('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',  1, 15),
('AmbiorixPseudoYields', 'PSEUDOYIELD_WONDER',  1, -15),
--('AmbiorixPseudoYields', 'PSEUDOYIELD_INFLUENCE',  1, -10),

('AmbiorixPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',  1, 25), -- mines minor to districts, oppidum, food
('AmbiorixPseudoYields', 'PSEUDOYIELD_SETTLER',  	1, 30), -- Unique Unit and Early Combat Bonus
--('AmbiorixPseudoYields', 'PSEUDOYIELD_EXPLORER',  1, 15), -- Unique Unit is better

('AmbiorixPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',  1, -8),
('AmbiorixPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 15), -- Unit Combat Adj, arms rush
--('AmbiorixPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5),
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_MELEE', 1, 15),
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 15),
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_SUPPORT', 1, 10), -- Rams to Aid
('AmbiorixUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 8);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('AmbiorixSettlement',   'Specific Feature',         0, 20, 'FEATURE_VOLCANO',    'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('AmbiorixSettlement', 'Coastal', 					0, -9, NULL,                'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('AmbiorixSettlement', 'Fresh Water', 				0, 3, NULL,             'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'),
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_STONE',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_MARBLE',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_GYPSUM',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 12, 'RESOURCE_IRON',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Specific Resource', 		0, 5, 'RESOURCE_NITER',  'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'),
('AmbiorixSettlement', 'Inner Ring Yield', 			0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('AmbiorixSettlement', 'Total Yield', 				0, 2, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- Mines / Quarries
('AmbiorixSettlement', 'Specific Resource', 		0, 8, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Favored, Value, Item, StringVal, TooltipString)
SELECT 'AmbiorixSettlement', 0, -2, 'Specific Feature',  FeatureType, 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'
FROM Features
WHERE NaturalWonder = 1; -- NaturalWonder="true"



DELETE FROM AgendaTraits WHERE AgendaType = 'AGENDA_AMBIORIX_ARMY' AND TraitType = 'TRAIT_LEADER_AGGRESSIVE_MILITARY';

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_LADY_TRIEU', 'TRAIT_LEADER_DEFENSIVE'); -- Historically very defensive

-- LADY_TRIEU / VIETNAM

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LadyTrieuWonders'),
('LadyTrieuTechs'), 
('LadyTrieuCivics'),
('LadyTrieuDistricts'),
('LadyTrieuPseudoYields'),
('LadyTrieuYields'),
('LadyTrieuUnitBuilds'),
('LadyTrieuSettlement'),
('LadyTrieuDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LadyTrieuWonders',      'TRAIT_LEADER_TRIEU', 'Buildings'),
('LadyTrieuTechs',        'TRAIT_LEADER_TRIEU', 'Technologies'),
('LadyTrieuCivics',       'TRAIT_LEADER_TRIEU', 'Civics'),
('LadyTrieuDistricts',    'TRAIT_LEADER_TRIEU', 'Districts'),
('LadyTrieuPseudoYields', 'TRAIT_LEADER_TRIEU', 'PseudoYields'),
('LadyTrieuYields',		  'TRAIT_LEADER_TRIEU', 'Yields'),
('LadyTrieuUnitBuilds',   'TRAIT_LEADER_TRIEU', 'UnitPromotionClasses'),
('LadyTrieuSettlement',   'TRAIT_LEADER_TRIEU', 'PlotEvaluations'),
('LadyTrieuDiplomacy',    'TRAIT_LEADER_TRIEU', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('LadyTrieuYields', 'YIELD_PRODUCTION', 1, -5),
('LadyTrieuYields', 'YIELD_CULTURE', 1, 8),
('LadyTrieuYields', 'YIELD_FAITH', 1, 5),
('LadyTrieuWonders', 'BUILDING_CHICHEN_ITZA', 1, 0),
('LadyTrieuTechs',   'TECH_BRONZE_WORKING', 1, 0), 
('LadyTrieuCivics', 'CIVIC_DEFENSIVE_TACTICS', 1, 0), 
('LadyTrieuDistricts', 'DISTRICT_THANH', 1, 30), 
('LadyTrieuPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 175), -- pvs 80, 100
('LadyTrieuPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -85), -- pvs -70, -75
('LadyTrieuPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_WONDER', 1, -25),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 2),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 5),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 3),
('LadyTrieuPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5),
('LadyTrieuUnitBuilds', 'PROMOTION_CLASS_RANGED', 1, 6), -- Defensive trait
('LadyTrieuUnitBuilds', 'PROMOTION_CLASS_ANTI_CAVALRY', 1, 6),
('LadyTrieuDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('LadyTrieuSettlement', 'Coastal', 			0, -1, 		 NULL, 			'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- coastal def +11 from base
('LadyTrieuSettlement', 'Specific Feature',  0, 4, 		'FEATURE_FOREST', 		'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('LadyTrieuSettlement', 'Specific Feature',  0, 5, 		'FEATURE_JUNGLE', 		'LOC_SETTLEMENT_RECOMMENDATION_FEATURES');

/*
		<Row ListType="VietnamSettlePreferences" Item="Specific Feature" Favored="false" Value="2" StringVal="FEATURE_FOREST" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_FEATURES"/>
		<Row ListType="VietnamSettlePreferences" Item="Specific Feature" Favored="false" Value="2" StringVal="FEATURE_JUNGLE" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_FEATURES"/>
		<Row ListType="VietnamSettlePreferences" Item="Specific Feature" Favored="false" Value="2" StringVal="FEATURE_MARSH" TooltipString="LOC_SETTLEMENT_RECOMMENDATION_FEATURES"/>
*/

-- Gran Colombia

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SIMON_BOLIVAR', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SIMON_BOLIVAR', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SIMON_BOLIVAR', 'TRAIT_LEADER_MAD_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('SimonBolivarWonders'),
('SimonBolivarTechs'), 
('SimonBolivarCivics'),
('SimonBolivarPseudoYields'),
('SimonBolivarUnitBuilds'),
('SimonBolivarDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SimonBolivarWonders',      'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'Buildings'),
('SimonBolivarTechs',        'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'Technologies'),
('SimonBolivarCivics',       'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'Civics'),
('SimonBolivarPseudoYields', 'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'PseudoYields'),
('SimonBolivarUnitBuilds',   'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'UnitPromotionClasses'),
('SimonBolivarDiplomacy',    'TRAIT_LEADER_CAMPANA_ADMIRABLE', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('SimonBolivarWonders', 'BUILDING_JEBEL_BARKAL', 1, 0), -- Iron
('SimonBolivarWonders', 'BUILDING_STONEHENGE', 0, 0), 
('SimonBolivarWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 0),
('SimonBolivarWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0), -- Seems fun
('SimonBolivarTechs', 'TECH_MILITARY_SCIENCE', 1, 0), -- unique unit
('SimonBolivarCivics', 'CIVIC_MERCANTILISM', 1, 0), -- Hacienda

('SimonBolivarPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 			1, 10), -- Hacienda
('SimonBolivarPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 10),
('SimonBolivarPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 	1, 10),
('SimonBolivarPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, -3),
('SimonBolivarPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 			1, 7), -- Ease of Exploration
('SimonBolivarUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 		1, 5), -- Llanero
('SimonBolivarUnitBuilds', 'PROMOTION_CLASS_MELEE', 		1, 			3),
('SimonBolivarUnitBuilds', 'PROMOTION_CLASS_SIEGE', 		1, 			9), -- pvs 10
('SimonBolivarUnitBuilds', 'GREAT_PERSON_CLASS_COMANDANTE_GENERAL', 1, 6),
('SimonBolivarDiplomacy', 'DIPLOACTION_DECLARE_FRIENDSHIP', 		0, 0), 
('SimonBolivarDiplomacy', 'DIPLOACTION_DENOUNCE', 					1, 0),
--('SimonBolivarDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 		1, 80),
('SimonBolivarDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 		1, 0),
('SimonBolivarDiplomacy', 'DIPLOACTION_DECLARE_FORMAL_WAR', 		1, 0);


-- HAMMURABI / BABYLON

-- todo check science victory preference

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HammurabiWonders'),
('HammurabiTechs'), 
('HammurabiCivics'),
('HammurabiYields'),
('HammurabiPseudoYields'),
('HammurabiAlliances'),
('HammurabiDistricts'),
('HammurabiUnits'),
('HammurabiUnitBuilds'),
('HammurabiProjects'),
('HammurabiImprovements'),
('HammurabiScouts'),
('HammurabiSettlement'),
('HammurabiDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HammurabiWonders',      'TRAIT_LEADER_HAMMURABI', 'Buildings'),
('HammurabiTechs',        'TRAIT_LEADER_HAMMURABI', 'Technologies'),
('HammurabiCivics',       'TRAIT_LEADER_HAMMURABI', 'Civics'),
('HammurabiYields',       'TRAIT_LEADER_HAMMURABI', 'Yields'),
('HammurabiPseudoYields', 'TRAIT_LEADER_HAMMURABI', 'PseudoYields'),
('HammurabiAlliances',    'TRAIT_LEADER_HAMMURABI', 'Alliances'),
('HammurabiDistricts',    'TRAIT_LEADER_HAMMURABI', 'Districts'),
('HammurabiUnits',    		'TRAIT_LEADER_HAMMURABI', 'Units'),
('HammurabiUnitBuilds',    		'TRAIT_LEADER_HAMMURABI', 'UnitPromotionClasses'),
('HammurabiProjects',   	 'TRAIT_LEADER_HAMMURABI', 'Projects'),
('HammurabiImprovements',   	 'TRAIT_LEADER_HAMMURABI', 'Improvements'),
('HammurabiScouts',   	 'TRAIT_LEADER_HAMMURABI', 'AiScoutUses'),
('HammurabiSettlement',   	 'TRAIT_LEADER_HAMMURABI', 'PlotEvaluations'),
('HammurabiDiplomacy',	 'TRAIT_LEADER_HAMMURABI', 'DiplomaticActions');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('HammurabiSettlement', 'Coastal', 				0, 1, 					NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('HammurabiSettlement', 'Fresh Water', 			0, 10, 				NULL, 'LOC_SETTLEMENT_RECOMMENDATION_FRESH_WATER'),
('HammurabiSettlement', 'Specific Resource', 	0, 7, 'RESOURCE_NITER', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('HammurabiSettlement', 'Inner Ring Yield', 	0, 1, 'YIELD_PRODUCTION',   'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'), -- def 2
('HammurabiSettlement', 'Specific Resource', 	0, 8, 'RESOURCE_IRON', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiScouts', 'DEFAULT_LAND_SCOUTS',		  					1, 100), -- Tribal Villages
('HammurabiScouts', 'LAND_SCOUTS_PER_PRIMARY_REGION',				  1, 50); -- Tribal Villages

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiImprovements', 'IMPROVEMENT_LUMBER_MILL',				        1, 40), -- Mass Production for Shipyards
('HammurabiImprovements', 'IMPROVEMENT_FORT',		  			    		1, 30),
('HammurabiImprovements', 'IMPROVEMENT_MINE',		 					    1, 40); -- Industrialisation?

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiDistricts', 'DISTRICT_HARBOR',		  1, 0), -- Military Engineering
('HammurabiDistricts', 'DISTRICT_AQUEDUCT',		  1, 90); -- Military Engineering

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiUnitBuilds', 'PROMOTION_CLASS_SIEGE',		 1, 3),
('HammurabiUnitBuilds', 'PROMOTION_CLASS_RANGED',		 1, 11); -- pvs 13

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('HammurabiUnits', 'UNIT_MILITARY_ENGINEER',	1, 70), -- 2 Forts in Territory unlocks field cannons
('HammurabiUnits', 'UNIT_SCOUT',		        1, 12), 
('HammurabiUnits', 'UNIT_SLINGER',		    1, 40), 
('HammurabiUnits', 'UNIT_ARCHER',		    1, 70),
('HammurabiUnits', 'UNIT_RANGER',		    1, 15),
('HammurabiUnits', 'UNIT_NATURALIST',	    1, 25), -- National Park Unlocks Aluminium
('HammurabiUnits', 'UNIT_PRIVATEER',	    1, 30), -- Unlocks Electricity for Subs, Oil Power, Hydroelectric DAM, Seaport
('HammurabiUnits', 'UNIT_IRONCLAD',		    1, 30), -- build a coal mine and ironclad for artillary
('HammurabiUnits', 'UNIT_CROSSBOWMAN',		1, 50); -- Own 2 Crossbowmen for Bombards

--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('HammurabiProjects', 'PROJECT_ENHANCE_DISTRICT_CAMPUS' , 1, 10);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('HammurabiYields', 'YIELD_SCIENCE', 		 1, -10), -- 50% Science Nerf
('HammurabiYields', 'YIELD_CULTURE',		  1, 10),
('HammurabiYields', 'YIELD_GOLD', 			 1, 9),

('HammurabiYields', 'YIELD_FOOD', 			 1, 10),
('HammurabiYields', 'YIELD_PRODUCTION', 	 1, 25);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HammurabiWonders', 'BUILDING_GREAT_LIBRARY',     1, 200), -- Euraka -- critical
('HammurabiWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 80),

('HammurabiWonders', 'BUILDING_PALGUM', 1, 900),
('HammurabiWonders', 'BUILDING_MONUMENT', 1, 50), -- Culture for great Library
('HammurabiWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
--('HammurabiWonders', 'BUILDING_LIBRARY', 1, 0), -- great Library and great scientists (however does get 1 for free on first one)

('HammurabiWonders', 'BUILDING_WORKSHOP', 1, 80), -- Unlocks Industrialisation
('HammurabiWonders', 'BUILDING_SHIPYARD', 1, 90), -- 2 Unlocks Steam Power which then can unlock steel
('HammurabiWonders', 'BUILDING_ARMORY', 1, 40), -- Unlocks Musketmen (Gunpowder)
('HammurabiWonders', 'BUILDING_UNIVERSITY', 1, 40), -- 2 Unlocks Printing for extra combat

('HammurabiWonders', 'BUILDING_GOV_TALL', 1, 40), 
('HammurabiWonders', 'BUILDING_GOV_WIDE', 1, 400), 
('HammurabiWonders', 'BUILDING_GOV_CONQUEST', 0, 0),

('HammurabiWonders', 'BUILDING_GOV_FAITH', 1, 0),
('HammurabiWonders', 'BUILDING_GOV_SPIES', 1, 500),
('HammurabiWonders', 'BUILDING_GOV_CITYSTATES', 0, 0),

('HammurabiWonders', 'BUILDING_GOV_MILITARY', 1, 900),
('HammurabiWonders', 'BUILDING_GOV_CULTURE', 1, 0),
('HammurabiWonders', 'BUILDING_GOV_SCIENCE', 1, 200);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('HammurabiTechs', 'TECH_POTTERY',    1, 0),
('HammurabiTechs', 'TECH_WRITING',    1, 0), -- for Campus and Library
('HammurabiTechs', 'TECH_IRRIGATION', 1, 0), -- for Campus and Library, Palgum 
('HammurabiTechs', 'TECH_ARCHERY', 	  1, 0), -- For Crossbowmen

('HammurabiCivics', 'CIVIC_RECORDED_HISTORY',      1, 0), -- for Great Library
('HammurabiCivics', 'CIVIC_POLITICAL_PHILOSOPHY',  1, 0), -- before great Library
('HammurabiCivics', 'CIVIC_DRAMA_POETRY',          1, 0),	--GL

('HammurabiCivics', 'CIVIC_THE_ENLIGHTENMENT',     1, 0), -- Boosts / Unlocks Oxford Uni
('HammurabiCivics', 'CIVIC_GUILDS', 			   1, 0), -- Unlocks Banking

('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 50), -- pvs 22
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35), -- Good for science victory -- Leonardo da Vinci
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 7), 
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 20), 
('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 12), 
('HammurabiPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 30), 

--('HammurabiPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -12), -- pvs -10
('HammurabiPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  		1, -3),
('HammurabiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 	1, 27),
('HammurabiPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 	1, 24),

('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 			1, 17),
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 		1, 20),
('HammurabiPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 	1, 50),

('HammurabiPseudoYields', 'PSEUDOYIELD_CITY_BASE', 				1, 170),
('HammurabiPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 			1, -50), -- better Techs
('HammurabiPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',	 1, -40),

('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 	1, 	50), -- Extracting Unlocks Combustion / Tanks
('HammurabiPseudoYields', 'PSEUDOYIELD_DISTRICT', 				1, 	15), -- First district free building
('HammurabiPseudoYields', 'PSEUDOYIELD_GOVERNOR', 				1, 	60), -- Gov plaza
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 			1, 	10),
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 				1, 	75), -- Very Useful!
('HammurabiPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 			1, 	5), -- potential boosts
('HammurabiPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 			1, 	40), -- potential boosts, pvs 25, 35
('HammurabiPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 			1, 	-20), -- Chopping
('HammurabiPseudoYields', 'PSEUDOYIELD_WONDER', 				1, 	45), -- potential boosts
('HammurabiPseudoYields', 'PSEUDOYIELD_TOURISM', 				1, 	25), -- potential boosts

--('HammurabiUnitBuilds', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 10),
('HammurabiAlliances', 'ALLIANCE_RESEARCH', 1, 0),

--('HammurabiDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 1, 0), -- Darwinist
--('HammurabiDiplomacy', 'DIPLOACTION_USE_NUCLEAR_WEAPON', 1, 85),
('HammurabiDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0); -- boosts


-- Todo Campus Research Grants project preference - not needed
-- Adequduct preference for Military Engineering - done
-- Archer preference (3 for Crossbowmen) - done
-- Further Crossbowmen preference - done
-- Todo mine preference for Man at Arms Rush, industrial zones (3 mines, 1 iron)
-- Todo scout uses for tribal village eurekas


/*
INSERT OR REPLACE INTO Types (Type, Kind) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     		'KIND_VICTORY_STRATEGY'), 
('STRATEGY_CLASSICAL_HAMMURABI',     	 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_MEDIEVAL_HAMMURABI', 		'KIND_VICTORY_STRATEGY');

INSERT OR REPLACE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     NULL, 2),
('STRATEGY_CLASSICAL_HAMMURABI',      NULL, 2),
('STRATEGY_MEDIEVAL_HAMMURABI', 	NULL, 2);

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     'Is Not Major', 1),
('STRATEGY_CLASSICAL_HAMMURABI',      'Is Not Major', 1),
('STRATEGY_MEDIEVAL_HAMMURABI', 		'Is Not Major', 1);

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier, ThresholdValue) VALUES
('STRATEGY_ANCIENT_HAMMURABI',     'Is Classical', 1, 1),
('STRATEGY_CLASSICAL_HAMMURABI',     'Is Medieval', 1, 1),
('STRATEGY_MEDIEVAL_HAMMURABI',     'Is Renaissance', 1, 1);

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('STRATEGY_ANCIENT_HAMMURABI',    			 'Is Ancient',    					 NULL, 0), 
('STRATEGY_CLASSICAL_HAMMURABI',     		 'Is Atomic',    					  NULL, 0), 
('STRATEGY_MEDIEVAL_HAMMURABI', 			'Is Information',					 NULL, 0); 

INSERT OR REPLACE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('STRATEGY_ANCIENT_HAMMURABI',    			 'Has Agenda',    					 'AGENDA_HAMMURABI_DISTRICTS'), 
('STRATEGY_CLASSICAL_HAMMURABI',     		 'Has Agenda',    					  'AGENDA_HAMMURABI_DISTRICTS'), 
('STRATEGY_MEDIEVAL_HAMMURABI', 			'Has Agenda',					 'AGENDA_HAMMURABI_DISTRICTS'); 

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HAMMURABI_AncientYields'),
('HAMMURABI_AncientPseudoYields'),


INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('HAMMURABI_AncientYields',       'Yields'),
('HAMMURABI_AncientPseudoYields', 'PseudoYields'),


INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_ANCIENT_HAMMURABI', 'AncientYields'),
('STRATEGY_ANCIENT_HAMMURABI', 'AncientPseudoYields'),

*/


--AGENDA_HAMMURABI_DISTRICTS



-- 		<Row StrategyType="STRATEGY_WONDER_OBSESSED" ConditionFunction="Has Agenda" StringValue="AGENDA_WONDER_OBSESSED"/>
--		<Row StrategyType="STRATEGY_WONDER_OBSESSED" ConditionFunction="Is Industrial" StringValue="AGENDA_WONDER_OBSESSED"/>


--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_HAMMURABI';

--INSERT INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_HAMMURABI',				'AGENDA_DARWINIST',						25),
--		('LEADER_HAMMURABI',				'AGENDA_STANDING_ARMY',					35),		
	--	('LEADER_HAMMURABI',				'AGENDA_CULTURED',						22);

--TRAIT_AGENDA_PREFER_CULTURE
-- 		<Row AgendaType="AGENDA_GREAT_PERSON_ADVOCATE" LeaderType="LEADER_KRISTINA" PercentageChance="20"/>

-- Portugal

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JOAO_III', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('JoaoWonders'),
('JoaoTechs'), 
('JoaoYields'),
('JoaoUnits'),
('JoaoScoutUses'),
('JoaoUnitBuilds'),
('JoaoAlliances'),
('JoaoDiplomacy');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('JoaoWonders',      'TRAIT_LEADER_JOAO_III', 'Buildings'),
('JoaoTechs',        'TRAIT_LEADER_JOAO_III', 'Technologies'),
('JoaoYields',       'TRAIT_LEADER_JOAO_III', 'Yields'),

('JoaoUnits', 		'TRAIT_LEADER_JOAO_III', 'Units'),

('JoaoScoutUses',    'TRAIT_LEADER_JOAO_III', 'AiScoutUses'),
('JoaoUnitBuilds',   'TRAIT_LEADER_JOAO_III', 'UnitPromotionClasses'),
('JoaoAlliances',    'TRAIT_LEADER_JOAO_III', 'Alliances'),
('JoaoDiplomacy', 	'TRAIT_LEADER_JOAO_III', 'DiplomaticActions');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_JOAO_III',				'AGENDA_EXPLORER',				25);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('JoaoSavings');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('JoaoSavings',  			 'TRAIT_LEADER_JOAO_III', 'SavingTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('JoaoSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
('JoaoSavings', 'SAVING_UNITS', 										 1),
('JoaoSavings', 'SAVING_PLOTS', 										 1), 
('JoaoSavings', 'SAVING_SLUSH_FUND', 								 	-1); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JoaoExplorationObsessed', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30), -- harbors & unique science building -- pvs 20
--('JoaoExplorationObsessed', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10),
('JoaoExplorationObsessed', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 29), -- pvs 22
('JoaoExplorationObsessed', 'PSEUDOYIELD_UNIT_TRADE',  1, 90), -- traders
('JoaoExplorationObsessed', 'PSEUDOYIELD_DIPLOMATIC_BONUS',  1, 1), -- at pvs -1 was a bit too unfriendly, +1 for open borders
('JoaoWonders', 'BUILDING_COLOSSUS', 1, 0),
('JoaoWonders', 'BUILDING_TORRE_DE_BELEM', 1, 0),
('JoaoWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
('JoaoWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 90),

('JoaoDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 40), -- exploration and nau building (Feitoria)

('JoaoAlliances', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 0), -- todo economic
('JoaoAlliances', 'DIPLOACTION_ALLIANCE_ECONOMIC', 1, 0),

('JoaoTechs', 'TECH_WRITING', 1, 0),
('JoaoTechs', 'TECH_EDUCATION', 1, 0),
('JoaoTechs', 'TECH_CARTOGRAPHY', 1, 0),
('JoaoYields', 'YIELD_GOLD', 1, 16), -- pvs 12, 15, 17
('JoaoUnitBuilds', 'PROMOTION_CLASS_NAVAL_MELEE', 1, 5); -- nau -- pvs 9


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JoaoScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 200), -- pvs 100
('JoaoScoutUses', 'DEFAULT_LAND_SCOUTS', 1, 100),
('JoaoScoutUses', 'LAND_SCOUTS_PER_PRIMARY_REGION', 1, 50),
--('JoaoScoutUses', 'LAND_SCOUTS_PER_SECONDARY_REGION', 1, 50),
('JoaoScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 200); -- pvs 100


-- Todo, improve scouting

UPDATE AiFavoredItems SET Value = 30 WHERE ListType = 'JoaoExplorationObsessed' AND Item = 'PSEUDOYIELD_UNIT_EXPLORER'; -- def 50


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JoaoUnits',        'UNIT_SCOUT', 			1, 35),
('JoaoUnits',        'UNIT_GALLEY', 		1, 10), -- pvs 16 (too high)
('JoaoUnits',        'UNIT_QUADRIREME', 	1, 8), 
('JoaoUnits',        'UNIT_PORTUGUESE_NAU', 1, 5); -- pvs 40, 30 (30 was still a bit too high and is a melee caravel unit anyway)

-- Wiki: The Nau, just like the unit it INSERT OR IGNOREs, has a very short period of relevance, since its upgrade, the Ironclad, is unlocked with Steam Power, (same combat strength but 2 build charges)
-- However starts with a free promotion

INSERT OR REPLACE INTO UnitAiInfos (UnitType, AiType) VALUES ('UNIT_PORTUGUESE_NAU', 'UNITAI_BUILD'); -- just in case

/*
Defs
    <Row ListType="JoaoCivicPreference" Item="CIVIC_FOREIGN_TRADE" Favored="true"/>
    <Row ListType="JoaoCoastalSettlements" Item="Coastal" Favored="false" Value="35"/>
    <Row ListType="JoaoExplorationObsessed" Item="PSEUDOYIELD_UNIT_EXPLORER" Value="50"/>
	
	
	All civs scouts:
		<Row ScoutUseType="DEFAULT_LAND_SCOUTS"/>
		<Row ScoutUseType="DEFAULT_NAVAL_SCOUTS"/>
		<Row ScoutUseType="LAND_SCOUTS_PER_PRIMARY_REGION"/>
		<Row ScoutUseType="LAND_SCOUTS_PER_SECONDARY_REGION"/>
		<Row ScoutUseType="NAVAL_SCOUTS_FOR_WORLD_EXPLORATION"/>
		
		<!-- Note: Scouting values are read in as percentages, so multiply desired numbers by 100 -->
		<Row ListType="DefaultScoutUse" Item="DEFAULT_LAND_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="DEFAULT_NAVAL_SCOUTS" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_PRIMARY_REGION" Value="100"/>
		<Row ListType="DefaultScoutUse" Item="LAND_SCOUTS_PER_SECONDARY_REGION" Value="50"/>
		<Row ListType="DefaultScoutUse" Item="NAVAL_SCOUTS_FOR_WORLD_EXPLORATION" Value="300"/>
	
*/


--Other:

-- Other Leaders

--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('PachacutiDistricts', 'DISTRICT_PRESERVE', 1, 0); -- Todo add preserve buildings as favoured

-- todo potentially add to environment lover agenda (maybe the buildings only)
INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PachacutiWonders', 'BUILDING_GROVE', 1, 90), 
('PachacutiWonders', 'BUILDING_SANCTUARY', 1, 90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_GROVE', 1, 20), 
('MajorFavorBuildings', 'BUILDING_SANCTUARY', 1, 20);

-- Diplomatic Quarter Preference

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'DiplomaticVictoryDistricts', 'DISTRICT_DIPLOMATIC_QUARTER', 1, 200
FROM Districts
WHERE DistrictType = 'DISTRICT_DIPLOMATIC_QUARTER';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_CHANCERY', 1, 90), -- so good all civs should build
('MajorFavorBuildings', 'BUILDING_CONSULATE', 1, 90);

-- BYZANTIUM GAUL dlc (within new frontier)
--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AggressiveBuildings', 'BUILDING_STATUE_OF_ZEUS', 			1, 0); -- Requires barracks

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ShakaWonders', 		'BUILDING_STATUE_OF_ZEUS',        1, 500), -- Impis
('AmbiorixWonders',      'BUILDING_STATUE_OF_ZEUS',       1, 400), -- Extra culture
--('AlexanderWonders',      'BUILDING_STATUE_OF_ZEUS',       1, 300), -- Burst of Science
('GorgoWonders', 		'BUILDING_STATUE_OF_ZEUS', 		  1, 80);


INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('UnitPriorityBoosts', -16, 'UNIT_SOOTHSAYER'),
('UnitPriorityBoosts', -10, 'UNIT_CULTIST');
*/
