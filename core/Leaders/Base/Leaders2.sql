
/*
-- Leaders 2 -- Special Thanks Infixo

--  AMERICA / Rough Rider Teddy ROOSEVELT 

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RooseveltCivics', PrereqCivic, 1, 0
FROM Governments WHERE GovernmentType = 'GOVERNMENT_CLASSICAL_REPUBLIC';

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('AmericaWonders'),
('RooseveltUnits'),
('RooseveltYields'),
('RooseveltDiploActions'),
('AmericaDistricts'),
('AmericaPseudoYields'),
('RooseveltPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('AmericaWonders',        'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'Buildings'),
('RooseveltUnits',        'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'Units'),
('RooseveltYields', 'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'Yields'),
('RooseveltDiploActions', 'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'DiplomaticActions'),
('AmericaDistricts', 'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'Districts'),
('AmericaPseudoYields', 'TRAIT_CIVILIZATION_BUILDING_FILM_STUDIO', 'PseudoYields'),
('RooseveltPseudoYields', 'TRAIT_LEADER_ROOSEVELT_COROLLARY', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AmericaDistricts', 'DISTRICT_THEATER', 1, 0),
('RooseveltYields', 'YIELD_GOLD', 1, 5), -- Trade Routes
('RooseveltYields', 'YIELD_FAITH', 0, -15), 
('RooseveltYields', 'YIELD_CULTURE', 1, 30), -- pvs 15
('RooseveltDiploActions', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV', 0, 0),
('RooseveltDiploActions', 'DIPLOACTION_GRANT_INFLUENCE_TOKEN', 1, 0),
('RooseveltTechs', 'TECH_POTTERY', 1, 0), 
('RooseveltCivics', 'CIVIC_EXPLORATION', 1, 0),
('RooseveltUnits', 'UNIT_NATURALIST', 1, 85),
('RooseveltUnits', 'UNIT_APOSTLE', 0, -20),
('RooseveltUnits', 'UNIT_MISSIONARY', 0, -50),

('AmericaWonders', 'BUILDING_STONEHENGE', 0, 0), -- low religion
('AmericaWonders', 'BUILDING_FILM_STUDIO', 1, 500),
('AmericaWonders', 'BUILDING_AMPHITHEATER', 1, 0),
('AmericaWonders', 'BUILDING_MUSEUM_ART', 1, 20),
('AmericaWonders', 'BUILDING_MUSEUM_ARTIFACT', 1, 20),
('AmericaPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 45), -- film studio combo + national parks, base 0.83

('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 25),
('RooseveltPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 5), -- +5 Combat Strength on Home Continent
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 0, -90),
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 1, 30),
('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_ARCHAEOLOGIST', 1, 25),
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 30),
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 50), -- Film Studio

('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 10), -- Trade Routes
('RooseveltPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 8), -- Trade Routes
('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 70), -- Double envoys with trade routes
('RooseveltPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 45), -- Double envoys with trade routes
('RooseveltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 16), -- potential DP Victory

('RooseveltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 25), -- think he would really care

('RooseveltPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -35),
--('RooseveltPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 2),
('RooseveltPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, -14),
('RooseveltPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15),
--('RooseveltPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 40), -- already exists in agenda
('RooseveltPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 10), -- film studio combo + national parks, base 0.83
('RooseveltPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, -15); -- get only Naturalists -- pvs -50 but lower as includes rock bands

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_T_ROOSEVELT',				'AGENDA_CULTURED',						35);
		
-- 33% enviromentalist

DELETE FROM AiFavoredItems WHERE ListType = 'RooseveltPseudoYields' AND Item = 'PSEUDOYIELD_ENVIRONMENT'; -- Bull Moose agenda
DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_T_ROOSEVELT' AND TraitType = 'TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE';
DELETE FROM AiFavoredItems WHERE ListType = 'RooseveltCivics' AND Item = 'CIVIC_DIVINE_RIGHT';


-- Todo, chance of getting cultural agenda

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'RooseveltWonders', 'BUILDING_STATUE_LIBERTY', 1, 200
FROM Types WHERE Type = 'BUILDING_STATUE_LIBERTY';

-- CLEOPATRA / EGYPT

INSERT INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_CLEOPATRA', 'TRAIT_LEADER_DEFENSIVE');

-- Likes civilizations with powerful militaries, and will try to ally with them to avoid conflict. Dislikes civilizations with weak militaries.

REPLACE INTO AiListTypes (ListType) VALUES
('CleopatraDiplomacy'),
('CleopatraYields'),
('CleopatraPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('CleopatraDiplomacy', 'TRAIT_LEADER_MEDITERRANEAN', 'DiplomaticActions'),
('CleopatraYields', 'TRAIT_LEADER_MEDITERRANEAN', 'Yields'),
('CleopatraPseudoYields', 'TRAIT_LEADER_MEDITERRANEAN', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('CleopatraYields', 'YIELD_GOLD', 1, 15),
('CleopatraYields', 'YIELD_FOOD', 1, 3),
('CleopatraPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 15), -- more friendly, double alliance points
('CleopatraPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 15), -- conquers undefended cities
('CleopatraPseudoYields', 'PSEUDOYIELD_CITY_DEFENCES', 1, 10),
('CleopatraPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20),
('CleopatraPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 0, -30),

('CleopatraDiplomacy', 'DIPLOACTION_ALLIANCE', 1, 0),
('CleopatraDiplomacy', 'DIPLOACTION_ALLIANCE_MILITARY', 1, 0),
('CleopatraDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE', 1, 0),

('CleopatraPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 8),
('CleopatraPseudoYields', 'PSEUDOYIELD_UNIT_TRADE', 1, 50);

REPLACE INTO AiListTypes (ListType) VALUES
('EgyptUnits'),
('EgyptTechs'),
('EgyptCivics'),
('EgyptDistricts'),
('EgyptYields'),
('EgyptWonders'),
('EgyptPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('EgyptUnits',        'TRAIT_CIVILIZATION_ITERU', 'Units'),
('EgyptTechs',        'TRAIT_CIVILIZATION_ITERU', 'Technologies'),
('EgyptCivics',       'TRAIT_CIVILIZATION_ITERU', 'Civics'),
('EgyptDistricts',    'TRAIT_CIVILIZATION_ITERU', 'Districts'),
('EgyptYields',       'TRAIT_CIVILIZATION_ITERU', 'Yields'),
('EgyptWonders',       'TRAIT_CIVILIZATION_ITERU', 'Buildings'),
('EgyptPseudoYields', 'TRAIT_CIVILIZATION_ITERU', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('EgyptUnits', 'UNIT_EGYPTIAN_CHARIOT_ARCHER', 1, 30),
('EgyptUnits', 'UNIT_HEAVY_CHARIOT', 0, -70),
('EgyptTechs', 			'TECH_WRITING', 1, 0), -- Eta
('EgyptTechs', 			'TECH_BUTTRESS', 0, 0),
('EgyptTechs', 			'TECH_FLIGHT', 1, 0),

('EgyptCivics', 'CIVIC_CRAFTSMANSHIP', 1, 0),
('EgyptYields', 'YIELD_PRODUCTION', 1, 9),
('EgyptYields', 'YIELD_CULTURE', 1, 10),
('EgyptYields', 'YIELD_SCIENCE', 1, -10),
('EgyptWonders', 	'BUILDING_GREAT_BATH', 0, -100),

('EgyptPseudoYields', 'PSEUDOYIELD_DISTRICT', 	1, 8), -- 15% production by rivers
('EgyptPseudoYields', 'PSEUDOYIELD_WONDER', 1, 85), -- base 0.49 from 2 -- More with Ramses, pvs 110
('EgyptPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 35),
('EgyptPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 10); -- sphinx

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
--		('LEADER_CLEOPATRA',				'AGENDA_GOSSIP',						15);


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'EgyptWonders', 'BUILDING_ETEMENANKI', 1, 500 -- fpls
FROM Types WHERE Type = 'BUILDING_ETEMENANKI';


REPLACE INTO AiFavoredItems (ListType, Item, Favored)
SELECT 'EgyptDistricts', 'DISTRICT_DAM', 0
WHERE EXISTS (SELECT 1 FROM Districts WHERE DistrictType = 'DISTRICT_DAM');

-- GILGAMESH / SUMERIA

REPLACE INTO AiListTypes (ListType) VALUES
('GilgameshTechs'),
('GilgameshCivics'),
('GilgameshWonders'),
('GilgameshUnits'),
('GilgameshDistricts'),
('GilgameshYields'),
('GilgameshPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GilgameshTechs',        'TRAIT_LEADER_ADVENTURES_ENKIDU', 'Technologies'),
('GilgameshCivics',       'TRAIT_LEADER_ADVENTURES_ENKIDU', 'Civics'),
('GilgameshWonders',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 'Buildings'),
('GilgameshUnits',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 	'Units'),
('GilgameshDistricts',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 	'Districts'),
('GilgameshYields',      'TRAIT_LEADER_ADVENTURES_ENKIDU', 	'Yields'),
('GilgameshPseudoYields', 'TRAIT_LEADER_ADVENTURES_ENKIDU', 'PseudoYields');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GilgameshDiplomacy', 'DIPLOACTION_ALLIANCE' , 1, 0),
('GilgameshDiplomacy', 'DIPLOACTION_JOINT_WAR' , 1, 0),
('GilgameshDiplomacy', 'DIPLOACTION_RENEW_ALLIANCE' , 1, 0),
('GilgameshDiplomacy', 'DIPLOACTION_OPEN_BORDERS', 1, 0), -- might already exist
('GilgameshDiplomacy', 'DIPLOACTION_RESIDENT_EMBASSY', 1, 0), -- gila

('GilgameshDistricts', 'DISTRICT_DAM', 1, 0), -- ziggarat protection

('GilgameshYields', 'YIELD_FOOD', 1, 40), -- Discourage Ziggarats Slightly

--('GilgameshDiplomacy', 'DIPLOACTION_DECLARE_WAR_MINOR_CIV' , 0, 0), -- already exists
('GilgameshTechs', 'TECH_STIRRUPS' , 1, 0), 
('GilgameshTechs', 'TECH_WRITING' , 1, 0), 
('GilgameshTechs', 'TECH_EDUCATION' , 1, 0), 
('GilgameshCivics', 'CIVIC_FOREIGN_TRADE' , 1, 0), -- joint war
('GilgameshCivics', 'CIVIC_CIVIL_SERVICE' , 1, 0), -- alliance

('GilgameshWonders', 'BUILDING_GOV_CITYSTATES', 1, 0),
('GilgameshWonders', 'BUILDING_GREAT_BATH', 1, 0), -- ziggarat protection

('GilgameshWonders', 'BUILDING_TEMPLE_ARTEMIS', 1, 90),
('GilgameshWonders', 'BUILDING_HANGING_GARDENS', 1, 90),
('GilgameshWonders', 'BUILDING_GRANARY', 		1, 90),
('GilgameshWonders', 'BUILDING_WATER_MILL', 	1, 90),

('GilgameshPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL' , 1, 15),
('GilgameshPseudoYields', 'PSEUDOYIELD_WONDER' , 1, 30),
('GilgameshPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER' , 1, 5),
('GilgameshPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT' , 1, 25), -- War carts, pvs 20 
('GilgameshPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST' , 1, 22),
('GilgameshPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS' , 1, 110), -- gold camp bonus
('GilgameshPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS' , 1, 14), -- pvs 5, 10, 11, 18, 10

('GilgameshPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE', 1, 10),
('GilgameshPseudoYields', 'PSEUDOYIELD_IMPROVEMENT' , 1, -10), 
('GilgameshPseudoYields', 'PSEUDOYIELD_INFLUENCE' , 1, 22); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GilgameshUnits', 'UNIT_SUMERIAN_WAR_CART' , 1, 15); -- Boost to the best unit in the game

-- CLASS_WAR_CART

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'GilgameshWonders', 'BUILDING_KILWA_KISIWANI', 1, 30
FROM Types WHERE Type = 'BUILDING_KILWA_KISIWANI';

--DELETE FROM AiFavoredItems WHERE Item='DIPLOACTION_DECLARE_FRIENDSHIP' AND Favored=1 AND ListType='GilgameshDiplomacy'; -- Bugged but Gilgabro

/*
	<AiListTypes>
		<Row ListType="GreeceCivics"/>
		<Row ListType="GreeceYields"/>
	</AiListTypes>
	<AiLists>
		<Row ListType="GreeceCivics" LeaderType="TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS" System="Civics"/>
		<Row ListType="GreeceYields" LeaderType="TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS" System="Yields"/>
	</AiLists>
	<AiFavoredItems>
		<Row ListType="GreeceCivics" Item="CIVIC_DRAMA_POETRY" Favored="true"/> -- The only civic definined
		<Row ListType="GreeceYields" Item="YIELD_CULTURE" Value="20"/>
	</AiFavoredItems>
	
		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_SURROUNDED_BY_GLORY"/>
		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_CULTURAL_MAJOR_CIV"/>
		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		<Row LeaderType="LEADER_GORGO" TraitType="CULTURE_KILLS_TRAIT"/>
		<Row LeaderType="LEADER_GORGO" TraitType="TRAIT_LEADER_CULTURAL_MAJOR_CIV"/>
		<Row LeaderType="LEADER_GORGO" TraitType="TRAIT_LEADER_LOW_RELIGIOUS_PREFERENCE"/>
		
		<Row ListType="PericlesWonders" Item="BUILDING_POTALA_PALACE" Favored="true"/>
		<Row ListType="PericlesEnvoys" Item="PSEUDOYIELD_INFLUENCE" Value="30"/>
		<Row ListType="PericlesCivics" Item="CIVIC_MILITARY_TRAINING" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_POLITICAL_PHILOSOPHY" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_NAVAL_TRADITIION" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_MEDIEVAL_FAIRES" Favored="true"/>
		<Row ListType="PericlesCivics" Item="CIVIC_MERCENARIES" Favored="true"/>
		<Row ListType="PericlesTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
		
		<Row ListType="GorgoWonders" Item="BUILDING_TERRACOTTA_ARMY" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_MILITARY_TRAINING" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_DIPLOMATIC_SERVICE" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_NATIONALISM" Favored="true"/>
		<Row ListType="GorgoCivics" Item="CIVIC_MOBILIZATION" Favored="true"/>
		<Row ListType="GorgoTechs" Item="TECH_BRONZE_WORKING" Favored="true"/>
	
*/

