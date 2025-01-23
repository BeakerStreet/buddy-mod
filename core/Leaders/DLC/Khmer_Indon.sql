
-- JAYAVARMAN / KHMER

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_JAYAVARMAN', 'TRAIT_LEADER_DEFENSIVE');

REPLACE INTO AiListTypes (ListType) VALUES
('JayavarmanDistricts'),
('JayavarmanYields'),
('JayavarmanPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('JayavarmanDistricts',    'TRAIT_LEADER_MONASTERIES_KING', 'Districts'),
('JayavarmanYields',       'TRAIT_LEADER_MONASTERIES_KING', 'Yields'),
('JayavarmanPseudoYields', 'TRAIT_LEADER_MONASTERIES_KING', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('JayavarmanDistricts', 'DISTRICT_AQUEDUCT', 1, 0), 
('JayavarmanDistricts', 'DISTRICT_HOLY_SITE', 1, 0), -- Important
('JayavarmanYields', 'YIELD_CULTURE', 1, 10), -- pvs 7
('JayavarmanYields', 'YIELD_FAITH',   1, 30), -- pvs 15
('JayavarmanYields', 'YIELD_FOOD',    1, 15), -- work ethic over feed the world
('JayavarmanYields', 'YIELD_SCIENCE', 1, -4),
('JayavarmanYields', 'YIELD_GOLD',    1, -10),
('JayavarmanPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 25),
('JayavarmanPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 25), -- Prasat +1 slot
('JayavarmanPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 11),
('JayavarmanPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -15), -- Domrey advantage 
('JayavarmanPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 20),
('JayavarmanPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 35),
('JayavarmanPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, -5),
('JayavarmanPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -15),
('JayavarmanPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 6),
('JayavarmanPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -10),

('JayavarmanWonders', 'BUILDING_GRANARY', 1, 0), --0.5 Culture for every population with Prasat, 1 faith with aqueduct
('JayavarmanWonders', 'BUILDING_PRASAT', 1, 90),
('JayavarmanWonders', 'BUILDING_WATER_MILL', 1, 0); -- Rivers / Higher population growth

UPDATE AiFavoredItems SET Value = 5 WHERE ListType = 'JayavarmanUnitBuilds' AND Item = 'UNIT_MISSIONARY'; -- was 1

-- ('JayavarmanWonders', 'BUILDING_CRISTO_REDENTOR', 1, 900), -- Already exists

-- Add unit builds siege preference?

REPLACE INTO UnitAiInfos (UnitType, AiType)
SELECT 'UNIT_KHMER_DOMREY', 'UNITTYPE_SIEGE_ALL' 
FROM UnitAiTypes
WHERE AiType = 'UNITTYPE_SIEGE_ALL';

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GITARJA', 'TRAIT_LEADER_DEFENSIVE');

-- GITARJA / INDONESIA

REPLACE INTO AiListTypes (ListType) VALUES
('GitarjaSettlement'),
('GitarjaYields'),
('GitarjaPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GitarjaSettlement',   'TRAIT_LEADER_EXALTED_GODDESS', 'PlotEvaluations'),
('GitarjaYields',       'TRAIT_LEADER_EXALTED_GODDESS', 'Yields'),
('GitarjaPseudoYields', 'TRAIT_LEADER_EXALTED_GODDESS', 'PseudoYields');
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GitarjaSettlement', 'Coastal', 0, 11),
('GitarjaYields', 'YIELD_SCIENCE',    1, -6),
('GitarjaYields', 'YIELD_FAITH',      1, 10),
('GitarjaYields', 'YIELD_FOOD',       1, 10),
('GitarjaYields', 'YIELD_PRODUCTION', 1,  2),
('GitarjaYields', 'YIELD_GOLD',       1,-10),
('GitarjaYields', 'YIELD_CULTURE',    1,  10),

('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -65), 
('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, -90),
('GitarjaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- sea
('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 20), -- pvs 15
('GitarjaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 12),
('GitarjaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -35),
('GitarjaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',  0, -7),
('GitarjaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',  0, -7),
('GitarjaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  0, -6),
('GitarjaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 20),
('GitarjaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 16),
('GitarjaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 19), -- pvs 18
('GitarjaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 10), -- pvs 16
('GitarjaWonders', 'BUILDING_ANGKOR_WAT', 1, 0);

--INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
--('GitarjaWonders');
--INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
--('GitarjaWonders', 'TRAIT_LEADER_EXALTED_GODDESS', 'Buildings');
--INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('GitarjaWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('PreferPopulationBuildings', 'BUILDING_ANGKOR_WAT', 1, 80);
