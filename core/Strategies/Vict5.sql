

--------------------------------------------------------------------------------------------------------------------------
-- Diplomatic Victory
-- Special Thanks and Important Credit for some Diplomatic Victory and world congress changes - Infixo
--------------------------------------------------------------------------------------------------------------------------

REPLACE INTO AiListTypes (ListType) VALUES
('DiplomaticVictoryAgendas'), 
('DiplomaticVictoryAlliances'), 
('DiplomaticVictoryCivics'),
('DiplomaticVictoryDiplomacy'),
('DiplomaticVictoryDistricts'), 
('DiplomaticVictoryCommemorations'),
('DiplomaticVictoryProjects'),
('DiplomaticVictoryTechs'),
('DiplomaticVictoryWonders'),
('DiplomaticVictoryYields');

REPLACE INTO AiLists (ListType, System) VALUES
('DiplomaticVictoryAgendas',      'Agendas'),
('DiplomaticVictoryAlliances',    'Alliances'),
('DiplomaticVictoryCivics',       'Civics'),
('DiplomaticVictoryDiplomacy',    'DiplomaticActions'),
('DiplomaticVictoryDistricts',    'Districts'),
('DiplomaticVictoryCommemorations', 'Commemorations'),
('DiplomaticVictoryProjects',     'Projects'),
('DiplomaticVictoryTechs',        'Technologies'),
('DiplomaticVictoryWonders',      'Buildings'),
('DiplomaticVictoryYields',       'Yields');

REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryAgendas'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryAlliances'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryCivics'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryDiplomacy'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryDistricts'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryCommemorations'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryProjects'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryTechs'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryWonders'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryYields');

-- Todo add preference to scout more of the map

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('DiplomaticVictoryWonders', 'BUILDING_CASTLE', 			1, 50), -- pvs 0
('DiplomaticVictoryWonders', 'BUILDING_STAR_FORT',			1, 70), -- pvs 40, important for diplo favour of course
('DiplomaticVictoryWonders', 'BUILDING_ORSZAGHAZ',      	1, 90), -- Important
('DiplomaticVictoryWonders', 'BUILDING_MAHABODHI_TEMPLE',   1, 120), -- +2 DP Victory Points
('DiplomaticVictoryWonders', 'BUILDING_POTALA_PALACE', 	    1, 90),
('DiplomaticVictoryWonders', 'BUILDING_STATUE_LIBERTY',     1, 200), -- +4!! -- VERY VERY IMPORTANT
('DiplomaticVictoryWonders', 'BUILDING_KILWA_KISIWANI',     1, 150),

('DiplomaticVictoryWonders', 'BUILDING_WATER_MILL', 1, 0),
('DiplomaticVictoryWonders', 'BUILDING_GRANARY', 1, 0),

('DiplomaticVictoryWonders', 'BUILDING_COAL_POWER_PLANT',     0, -50), -- high pollution

('DiplomaticVictoryWonders', 'BUILDING_CHANCERY', 1, 200), -- Important!!
('DiplomaticVictoryWonders', 'BUILDING_CONSULATE', 1, 200),

('DiplomaticVictoryYields', 'YIELD_PRODUCTION', 0, -15), -- pollution penalty
('DiplomaticVictoryYields', 'YIELD_CULTURE', 	1, 15),
('DiplomaticVictoryYields', 'YIELD_GOLD', 		1, 15);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DiplomaticVictoryTechs', 'TECH_ASTROLOGY',     1, 0), -- Potala Palace (1dp and diplo card)
('DiplomaticVictoryTechs', 'TECH_MACHINERY',     1, 0), -- Kilwa
('DiplomaticVictoryTechs', 'TECH_SEASTEADS',     1, 0), -- +1 DP Point

('DiplomaticVictoryTechs', 'TECH_SANITATION',     1, 0); -- ORSZAGHAZ


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DiplomaticVictoryCivics', 'CIVIC_THEOLOGY',     1, 0), -- leads to divine right and unlocks the mahadodhi temple
('DiplomaticVictoryCivics', 'CIVIC_DIVINE_RIGHT', 1, 0), -- Monarchy