-- GORGO + PERICLES / GREECE - Wonders

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_GORGO', 'TRAIT_LEADER_AGGRESSIVE_MILITARY'); 

UPDATE AiFavoredItems SET Item = 'BUILDING_POTALA_PALACE' WHERE ListType = 'PericlesWonders' AND Item = 'PSEUDOYIELD_INFLUENCE';
UPDATE AiFavoredItems SET Item = 'PSEUDOYIELD_INFLUENCE'  WHERE ListType = 'PericlesEnvoys'  AND Item = 'BUILDING_POTALA_PALACE';

-- 		<Row LeaderType="LEADER_PERICLES" TraitType="TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY"/>

DELETE FROM LeaderTraits WHERE LeaderType = 'LEADER_PERICLES' AND TraitType = 'TRAIT_LEADER_PURSUE_DIPLOMATIC_VICTORY';


INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('GreeceDistricts'),
('PericlesYields'),
('GorgoPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('GreeceDistricts', 'TRAIT_CIVILIZATION_DISTRICT_ACROPOLIS', 'Districts'),
('PericlesYields', 'TRAIT_LEADER_SURROUNDED_BY_GLORY', 'Yields'),
('GorgoPseudoYields', 'TRAIT_AGENDA_WITH_SHIELD', 'PseudoYields');

--INSERT INTO AgendaPreferredLeaders  (LeaderType,	AgendaType,		PercentageChance) VALUES
--			('LEADER_GORGO',				'AGENDA_DARWINIST',					15),	
--			('LEADER_PERICLES',				'AGENDA_GREAT_PERSON_ADVOCATE',		20);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('GreeceDistricts', 'DISTRICT_ACROPOLIS', 	1, 		20),

('GorgoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 	1, 		6),
('GorgoPseudoYields', 'PSEUDOYIELD_INFLUENCE', 		1, 		12),

('GorgoCivics', 'CIVIC_POLITICAL_PHILOSOPHY', 	1,	        0), -- basics Governments
('GorgoCivics', 'CIVIC_DIVINE_RIGHT', 			1, 			0), -- Monarchy 
('GorgoCivics', 'CIVIC_TOTALITARIANISM', 		1, 			0), -- Fascism (4 Military)
('GorgoCivics', 'CIVIC_CLASS_STRUGGLE', 		1, 			0), -- Communism (3 Military)
('GorgoCivics', 'CIVIC_SUFFRAGE', 				0, 	    	0), -- Democracy (1 Military -- Very bad)
('GorgoCivics', 'CIVIC_IDEOLOGY', 				1, 			0), -- For tier 3 Governments

--('GorgoCivics', 'CIVIC_DIGITAL_DEMOCRACY', 		0, 			0), -- low military slots 
--('GorgoCivics', 'CIVIC_SYNTHETIC_TECHNOCRACY', 	0, 			0), -- low military slots
('GorgoCivics', 'CIVIC_ENVIRONMENTALISM' , 		1, 			0), -- Potential Cultural Victory (Tourism Boost)

('GorgoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE' , 1, 				-40), -- Part of her agenda that she doesn't care that much
('GorgoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS' , 1, 					3), -- (already has negative in new trait)
('GorgoPseudoYields', 'PSEUDOYIELD_CITY_BASE' , 1, 							20), -- to balance for cultural civ trait
('GorgoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT' , 1, 						12), -- to balance for cultural civ trait
('GorgoPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS' , 1, 				-4), -- to balance for cultural civ trait

('PericlesYields', 'YIELD_CULTURE', 					1, 			8), -- base 20
('PericlesYields', 'YIELD_GOLD', 						1, 			5),

('PericlesEnvoys', 'PSEUDOYIELD_GPP_ARTIST', 		1, 					10),
('PericlesEnvoys', 'PSEUDOYIELD_GPP_WRITER', 		1, 					15),
('PericlesEnvoys', 'PSEUDOYIELD_GPP_MUSICIAN', 		1, 					10),
('PericlesEnvoys', 'PSEUDOYIELD_GPP_GENERAL', 		1, 					-10),
('PericlesEnvoys', 'PSEUDOYIELD_WONDER', 			1, 					25),

('PericlesEnvoys', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 		1, 				10), -- pvs 14
('PericlesEnvoys', 'PSEUDOYIELD_DIPLOMATIC_GRIEVANCE',  1, 				25),
('PericlesEnvoys', 'PSEUDOYIELD_CITY_BASE', 				1, 	    	   	-40),
('PericlesEnvoys', 'PSEUDOYIELD_SPACE_RACE', 				0, 	    	   	-25),
('PericlesEnvoys', 'PSEUDOYIELD_CITY_DEFENCES', 			1, 	    	10),
('PericlesEnvoys', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 			1, 	 	10),
('PericlesEnvoys', 'PSEUDOYIELD_UNIT_SPY', 					1, 	 	15),

('PericlesEnvoys', 'PSEUDOYIELD_GOVERNOR', 		1, 				25), -- For city states, gov plaza building etc

('PericlesTechs', 'TECH_MACHINERY', 				1, 	    	0), -- BUILDING_KILWA_KISIWANI
('PericlesTechs', 'TECH_ENGINEERING', 				1, 	    	0), -- for Kilwa 
('PericlesTechs', 'TECH_IRON_WORKING', 				1, 	    	0), -- for Kilwa 
('PericlesTechs', 'TECH_SANITATION', 				1, 	    	0), -- BUILDING_ORSZAGHAZ

('PericlesWonders', 'BUILDING_CHANCERY', 1, 			90), -- Influence!
('PericlesWonders', 'BUILDING_CONSULATE', 1, 			90),
('PericlesWonders', 'BUILDING_KILWA_KISIWANI', 1,		 700),

('PericlesWonders', 'BUILDING_GOV_TALL', 1, 			50),
('PericlesWonders', 'BUILDING_GOV_CITYSTATES', 1, 		900),
('PericlesWonders', 'BUILDING_GOV_SPIES',	 0, 		-20),
('PericlesWonders', 'BUILDING_ORSZAGHAZ',     1, 		80),

('GorgoWonders', 'BUILDING_ALHAMBRA', 1, 70);

UPDATE AiFavoredItems SET Value = 150 WHERE ListType = 'PericlesEnvoys' AND Item = 'PSEUDOYIELD_INFLUENCE'; -- def 30


-- HOJO / JAPAN
	
	
/*
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_CULTURED"/>
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_STANDING_ARMY"/>
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_DEVOUT"/>
		<Row AgendaOne="AGENDA_BUSHIDO" AgendaTwo="AGENDA_PARANOID"/>
		
		INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
	('LEADER_HOJO',				'AGENDA_CULTURED',						15),
	('LEADER_HOJO',				'AGENDA_DEVOUT',						10);
*/
	

REPLACE INTO AiListTypes (ListType) VALUES
('HoJoSettlement'),
('HoJoYields'),
('HoJoDistricts'),
('HoJoPseudoYields');

REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('HoJoSettlement', 'TRAIT_LEADER_DIVINE_WIND', 'PlotEvaluations'),
('HoJoDistricts', 'TRAIT_LEADER_DIVINE_WIND', 'Districts'), -- HOJO ONLY BONUS
('HoJoYields', 'TRAIT_LEADER_DIVINE_WIND', 'Yields'),
('HoJoPseudoYields', 'TRAIT_LEADER_DIVINE_WIND', 'PseudoYields');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HoJoDistricts', 'DISTRICT_THEATER', 				1, 0), -- half price
('HoJoDistricts', 'DISTRICT_HOLY_SITE', 			1, 0), -- half price
('HoJoTechs', 'TECH_APPRENTICESHIP', 				1, 0), 
('HoJoTechs', 'TECH_INDUSTRIALIZATION', 			1, 0), 
('HoJoYields', 'YIELD_FOOD',       					1, 9), -- More districts
('HoJoYields', 'YIELD_FAITH',      					1, 10), -- Base -20, pvs 9
('HoJoYields', 'YIELD_CULTURE',    					1, 10),
('HoJoYields', 'YIELD_PRODUCTION', 					1, 12), -- Electronics Factory
('HoJoYields', 'YIELD_GOLD',       					1,-12), -- Base 11
--('HoJoYields', 'YIELD_SCIENCE',    				1, 2), -- pvs 5
('HoJoPseudoYields', 'PSEUDOYIELD_DISTRICT', 		1, 20), -- Double adj / half production on some
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 	1, 10),
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_WRITER', 		1, 10), -- Half production towards Theater Squares
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 	1, 18), -- Half production
('HoJoPseudoYields', 'PSEUDOYIELD_GPP_PROPHET', 	1, 20), -- Half production
('HoJoPseudoYields', 'PSEUDOYIELD_TOURISM', 		1, 19), -- base 0.82
('HoJoPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 8),
('HoJoPseudoYields', 'PSEUDOYIELD_NAVAL_COMBAT', 	1, 15), -- +5 st
('HoJoPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 	1, 10);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HoJoSettlement', 'Foreign Continent', 0, -8),
('HoJoSettlement', 'Nearest Friendly City', 0, -3), -- pvs -2
('HoJoSettlement', 'Coastal', 0, 19);

-- CHINA Base

INSERT OR REPLACE INTO AiListTypes (ListType) VALUES
('ChinaImprovements'),
('ChinaTechs'),
('ChinaCivics'),
('ChinaWonders'),
('ChinaPseudoYields');

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('ChinaImprovements', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Improvements'),
('ChinaTechs', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Technologies'),
('ChinaCivics', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Civics'),
('ChinaWonders', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'Buildings'),
('ChinaPseudoYields', 'TRAIT_CIVILIZATION_DYNASTIC_CYCLE', 'PseudoYields');

INSERT INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ChinaTechs', 					'TECH_MINING', 1, 90),
('ChinaCivics', 	'CIVIC_RECORDED_HISTORY',   1, 0), --GL
('ChinaCivics', 	'CIVIC_DRAMA_POETRY',   	1, 0), --GL
('ChinaTechs', 		'TECH_MASONARY', 			1, 0),
('ChinaImprovements', 'IMPROVEMENT_GREAT_WALL', 1, 90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ChinaWonders', 'BUILDING_MONUMENT', 		1, 90), --GL
('ChinaWonders', 'BUILDING_GREAT_LIBRARY', 1, 90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ChinaPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 14),
('ChinaPseudoYields', 'PSEUDOYIELD_WONDER',      1, 200), -- Completing a Wonder grants a Eureka and Inspiration from that Wonder's era.
('ChinaPseudoYields', 'PSEUDOYIELD_TOURISM',     1, 12);

-- todo great LIBRARY if it does not already exist

-- Normal Qin -- has CULTURAL_MAJOR_CIV

INSERT OR REPLACE INTO LeaderTraits(LeaderType, TraitType) VALUES ('LEADER_QIN', 'TRAIT_LEADER_EXPANSIONIST');

--INSERT OR REPLACE INTO AgendaPreferredLeaders	(LeaderType,	AgendaType,		PercentageChance) VALUES	
---	('LEADER_QIN',				'AGENDA_WONDER_ADVOCATE',				15),
--	('LEADER_QIN',				'AGENDA_IDEOLOGUE',						25); -- Late Eras only



-- Qin has trait wonder obsessed

REPLACE INTO AiListTypes (ListType) VALUES
('QinPseudoYields');
REPLACE INTO AiLists (ListType, LeaderType, System) VALUES
('QinPseudoYields', 'FIRST_EMPEROR_TRAIT', 'PseudoYields');
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('QinPseudoYields', 'PSEUDOYIELD_WONDER', 1, 30), -- pvs 45 (now more for base China trait)
('QinPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 15), -- builder charges
('QinPseudoYields', 'PSEUDOYIELD_TOURISM', 1, 10);

-- Unlocks Canals Early -- todo Canals preference
*/