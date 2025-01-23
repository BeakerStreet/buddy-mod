/*
-- Robert the Bruce / Scotland

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('RobertPseudoYields'),
('RobertDiplomacy'),
('RobertYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RobertYields', 'TRAIT_LEADER_BANNOCKBURN', 'Yields'),
('RobertDiplomacy',	'TRAIT_LEADER_BANNOCKBURN',	'DiplomaticActions');
--('RobertPseudoYields', 'TRAIT_LEADER_BANNOCKBURN', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RobertYields', 'YIELD_GOLD', 1, 3),
('RobertYields', 'YIELD_PRODUCTION', 1, 3),
('RobertYields', 'YIELD_SCIENCE', 1, 3),
--('RobertYields', 'YIELD_CULTURE', 1, -1),
('RobertYields', 'YIELD_FOOD', 1, -1),
('RobertYields', 'YIELD_FAITH', 1, -8),

('ScottishEnlightnmentDistricts', 'DISTRICT_ENTERTAINMENT_COMPLEX', 1, 10),
('ScottishEnlightnmentDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 10),

('RobertWonders', 'BUILDING_GOLDEN_GATE_BRIDGE', 1, 0), -- +3 Amenities
('RobertWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 9000),

('RobertCivics', 'CIVIC_PROFESSIONAL_SPORTS', 1, 0), -- BUILDING_ESTADIO_DO_MARACANA +2 Amenities / 6 Culture in all cities
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_DISTRICT', 1, 15), -- Extra engineer / scientist points
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 20), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_ENGINEER', 1, 30), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_PROPHET', 0, -20), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_GPP_GENERAL', 0, -12),
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 75), -- pvs 20
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- Luxuries and Golf Course
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_WONDER', 1, 40), -- Happiness
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_ENVIRONMENT', 1, 25), 

('ScottishEnlightnmentBiases', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 35), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -5), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 2), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_CITY_BASE', 1, -35), 
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 120), -- Doesn't attack city states
('ScottishEnlightnmentBiases', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 12);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RobertDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('RobertDiplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 80),
('RobertDiplomacy', 'DIPLOACTION_DECLARE_SURPRISE_WAR', 0, 0),
('RobertDiplomacy', 'DIPLOACTION_JOINT_WAR', 1, 0),
('RobertDiplomacy', 'DIPLOACTION_THIRD_PARTY_WAR', 1, 0),
('RobertDiplomacy', 'DIPLOACTION_DECLARE_RECONQUEST_WAR', 1, 60),
('RobertDiplomacy', 'DIPLOACTION_ALLIANCE_RESEARCH', 1, 40);


UPDATE AiFavoredItems SET Value = 800 WHERE ListType = 'ScottishEnlightnmentBiases' AND Item = 'PSEUDOYIELD_HAPPINESS'; -- def 100

/*
		<Row ListType="ScottishEnlightnmentBiases" Item="PSEUDOYIELD_HAPPINESS" Value="100"/>
		<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_CAMPUS" Favored="true"/>
		<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_INDUSTRIAL_ZONE" Favored="true"/>
*/


-- Todo add luxury settling preference

--Defs:
/*
<Row ListType="RobertWonders" Item="BUILDING_COLOSSEUM" Favored="true"/>
<Row ListType="RobertWonders" Item="BUILDING_ESTADIO_DO_MARACANA" Favored="true"/>
<Row ListType="RobertWonders" Item="BUILDING_TEMPLE_ARTEMIS" Favored="true"/>
<Row ListType="RobertWonders" Item="BUILDING_ALHAMBRA" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_GAMES_RECREATION" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_DEFENSIVE_TACTICS" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_REFORMED_CHURCH" Favored="true"/>
<Row ListType="RobertCivics" Item="CIVIC_GLOBALIZATION" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_WRITING" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_APPRENTICESHIP" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_RIFLING" Favored="true"/>
<Row ListType="RobertTechs" Item="TECH_FLIGHT" Favored="true"/>

<Row ListType="ScottishEnlightnmentBiases" Item="PSEUDOYIELD_HAPPINESS" Value="100"/>
<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_CAMPUS" Favored="true"/>
<Row ListType="ScottishEnlightnmentDistricts" Item="DISTRICT_INDUSTRIAL_ZONE" Favored="true"/>
*/


