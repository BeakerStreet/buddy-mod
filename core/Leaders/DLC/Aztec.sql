/*

-- AZTEC

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MONTEZUMA', 'TRAIT_LEADER_AGGRESSIVE_MILITARY');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MONTEZUMA', 'TRAIT_LEADER_EXPANSIONIST');
INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_MONTEZUMA', 'TRAIT_LEADER_MAD_EXPANSIONIST');

DELETE FROM AiFavoredItems WHERE ListType = 'MontezumaTechs' AND Item = 'TECH_ASTROLOGY';

REPLACE INTO AiListTypes (ListType) VALUES
('MontezumaSettlement'),
('MontezumaYields'),
('MontezumaPseudoYields'),
('MontezumaUnits'),
('MontezumaUnitBuilds');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('MontezumaSettlement',   'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'PlotEvaluations'),
('MontezumaYields', 		'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'Yields'),
('MontezumaPseudoYields', 'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'PseudoYields'),
('MontezumaUnits',        'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'Units'),
('MontezumaUnitBuilds',   'TRAIT_LEADER_GIFTS_FOR_TLATOANI', 'UnitPromotionClasses');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MontezumaTechs', 'TECH_MINING',     1, 0), 
('MontezumaTechs', 'TECH_IRRIGATION', 1, 0), 

('MontezumaYields', 'YIELD_CULTURE', 1, 6),

('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 80), -- early rush
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -12), 
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, -10), 
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -80),
('MontezumaPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, -60), -- Doesn't care
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 25), -- pvs 15
('MontezumaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -6), -- not known for being that friendly
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, -15),
('MontezumaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 10),
('MontezumaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 7),
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -22), 

('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 0, -25), 
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, 20),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, 5), 
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 0, -26),
--('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 5),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 20),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 20),
('MontezumaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 15), -- luxuries
('MontezumaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 8), -- more districts
('MontezumaPseudoYields', 'PSEUDOYIELD_WONDER', 1, 10),
('MontezumaPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 30), -- Tlachtli Arena Replacement

('MontezumaPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 30),
('MontezumaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 20), -- more combat strength and luxuries
('MontezumaPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 20), -- more combat strength and luxuries -- pvs 16
('MontezumaPseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 100), 
('MontezumaWonders',      'BUILDING_HUEY_TEOCALLI', 1, 0), 
('MontezumaUnits',        'UNIT_BUILDER', 1, 12), 
('MontezumaUnits',        'UNIT_MILITARY_ENGINEER', 0, -90);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('MontezumaUnitBuilds',   'PROMOTION_CLASS_SIEGE', 1, 5),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_MELEE', 1, 18),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_ANTI_CAVALRY', 0, 3),
--('MontezumaUnitBuilds',   'PROMOTION_CLASS_NAVAL_MELEE', 1, 1),
--('MontezumaUnitBuilds',   'PROMOTION_CLASS_NAVAL_RANGED', 1, -2),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_NAVAL_RAIDER', 1, 9),
('MontezumaUnitBuilds',   'PROMOTION_CLASS_RANGED', 1, 5);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('MontezumaSettlement', 'Fresh Water',           0,-3,                   NULL), -- 16
('MontezumaSettlement', 'Coastal',               0,-7,                   NULL), -- 7 -- pvs -3
('MontezumaSettlement', 'Nearest Friendly City', 0, 3,                   NULL), -- forward settle -- pvs 2
('MontezumaSettlement', 'New Resources',         0, 10,                   NULL), -- base 4
('MontezumaSettlement', 'Resource Class',        0, 15, 'RESOURCECLASS_LUXURY'); -- base 2

*/