('DiplomaticVictoryCivics', 'CIVIC_CIVIL_SERVICE',     1, 0),
('DiplomaticVictoryCivics', 'CIVIC_GLOBAL_WARMING_MITIGATION',     1, 0), -- +1 DP Point

('DiplomaticVictoryCivics', 'CIVIC_MERCANTILISM', 1, 0),  -- Leads to Statue Liberty
('DiplomaticVictoryCivics', 'CIVIC_CIVIL_ENGINEERING', 1, 0), -- Statue Liberty

('DiplomaticVictoryCivics', 'CIVIC_IDEOLOGY',          				1, 0), -- for late game governments
('DiplomaticVictoryCivics', 'CIVIC_SUFFRAGE', 						1, 0), -- Democracy, yes
('DiplomaticVictoryCivics', 'CIVIC_DIGITAL_DEMOCRACY', 				1, 0),
--('DiplomaticVictoryCivics', 'CIVIC_TOTALITARIANISM', 		0, 0), -- Fascism, no 
--('DiplomaticVictoryCivics', 'CIVIC_CLASS_STRUGGLE', 		0, 0), -- Communism, no

('DiplomaticVictoryDistricts', 'DISTRICT_DIPLOMATIC_QUARTER',    1, 200),
('DiplomaticVictoryDistricts', 'DISTRICT_GOVERNMENT',    1, 90),

('DiplomaticVictoryDiplomacy', 'DIPLOACTION_ALLIANCE',         1, 50),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE',   1, 0),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_LIBERATION_WAR', 1, 60),
('DiplomaticVictoryDiplomacy', 'DIPLOACTION_DECLARE_PROTECTORATE_WAR', 1, 30),

('DiplomaticVictoryDiplomacy', 'DIPLOACTION_LIBERATE_CITY', 1, 50),

--('DiplomaticVictoryDiplomacy', 'DIPLOACTION_PROPOSE_PEACE_DEAL', 1, 0),

('DiplomaticVictoryProjects', 'PROJECT_CARBON_RECAPTURE', 1, 60), -- Reduces CO2 to potentially 0 and earns 30 diplo favor
('DiplomaticVictoryProjects', 'PROJECT_SEND_AID',         1, 400), -- +2 for winning
('DiplomaticVictoryProjects', 'PROJECT_TRAIN_ATHLETES',   1, 70), -- +1 dp for gold tier (highest score)

('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_PROPHET',      1, -25),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_MERCHANT',      1, 15),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_GPP_ENGINEER',      0, -25), -- Pollution Penalty
--('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 50), -- def 100
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 25), -- pvs 25, 17, 20, 22
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 30), -- def -0.5. pvs 40, 35

('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_WONDER', 1, 35), -- Diplomatic victory wonders
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_BASE', 1, -15), -- base 820 early game
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_DEFENSES', 1, 6), -- base 60 pvs 12
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 15), -- base 70
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 	-6),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_STANDING_ARMY_VALUE',  1, 	-3),

('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 300), -- base -210 (minus diplo points for controlling one)
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_ENVIRONMENT', 1, 50), -- pvs 70
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, -18),
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_INFLUENCE',        1, 70), -- pvs 25, 30, 40, 100
('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_UNIT_TRADE',       1, 15);
--('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_UNIT_SPY',       1, 15), -- For city states / isn't great for alliances
--('DiplomaticPseudoYieldPreferences', 'PSEUDOYIELD_SPACE_RACE',       1, -10);

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'DiplomaticVictoryCivics', PrereqCivic, 1, 0
FROM Governments
WHERE GovernmentType = 'GOVERNMENT_MONARCHY';

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DiplomaticVictoryWonders', 'BUILDING_GOV_CONQUEST', 0, 0),
--('DiplomaticVictoryWonders', 'BUILDING_GOV_TALL', 1, 80),
--('DiplomaticVictoryWonders', 'BUILDING_GOV_WIDE', 1, 80),
('DiplomaticVictoryWonders', 'BUILDING_GOV_CITYSTATES', 1, 500);
--('DiplomaticVictoryWonders', 'BUILDING_GOV_MILITARY', 0, 0);


-- PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT -- Other Victories

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CultureVictoryPseudoYields',   'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1,  30),
('MilitaryVictoryPseudoYields',  'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 0, -100),
('ReligiousVictoryPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, -15),
('ScienceVictoryPseudoYields',   'PSEUDOYIELD_DIPLOMATIC_VICTORY_POINT', 1, -45);

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('CultureVictoryDiscussions'),
('CultureVictoryResolutions'),
('DiplomaticVictoryDiscussions'),
('DiplomaticVictoryResolutions'),
('MilitaryVictoryDiscussions'),
('MilitaryVictoryResolutions'),
('ReligiousVictoryDiscussions'),
('ReligiousVictoryResolutions'),
('ScienceVictoryDiscussions'),
('ScienceVictoryResolutions');

INSERT OR REPLACE INTO AiLists (ListType, System) VALUES
('CultureVictoryDiscussions', 'Discussions'),
('CultureVictoryResolutions', 'Resolutions'),
('DiplomaticVictoryDiscussions',  'Discussions'),
('DiplomaticVictoryResolutions',  'Resolutions'),
('MilitaryVictoryDiscussions', 'Discussions'),
('MilitaryVictoryResolutions', 'Resolutions'),
('ReligiousVictoryDiscussions', 'Discussions'),
('ReligiousVictoryResolutions', 'Resolutions'),
('ScienceVictoryDiscussions', 'Discussions'),
('ScienceVictoryResolutions', 'Resolutions');

INSERT OR REPLACE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryDiscussions'),
('VICTORY_STRATEGY_CULTURAL_VICTORY', 'CultureVictoryResolutions'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryDiscussions'),
('VICTORY_STRATEGY_DIPLOMATIC_VICTORY', 'DiplomaticVictoryResolutions'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryDiscussions'),
('VICTORY_STRATEGY_MILITARY_VICTORY', 'MilitaryVictoryResolutions'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryDiscussions'),
('VICTORY_STRATEGY_RELIGIOUS_VICTORY', 'ReligiousVictoryResolutions'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryDiscussions'),
('VICTORY_STRATEGY_SCIENCE_VICTORY', 'ScienceVictoryResolutions');

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored) VALUES
('CultureVictoryDiscussions',   'WC_EMERGENCY_WORLD_GAMES', 		1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_WORLD_GAMES',			0),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_WORLD_GAMES', 		0),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_SPACE_STATION', 		1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_SPACE_STATION', 		0),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_SPACE_STATION', 		0),
('CultureVictoryDiscussions',   'WC_EMERGENCY_WORLD_FAIR', 			1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_WORLD_FAIR', 			1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_WORLD_FAIR', 			0),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_WORLD_FAIR', 			0),

-- Key Emergencies
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_CITY_STATE', 		1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_RELIGIOUS', 				1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_NUCLEAR', 				1),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_NUCLEAR', 			1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_NUCLEAR', 				1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_NUCLEAR', 				1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_BACKSTAB', 				1),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_BACKSTAB', 			1),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_BACKSTAB',				1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_BACKSTAB',				1),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_REQUEST_AID', 		1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE', 1),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE', 0),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_NOBEL_PRIZE_LITERATURE', 0),
('DiplomaticVictoryDiscussions',     'WC_EMERGENCY_NOBEL_PRIZE_PEACE', 1),
('MilitaryVictoryDiscussions',  'WC_EMERGENCY_NOBEL_PRIZE_PEACE',      0),
('ScienceVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',    1),
('CultureVictoryDiscussions',   'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',    0),
('ReligiousVictoryDiscussions', 'WC_EMERGENCY_NOBEL_PRIZE_PHYSICS',    0);