-- SEONDEOK + KOREA

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_SEONDEOK',				'AGENDA_DARWINIST',				20);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('SeondeokYields'),
('KoreaImprovements'),
('KoreaPseudoYields'),
('KoreaBuildings'),
('SeondeokPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('SeondeokYields',       'TRAIT_LEADER_HWARANG', 'Yields'),
('KoreaImprovements',		'TRAIT_CIVILIZATION_DISTRICT_SEOWON',		'Improvements'),
('KoreaPseudoYields', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'PseudoYields'),
('KoreaBuildings', 'TRAIT_CIVILIZATION_DISTRICT_SEOWON', 'Buildings'),
('SeondeokPseudoYields', 'TRAIT_LEADER_HWARANG', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('SeondeokYields', 'YIELD_SCIENCE', 1, 8), -- Korea Already have a science Yield of 50 lol
('KoreaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 30),
('KoreaPseudoYields', 'PSEUDOYIELD_TECHNOLOGY', 1, 10),
('KoreaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 25), -- Campus adjacency, pvs 22
('SeondeokPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 0, -2),
('SeondeokPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 70); -- Bonusues from governers (base 2)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KoreaBuildings', 'BUILDING_RUHR_VALLEY', 1, 50); -- normally has lots of mines

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('KoreaImprovements',		'IMPROVEMENT_MINE',		1,		60), -- For campus (+1 science)
('KoreaImprovements',		'IMPROVEMENT_QUARRY',	0,		-10),
('KoreaImprovements',		'IMPROVEMENT_FARM',		1,		50); -- +1 food

-- Test
DELETE FROM UnitAiInfos WHERE UnitType = 'UNIT_KOREAN_HWACHA' AND (AiType = 'UNITTYPE_SIEGE' OR AiType = 'UNITTYPE_SIEGE_ALL');

-- SHAKA of the ZULU

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SHAKA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SHAKA', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_SHAKA', 'TRAIT_LEADER_MAD_EXPANSIONIST');


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ShakaSettlement'),
('ShakaYields'),
('ShakaDistricts'),
('ShakaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ShakaSettlement', 'TRAIT_LEADER_AMABUTHO', 'PlotEvaluations'),
('ShakaPseudoYields', 'TRAIT_LEADER_AMABUTHO', 'Yields'),
('ShakaDistricts', 'TRAIT_LEADER_AMABUTHO', 'Districts'),
('ShakaPseudoYields', 'TRAIT_LEADER_AMABUTHO', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ShakaDistricts', 'DISTRICT_IKANDA', 		1, 90),

('ShakaSettlement', 'Nearest Friendly City', 0, 2), -- Extra Loyalty from Garrisoned Unit
('ShakaYields', 'YIELD_CULTURE',       		 1, 15), -- pvs 12, 13
--('ShakaYields', 'YIELD_SCIENCE',       	 1, 3), -- only built campus'
('ShakaYields', 'YIELD_GOLD',       		 0, -5),
('ShakaYields', 'YIELD_FOOD',       		 1, -15),
('ShakaYields', 'YIELD_FAITH',       		 0, -8),
('ShakaYields', 'YIELD_PRODUCTION',      	 1, 5),
('ShakaWonders', 'BUILDING_MONUMENT',        1, 20),

('ShakaCivics', 'CIVIC_MILITARY_TRAINING',       1, 0), -- Rush
('ShakaCivics', 'CIVIC_DEFENSIVE_TACTICS',       1, 0),
('ShakaCivics', 'CIVIC_GAMES_RECREATION',        1, 0),
('ShakaCivics', 'CIVIC_DRAMA_POETRY',      		 1, 0), -- Culture
('ShakaCivics', 'CIVIC_MYSTICISM',       		0, 0),

('ShakaCivics', 'CIVIC_THE_ENLIGHTENMENT',       	1, 0), -- Rush2
('ShakaCivics', 'CIVIC_DIPLOMATIC_SERVICE',       	1, 0),
('ShakaCivics', 'CIVIC_HUMANISM',       			1, 0),

('ShakaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',       1, 10),
('ShakaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1,-20),
('ShakaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -18),
--('ShakaPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 15),
('ShakaPseudoYields', 'PSEUDOYIELD_CITY_BASE',            1, 40),
('ShakaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -20),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 10),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 10),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, -8),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 9),
('ShakaPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',        1, -4),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, -12),
('ShakaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1,  30); -- Ikanda


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ShakaWonders', 'BUILDING_STATUE_OF_ZEUS', 1, 900
FROM Types WHERE Type = 'BUILDING_STATUE_OF_ZEUS';


-- LAUTARO / MAPUCHE

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('LautaroPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('LautaroPseudoYields', 'TRAIT_LEADER_LAUTARO_ABILITY', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('LautaroPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 48),
--('LautaroPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -15),
('LautaroPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- chemamull
('LautaroPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 20),
('LautaroPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 5),
('LautaroPseudoYields', 'PSEUDOYIELD_WONDER', 1, 30), -- More likely to get a golden age
('LautaroPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 7), -- Exploration for golden age
('LautaroPseudoYields', 'PSEUDOYIELD_GOLDENAGE_POINT', 1, 40),
('LautaroPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, 150), -- Gets additonal benefits from them -- +4 loyalty / 9 tiles -- base 2.2
('LautaroPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 10);


-- Aggressive Military
INSERT OR REPLACE INTO LeaderTraits (LeaderType, TraitType) VALUES ('LEADER_LAUTARO', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');


-- POUNDMAKER / CREE

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('PoundmakerImprovements'),
('PoundmakerYields'),
('PoundmakerPseudoYields');


INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('PoundmakerImprovements',       'TRAIT_LEADER_ALLIANCE_AND_TRADE', 'Improvements'),
('PoundmakerYields',       'TRAIT_LEADER_ALLIANCE_AND_TRADE', 'Yields'),
('PoundmakerPseudoYields', 'TRAIT_LEADER_ALLIANCE_AND_TRADE', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Value) VALUES
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', -15),
('PoundmakerPseudoYields', 'PSEUDOYIELD_HAPPINESS', -35),
('PoundmakerPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', -12),
('PoundmakerPseudoYields', 'PSEUDOYIELD_WONDER', -10),

('PoundmakerYields', 'YIELD_SCIENCE', -7),
('PoundmakerYields', 'YIELD_CULTURE', -5);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PoundmakerImprovements', 'IMPROVEMENT_MEKEWAP', 1, 90),
('PoundmakerImprovements', 'IMPROVEMENT_CAMP', 1, 0),
('PoundmakerImprovements', 'IMPROVEMENT_PASTURE', 1, 0),

('PoundmakerYields', 'YIELD_FOOD', 1, 25),
('PoundmakerYields', 'YIELD_GOLD', 1, 70), -- Trade Routes, pvs 2
('PoundmakerYields', 'YIELD_FAITH', 0, -25),

('PoundmakerTechs', 'TECH_CURRENCY', 1, 90),
('PoundmakerTechs', 'TECH_CELESTIAL_NAVIGATION', 1, 90),

('PoundmakerTechs', 'TECH_WRITING', 1, 90), -- For Currency
('PoundmakerTechs', 'TECH_ASTROLOGY', 0, 0), -- Rushes it for some reason

('PoundmakerCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('PoundmakerCivics', 'CIVIC_MERCENARIES', 1, 0),
('PoundmakerPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -40),
('PoundmakerPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, 10), 
('PoundmakerPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 10),
('PoundmakerPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -14),
('PoundmakerPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, -7),
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -15),
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 90),
('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 45),

('PoundmakerPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -12),
('PoundmakerPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, -10),
('PoundmakerPseudoYields', 'PSEUDOYIELD_GOVERNOR', 1, -10),
('PoundmakerPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, -15),

('PoundmakerPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 40),
('PoundmakerPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 20),
('PoundmakerPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 100),
('PoundmakerPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 30), -- mekewap, internal trade routes
('PoundmakerPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15); -- pvs 14 (tries to get as many alliances as possible)


-- Todo Camp, Pasture and Luxury Settle

-- GENGHIS_KHAN / MONGOLIA

--INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
-- Already has it

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GENGHIS_KHAN', 'TRAIT_LEADER_MAD_EXPANSIONIST');

DELETE FROM AiFavoredItems WHERE ListType = 'GenghisCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	--	('LEADER_GENGHIS_KHAN',				'AGENDA_DARWINIST',				35);

REPLACE INTO AiListTypes (ListType) VALUES
('GenghisPseudoYields'),
('GenghisYields'),
('MongoliaUnits'),
('MongoliaBuildings');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GenghisYields', 'TRAIT_LEADER_GENGHIS_KHAN_ABILITY', 'Yields'),
('GenghisPseudoYields', 'TRAIT_LEADER_GENGHIS_KHAN_ABILITY', 'PseudoYields'),
('MongoliaUnits', 	'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Units'),
('MongoliaBuildings', 'TRAIT_CIVILIZATION_BUILDING_ORDU', 'Buildings'); -- for both MONGOLIAs

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GenghisYields', 'YIELD_GOLD', 1, 12), -- Trade Routes
('GenghisYields', 'YIELD_CULTURE', 0, -2), 
('GenghisYields', 'YIELD_FAITH', 0, -7), -- already has low religious preference

('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',       1, 22), -- Loads of Units -- pvs 10
('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 0, -15), -- Not really a ship person lol
('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',   1, 5),
('GenghisPseudoYields', 'PSEUDOYIELD_CITY_BASE',            1, 70), -- Even more aggressive
('GenghisPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -20), -- Doesn't care
('GenghisPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',        1, -4), 
('GenghisPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',        1, 10),
('GenghisPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',        1, 5),

('GenghisPseudoYields', 'PSEUDOYIELD_GPP_WRITER',        0, -16),
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_ARTIST',        0, -15),
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',        0, -50),

--('GenghisPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, -10),

('MongoliaUnits', 	'UNIT_MONGOLIAN_KESHIG', 1, 10),
('MongoliaBuildings', 'BUILDING_BARRACKS', 0, 0), -- Ordu

('MongoliaBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 40), -- Normally spawns by lots of pastures
('GenghisCivics', 'CIVIC_DIPLOMATIC_SERVICE', 1, 0),
('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 100), -- Combat Strength
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 25), -- Trade Routes
('GenghisPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -18), -- pvs -16
('GenghisPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 20), -- Vision potentially
('GenghisPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1,  34); -- It's Genghis khan lol / unique building


-- GenghisKhanCavalryLoverList is 'unimplemented'

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_HEAVY_CAVALRY', 1, 17),
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_ANTI_CAVALRY', 0, -10),
--('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_RANGED', 0, -3),
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_SIEGE', 1, 4), -- pvs 5, 9 (9 way too much)
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_SUPPORT', 1, 2), -- pvs 0
('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_MELEE', 1, -4), 

('GenghisKhanCavalryLoverList', 'PROMOTION_CLASS_LIGHT_CAVALRY', 1, 7);

-- Same for Settlement (implementing it for them)

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CavalryLoverCitySettlement', 'Foreign Continent', 0, 5), 
('CavalryLoverCitySettlement', 'Nearest Friendly City', 0, 2);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('CavalryLoverCitySettlement', 'Total Yield', 0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('CavalryLoverCitySettlement', 'Specific Resource', 0, 10, 'RESOURCE_OIL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('CavalryLoverCitySettlement', 'Specific Resource', 1, 10, 'RESOURCE_HORSES', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('CavalryLoverCitySettlement', 'Specific Resource', 0, 7, 'RESOURCE_URANIUM', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');


--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_GENGHIS_KHAN';
--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_SULEIMAN';
--UPDATE HistoricalAgendas SET AgendaType = 'AGENDA_NUKE_LOVER' WHERE LeaderType = 'LEADER_SULEIMAN_ALT';
UPDATE AiFavoredItems SET Item = 'TECH_SAILING' WHERE Item = 'TECH_SALING'; -- GenghisTechs

-- CHANDRAGUPTA / INDIA
-- not the friendliest guy 

DELETE FROM AiLists WHERE ListType = 'TerritorialWarriorList' AND LeaderType = 'TRAIT_LEADER_ARTHASHASTRA'; -- not used
DELETE FROM AiListTypes WHERE ListType = 'TerritorialWarriorList';

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CHANDRAGUPTA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CHANDRAGUPTA', 'TRAIT_LEADER_EXPANSIONIST');

REPLACE INTO AiListTypes (ListType) VALUES
('ChandraguptaSettlement'),
('ChandraguptaPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ChandraguptaSettlement',   'TRAIT_LEADER_ARTHASHASTRA', 'PlotEvaluations'),
('ChandraguptaPseudoYields', 'TRAIT_LEADER_ARTHASHASTRA', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_BASE',       1, 50), 
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 50), 
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',   1,-10), 
--('ChandraguptaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',     1, 15), 
('ChandraguptaSettlement', 'Foreign Continent', 0, 5), -- norway 20
('ChandraguptaSettlement', 'Coastal', 0, -4),
('ChandraguptaSettlement', 'Nearest Friendly City', 0, 2), -- pvs 3 (didn't settle in cramped spaces)
('ChandraguptaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -10),
('ChandraguptaPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, -14), -- unique from Gandhi
('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('ChandraguptaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 15),
('ChandraguptaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -18); 


-- TAMAR of GEORGIA

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TAMAR', 'TRAIT_LEADER_DEFENSIVE');

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('TamarPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('TamarPseudoYields', 'TRAIT_LEADER_RELIGION_CITY_STATES', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TamarTechs', 'TECH_ASTROLOGY', 1, 0), -- get Holy Site first -- 
('TamarTechs', 'TECH_MINING', 1, 0), -- hills bias -- 
('TamarCivics', 'CIVIC_THEOLOGY', 1, 0),
('TamarPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 7),
('TamarPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -18),
('TamarPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 15),
('TamarPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 20),
('ProtectorateWarriorList', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0), 
('ProtectorateWarriorList', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 0);

UPDATE AiFavoredItems SET Item = (SELECT PrereqCivic FROM Governments WHERE GovernmentType = 'GOVERNMENT_MONARCHY')
WHERE ListType = 'TamarCivics' AND Item = 'CIVIC_DIVINE_RIGHT';

-- WILHELMINA / NETHERLANDS

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('WilhelminaYields'),
--('WilhelminaPseudoYields'),
('WilhelminaSettlement'),
('WilhelminaDistricts');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
--('WilhelminaYields',   'TRAIT_RADIO_ORANJE', 'PseudoYields'), -- already in Agendas
--('WilhelminaPseudoYields',   'TRAIT_RADIO_ORANJE', 'PseudoYields'),
('WilhelminaSettlement',   'TRAIT_AGENDA_BILLIONAIRE', 'PlotEvaluations'),
('WilhelminaDistricts',   'TRAIT_AGENDA_BILLIONAIRE', 'Districts');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WilhelminaYields', 'YIELD_FOOD', 1, 4),
('WilhelminaYields', 'YIELD_SCIENCE', 1, 4), -- Better at science victory than cultural
('WilhelminaYields', 'YIELD_PRODUCTION', 1, 7),

--('WilhelminaYields', 'YIELD_GOLD', 1, 7), gold 25 already exists

('WilhelminaDistricts', 'DISTRICT_DAM', 1, 70), -- 50% production 
('WilhelminaDistricts', 'DISTRICT_HARBOR', 1, 70), -- Culture Bomb
('WilhelminaDistricts', 'DISTRICT_CAMPUS', 1, 0),
('WilhelminaDistricts', 'DISTRICT_THEATER', 1, 0),
('WilhelminaDistricts', 'DISTRICT_INDUSTRIAL_ZONE', 1, 0),
('WilhelminaDistricts', 'DISTRICT_ENCAMPMENT', 0, 0),
('WilhelminaDistricts', 'DISTRICT_AQUEDUCT', 1, 0), -- Industrial Zone ADJ

('WilhelminaWonders', 'BUILDING_BIG_BEN', 		1, 0),
('WilhelminaWonders', 'BUILDING_FLOOD_BARRIER', 1, 0), -- 50% Production

('WilhelminaTechs', 'TECH_WRITING', 1, 0), -- Early Op Campus
('WilhelminaTechs', 'TECH_BUTTRESS', 1, 0), -- Gathering Storm Tech, dams
('WilhelminaTechs', 'TECH_COMPUTERS', 1, 0), -- Flood Barrier
('WilhelminaTechs', 'TECH_ENGINEERING', 1, 0), -- Aqueducts

('WilhelminaEmergencyAllianceList', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0), 

('WilhelminaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30),
('WilhelminaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10),
('WilhelminaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -20),

('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 20),
('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 0, -4),
--('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 30), -- PSEUDOYIELD_UNIT_TRADE 50 already exists
('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 0, -10),
('WilhelminaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 35), -- improve everything
('WilhelminaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 11),
('WilhelminaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -10),
--('WilhelminaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 0, -4),
('WilhelminaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -25),
('WilhelminaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 10), -- River Bonus
('WilhelminaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 8),
('WilhelminaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 11),
('WilhelminaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 5);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('WilhelminaSettlement', 'Fresh Water', 0, 10),
('WilhelminaSettlement', 'Coastal',     0, 5);

-- Dam district

INSERT OR REPLACE INTO Types (Type, Kind) VALUES ('PSEUDOYIELD_GOLDENAGE_POINT', 'KIND_PSEUDOYIELD');

UPDATE AiFavoredItems SET Item = 'TECH_SAILING' WHERE Item = 'TECH_SALING'; -- GenghisTechs


--Other




INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 1, 0, 1,  'DIFFICULTY_IMMORTAL', 0.5);



INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ANCIENT', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_CLASSICAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MEDIEVAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_RENAISSANCE', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INDUSTRIAL', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_MODERN', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_ATOMIC', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);

INSERT OR REPLACE INTO MajorStartingUnits (Unit, Era, AiOnly, District, Quantity, NotStartTile, OnDistrictCreated, MinDifficulty, DifficultyDelta)
VALUES ('UNIT_SUPPLY_CONVOY', 'ERA_INFORMATION', 1, 'DISTRICT_SPACEPORT', 2, 0, 1,  'DIFFICULTY_DEITY', 0.5);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MajorFavorBuildings', 'BUILDING_STATUE_LIBERTY', 							1, 80), 
('MajorFavorBuildings', 'BUILDING_AMUNDSEN_SCOTT_RESEARCH_STATION', 		1, 900), 
('MajorFavorBuildings', 'BUILDING_KILWA_KISIWANI', 							1, 900); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('STRATEGY_CANNOT_USE_RELIGION_WONDERS', 'BUILDING_KOTOKU_IN', 							0, -900);


/*
	<BuildingModifiers>
		<Row BuildingType="BUILDING_HALICARNASSUS_MAUSOLEUM" ModifierId="RH_GRANT_TWO_INFLUENCE"/>
		<Row BuildingType="BUILDING_GOV_TALL" ModifierId="RH_GRANT_ONE_INFLUENCE"/>
		<Row BuildingType="BUILDING_GOV_WIDE" ModifierId="RH_GRANT_ONE_INFLUENCE"/>
	</BuildingModifiers>

	<Modifiers>
		<Row>
			<ModifierId>RH_GRANT_TWO_INFLUENCE</ModifierId>
			<ModifierType>MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN</ModifierType>
			<RunOnce>true</RunOnce>
		</Row>
		<Row>
			<ModifierId>RH_GRANT_ONE_INFLUENCE</ModifierId>
			<ModifierType>MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN</ModifierType>
			<RunOnce>true</RunOnce>
		</Row>
	</Modifiers>
	<ModifierArguments>
		<Row>
			<ModifierId>RH_GRANT_TWO_INFLUENCE</ModifierId>
			<Name>Amount</Name>
			<Value>2</Value>
		</Row>
		<Row>
			<ModifierId>RH_GRANT_ONE_INFLUENCE</ModifierId>
			<Name>Amount</Name>
			<Value>1</Value>
		</Row>
	</ModifierArguments>
*/


/*
INSERT OR REPLACE INTO TraitModifiers
		(TraitType,						ModifierId) VALUES	
		--
		('TRAIT_LEADER_MAJOR_CIV',		'RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL'),


INSERT OR REPLACE INTO Modifiers
		(ModifierId,									ModifierType,								OwnerRequirementSetId) VALUES	
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',		'RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL'),

		
		--Arguments:UnitType, Amount, AllowUniqueOverride (0)

INSERT OR REPLACE INTO ModifierArguments
		(ModifierId,									Name,						Value) VALUES	
		--
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'UnitType',					'UNIT_ANTIAIR_GUN'),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'Amount',					1),
		('RH_FREE_AI_AIR_DEFENCE_ADVANCED_BALLISTICS_IMMORTAL',								'AllowUniqueOverride',		0),



INSERT OR REPLACE INTO RequirementSets
		(RequirementSetId,								RequirementSetType) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIREMENTSET_TEST_ALL'),

		
INSERT OR REPLACE INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId) VALUES	
		--
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS'),
		('RH_AI_HAS_ADVANCED_BALLISTICS_IMMORTAL',							'REQUIRES_PLAYER_IS_AI'),


		
INSERT OR REPLACE INTO Requirements
		(RequirementId,									RequirementType) VALUES	
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',					'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'),
*/

/*
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId,									Name,						Value) VALUES	
		('REQUIRES_PLAYER_IMMORTAL_AI', 									'Handicap', 				'DIFFICULTY_IMMORTAL'),
		('RH_REQUIRES_HAS_TECH_ADVANCED_BALLISTICS',						'TechnologyType',			'TECH_LASERS'),
		('RH_REQUIRES_HAS_TECH_GUIDANCE_SYSTEMS',							'TechnologyType',			'TECH_GUIDANCE_SYSTEMS');
	*/

*/