-- Leaders 7 

-- TRAJAN / ROME


INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_TRAJAN', 'TRAIT_LEADER_MAD_EXPANSIONIST');
-- Already has expansionist

-- 		<Row AgendaOne="AGENDA_OPTIMUS_PRINCEPS" AgendaTwo="AGENDA_EXPANSIONIST"/>

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('RomeSettlement'),
('RomeDistricts'),
('RomeYields'),
('RomeWonders'),
('RomePseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('RomeSettlement',   'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 'PlotEvaluations'),
('RomeDistricts', 	'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 	'Districts'),
('RomeYields', 		'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 	'Yields'),
('RomeWonders', 		'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 'Buildings'),
('RomePseudoYields', 'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME', 'PseudoYields');


-- Trajan Trait -- 'TRAJANS_COLUMN_TRAIT'

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('TrajanWonders', 'BUILDING_STONEHENGE', 0, 0),
('RomeSettlement', 'Nearest Friendly City', 0, -2),
('RomeSettlement', 'Fresh Water', 0, -3); -- Bath

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('RomeSettlement', 'Specific Resource', 		0, 8, 			'RESOURCE_IRON', 	'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RomeWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 0
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) -- Iron
SELECT 'RomeWonders', 'BUILDING_JEBEL_BARKAL', 1, 0 
FROM Types WHERE Type = 'BUILDING_JEBEL_BARKAL';


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RomeYields', 'YIELD_PRODUCTION', 1, 25), -- bath industrial zone adj
('RomeYields', 'YIELD_GOLD', 1, 4),
('RomeDistricts', 'DISTRICT_BATH', 1, 0),
('RomePseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 15), -- combo with bath
('RomePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 12), 
('RomePseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 5), 
('RomePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 15),
('RomePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 10),
('RomePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 5), -- More habours slightly
('RomePseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 10), -- Baths and historical
('RomePseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 40), -- Aggressive Early
('RomePseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -2),
('RomePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -7),
('RomePseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 12);

-- HARDRADA / NORWAY

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HARDRADA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_HARDRADA', 'TRAIT_LEADER_EXPANSIONIST');


DELETE FROM AiFavoredItems WHERE ListType = 'LastVikingKingCoastSettlement';
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('LastVikingKingCoastSettlement', 'Coastal',           0, 25,             NULL), 
('LastVikingKingCoastSettlement', 'Foreign Continent', 0, 20,             NULL), 
('LastVikingKingCoastSettlement', 'Specific Feature',  0,  3, 'FEATURE_FOREST'); 

UPDATE AiFavoredItems SET Value = 80 WHERE ListType = 'LastVikingKingNavalPreference' AND Item = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT'; -- def. 100 -- also affects naval agenda -- 80 is a good value, lower would be too low


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('HaraldUnits'),
('HaraldYields'),
('HaraldUnitBuilds'),
('HaraldOperations');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HaraldUnits',  'TRAIT_AGENDA_LAST_VIKING_KING', 		'Units'),
('HaraldYields', 'TRAIT_AGENDA_LAST_VIKING_KING', 		'Yields'),
('HaraldUnitBuilds',   'TRAIT_AGENDA_LAST_VIKING_KING', 'UnitPromotionClasses'),
('HaraldOperations',   'TRAIT_AGENDA_LAST_VIKING_KING', 'AiOperationTypes');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HaraldUnitBuilds',   'PROMOTION_CLASS_NAVAL_MELEE', 1, 10);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HaraldOperations', 'OP_PILLAGE', 1, 1),

('HaraldYields', 'YIELD_FAITH', 1, 11), -- pvs 10
('HaraldYields', 'YIELD_CULTURE', 1, 2),

('HaraldTechs', 'TECH_MINING', 1, 0),
('HaraldCivics', 'CIVIC_MYSTICISM', 1, 0),
('HaraldCivics', 'CIVIC_FOREIGN_TRADE', 1, 0),
('HaraldUnits', 'UNIT_NORWEGIAN_LONGSHIP', 1, -5), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 72), -- barb ship spam
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -5),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_DEFENCES', 1, -5),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_BASE', 1, 15),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 10),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_CITY_POPULATION', 1, -100),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_IMPROVEMENT', 1, -20),
('LastVikingKingNavalPreference', 'PSEUDOYIELD_GPP_PROPHET', 1, 25), -- holy site for bonus, pvs 15, 20
('LastVikingKingNavalPreference', 'PSEUDOYIELD_ENVIRONMENT', 1, 20), -- forests
('LastVikingKingNavalPreference', 'PSEUDOYIELD_UNIT_COMBAT', 1, -5), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_GPP_GENERAL', 1, -15), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_GPP_ADMIRAL', 1,  35), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_TOURISM', 1,  10), 
('LastVikingKingNavalPreference', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 18), -- pvs 10
('LastVikingKingNavalPreference', 'PSEUDOYIELD_UNIT_SETTLER', 1, 10); -- more cities


-- think is fixed by firaxis but leaving just in case -- credit infixo
UPDATE Units SET PseudoYieldType = 'PSEUDOYIELD_UNIT_NAVAL_COMBAT' WHERE UnitType = 'UNIT_NORWEGIAN_LONGSHIP'; 