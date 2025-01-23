-- noinspection SqlNoDataSourceInspectionForFile

-- Leaders 8

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_BARBAROSSA', 'TRAIT_LEADER_EXPANSIONIST');

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('GermanyDistricts'),
('GermanyTechs'),
('BarbarossaYields'),
('BarbarossaPseudoYields');
INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('GermanyDistricts',       'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'Districts'),
('GermanyTechs',       'TRAIT_CIVILIZATION_DISTRICT_HANSA', 'Technologies'),
('BarbarossaYields',       'TRAIT_LEADER_HOLY_ROMAN_EMPEROR', 'Yields'),
('BarbarossaPseudoYields', 'TRAIT_LEADER_HOLY_ROMAN_EMPEROR', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GermanyDistricts', 'DISTRICT_HANSA', 1, 50), 
('GermanyDistricts', 'DISTRICT_COMMERCIAL_HUB', 1, 50), 
('GermanyDistricts', 'DISTRICT_DAM', 1, 50), 
('GermanyDistricts', 'DISTRICT_AQUEDUCT', 1, 50),
('GermanyDistricts', 'DISTRICT_CANAL', 1, 50),

('GermanyTechs', 'TECH_CURRENCY', 1, 0), 
('GermanyTechs', 'TECH_ENGINEERING', 1, 0), -- Aqueduct
('GermanyTechs', 'TECH_BUTTRESS', 1, 0), -- Dam
('GermanyTechs', 'TECH_APPRENTICESHIP', 1, 0), -- Making sure

('BarbarossaPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -95), 
('BarbarossaPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 25),
('BarbarossaPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15), 
('BarbarossaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',  1, -25),
('BarbarossaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 50), 
('BarbarossaPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35),

('BarbarossaCivics', 'CIVIC_GAMES_RECREATION', 1, 0),
('BarbarossaCivics', 'CIVIC_GUILDS', 1, 0),
('BarbarossaCivics', 'CIVIC_EXPLORATION', 1, 0),
('BarbarossaCivics', 'CIVIC_URBANIZATION', 1, 0),
('BarbarossaTechs', 'TECH_INDUSTRIALIZATION', 1, 0),

('BarbarossaYields', 'YIELD_FAITH',      0,-20),
('BarbarossaYields', 'YIELD_GOLD',       1, 15), -- Commerical Hubs
('BarbarossaYields', 'YIELD_PRODUCTION', 1, 30); -- pvs 11

--INSERT INTO AgendaPreferredLeaders  (LeaderType,	AgendaType,		PercentageChance) VALUES		
--			('LEADER_BARBAROSSA',				'AGENDA_EXPANSIONIST',		20);

-- Victoria

INSERT OR IGNORE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_VICTORIA', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT INTO AgendaPreferredLeaders  (LeaderType,	AgendaType,		PercentageChance) VALUES		
--			('LEADER_VICTORIA',				'AGENDA_EXPANSIONIST',		15),
--			('LEADER_VICTORIA',				'AGENDA_MONEY_GRUBBER',		10);		
			
			
INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('EnglandDistricts'),
('EnglandUnits'),
('EnglandSettlement'),
('EnglandWonders'),
('EnglandTechs'),
('EnglandYields'),

('VictoriaUnits'),
('VictoriaYields'),
('VictoriaScoutUses'),
('VictoriaPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('EnglandDistricts',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Districts'),
('EnglandUnits',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Units'),
('EnglandSettlement',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'PlotEvaluations'),
('EnglandWonders',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Buildings'),
('EnglandTechs',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Technologies'),
('EnglandYields',       'TRAIT_CIVILIZATION_ROYAL_NAVY_DOCKYARD', 'Yields'),

('VictoriaUnits',       'TRAIT_LEADER_PAX_BRITANNICA', 'Units'),
('VictoriaYields',       'TRAIT_LEADER_PAX_BRITANNICA', 'Yields'),
('VictoriaScoutUses',       'TRAIT_LEADER_PAX_BRITANNICA', 'AiScoutUses'),
('VictoriaPseudoYields', 'TRAIT_LEADER_PAX_BRITANNICA', 'PseudoYields');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EnglandWonders', 'BUILDING_GREAT_LIGHTHOUSE', 1, 0),
('EnglandWonders', 'BUILDING_VENETIAN_ARSENAL', 1, 900),
('VictoriaWonders', 'BUILDING_OXFORD_UNIVERSITY', 1, 90),
('VictoriaWonders', 'BUILDING_GREAT_LIBRARY', 1, 0),
('VictoriaWonders', 'BUILDING_HALICARNASSUS_MAUSOLEUM', 1, 900),
('VictoriaWonders', 'BUILDING_BIG_BEN', 1, 0);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EnglandDistricts', 'DISTRICT_ROYAL_NAVY_DOCKYARD', 1, 70),
('EnglandDistricts', 'DISTRICT_DAM', 1, 70), -- Industrial Zone
('EnglandDistricts', 'DISTRICT_AQUEDUCT', 1, 70),
('EnglandDistricts', 'DISTRICT_CANAL', 1, 20),

('EnglandTechs', 'TECH_MASS_PRODUCTION',  1, 0), -- Venetian Arsenal / Shipyard

('EnglandUnits', 'UNIT_SEA_DOG',  1, 30), -- Very Good -- Name might be wrong
('EnglandUnits', 'UNIT_GALLEY',  1, 5),
('EnglandUnits', 'UNIT_MILITARY_ENGINEER',  1, 40), -- Half price and 2 extra charges

('EnglandYields', 'YIELD_PRODUCTION', 1, 20),
('EnglandYields', 'YIELD_GOLD', 	 1, 10),

('VictoriaUnits', 'UNIT_SEA_DOG',  1, 5), -- Boost
('VictoriaUnits', 'UNIT_ENGLISH_REDCOAT',  1, 60), -- Very Strong
('VictoriaUnits', 'UNIT_SCOUT',  1, 10),

('VictoriaYields', 'YIELD_SCIENCE',  1, 8),
('VictoriaYields', 'YIELD_FAITH', 0, -5), -- low religous preference trait (-50)
('VictoriaYields', 'YIELD_PRODUCTION', 1, 12),
('VictoriaYields', 'YIELD_GOLD', 1, 5),
--('VictoriaYields', 'YIELD_FOOD', 1, 3),

('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 80), -- pvs 40, special ship units and movement, foreign continent expansion, pvs 60
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_SPY', 1, 20),
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 20),
('VictoriaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 5),
('VictoriaPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 4),
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT',  1, 15),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 45),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35),
('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 1, -20),
('VictoriaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- Historical / extra iron, coal
--('VictoriaPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 1, -10), low religous (-75)
('VictoriaPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 15),
('VictoriaPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, TooltipString) VALUES
('EnglandSettlement', 'Coastal', 				0, 8, NULL, 'LOC_SETTLEMENT_RECOMMENDATION_COAST'),
('EnglandSettlement', 'Specific Resource', 		0, 4, 'RESOURCE_IRON',   'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), -- pvs 2
('EnglandSettlement', 'Inner Ring Yield', 		0, 1, 'YIELD_PRODUCTION', 'LOC_SETTLEMENT_RECOMMENDATION_INNER_YIELD'),
('EnglandSettlement', 'Specific Resource', 	0, 6, 'RESOURCE_COAL', 'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('VictoriaScoutUses', 'DEFAULT_NAVAL_SCOUTS', 1, 100),
('VictoriaScoutUses', 'NAVAL_SCOUTS_FOR_WORLD_EXPLORATION', 1, 300);

-- Redcoat Leader Trait Bug 
UPDATE Traits SET Name = 'LOC_TRAIT_LEADER_UNIT_ENGLISH_REDCOAT_NAME'      WHERE Name = 'LOC_TRAIT_LEADER_TRAIT_LEADER_UNIT_ENGLISH_REDCOAT_NAME';