/*
Civ Wiki:
List of AI behaviors:

For the Mercenary Companies resolution, most AI tends to vote for -50% cost on using Production.
For the Diplomatic Victory resolution, the AI leaders tend to pour most of their Diplomatic Favor Diplomatic Favor into gaining 2 points for themselves. However, when a player is 1 or 2 Diplomatic Victory points away from a Diplomatic Victory, AI leaders will pour most of their Diplomatic Favor Diplomatic Favor into removing 2 points from the winning player instead.
For the Luxury Policy resolution, the AI has a tendency to ban the type of luxury resource the human player owns the most copies of.
For the Urban Development Treaty resolution, the AI has a tendency to vote for City Center buildings or Campus buildings. Other options may still occur.
For the Border Control Treaty resolution, the AI usually will only put 1 vote for themselves. Therefore, human players can often secure an easy win by casting 2 votes in favor of themselves.
The AI will not trade Diplomatic Favor past a certain era.
The AI will mostly join but almost never actually do anything for Aid Requests before a certain era. Therefore, human players can give the aid target a small amount of Gold right before the competition expires to win it.
*/




-- Victory Congress Resolution Preferences


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored) VALUES

('MilitaryVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 0), -- No walls pls
('ScienceVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 0), -- 100% City centre doesn't aid them much
('DiplomaticVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 1), -- Favour from Walls
('CultureVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 1), -- Culture from Walls
('ReligiousVictoryResolutions',  'WC_RES_URBAN_DEVELOPMENT', 0),

('ScienceVictoryResolutions',   'WC_RES_BORDER_CONTROL', 1), -- testing

('DiplomaticVictoryResolutions',     'WC_RES_DiplomaticVictory', 1), -- +2 Victory points ofc
('ReligiousVictoryResolutions', 'WC_RES_WORLD_RELIGION', 1), -- +10
('ScienceVictoryResolutions',   'WC_RES_WORLD_RELIGION', 0), -- -5 combat strength / condemn

('MilitaryVictoryResolutions',  'WC_RES_MERCENARY_COMPANIES', 0), -- OptionB -50% costs
('DiplomaticVictoryResolutions',     'WC_RES_MERCENARY_COMPANIES', 1), -- units double cost
('CultureVictoryResolutions',   'WC_RES_MERCENARY_COMPANIES', 1), -- units double cost

('MilitaryVictoryResolutions',  'WC_RES_MIGRATION_TREATY', 0), -- +5 loyalty -- good for domination

('MilitaryVictoryResolutions',     'WC_RES_ARMS_CONTROL', 1), -- extra fun? -- testing 0
('ReligiousVictoryResolutions', 'WC_RES_ARMS_CONTROL', 0), -- fun
('DiplomaticVictoryResolutions',     'WC_RES_ARMS_CONTROL', 0), -- lose nukes
('CultureVictoryResolutions',   'WC_RES_ARMS_CONTROL', 0), -- lose nukes

('CultureVictoryResolutions',   'WC_RES_HERITAGE_ORG', 1), -- 100% tourism
('ScienceVictoryResolutions',   'WC_RES_HERITAGE_ORG', 0), -- no tourism

('DiplomaticVictoryResolutions',     'WC_RES_POLICY_TREATY', 1), -- favor from policy
('DiplomaticVictoryResolutions',     'WC_RES_PUBLIC_WORKS', 1), -- +100% for the project
('ScienceVictoryResolutions',   'WC_RES_PUBLIC_WORKS', 1),

('CultureVictoryResolutions',  		'WC_RES_PATRONAGE', 1), -- 2x GPP
('ScienceVictoryResolutions',  		'WC_RES_PATRONAGE', 1),
('ReligiousVictoryResolutions', 	'WC_RES_PATRONAGE', 0), -- no GPP
('DiplomaticVictoryResolutions',    'WC_RES_PATRONAGE', 0), -- no GPP

('DiplomaticVictoryResolutions',    'WC_RES_TREATY_ORGANIZATION', 1), -- 2x favor from CS
('MilitaryVictoryResolutions',  'WC_RES_TREATY_ORGANIZATION', 0), -- no favor from CS
('DiplomaticVictoryResolutions',     'WC_RES_GOVERNANCE_DOCTRINE', 1), -- 15 favor from governors

('ReligiousVictoryResolutions', 'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- ban 
('MilitaryVictoryResolutions',  'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- ban 
('CultureVictoryResolutions',  'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- ban 
('DiplomaticVictoryResolutions',  'WC_RES_GLOBAL_ENERGY_TREATY', 0), -- is good for the environment lol
('ScienceVictoryResolutions',   'WC_RES_GLOBAL_ENERGY_TREATY', 1); -- 50% 

