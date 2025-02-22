/* RHAI inspiration

--------------------------------------------------------------------------------------------------------------------------
-- RH Era Strategy Improvements!
--------------------------------------------------------------------------------------------------------------------------

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('ClassicalPseudoYields'),
('ClassicalOperations'),
('ClassicalSettlement'),
('ClassicalSavings'),
('ClassicalTechs'),

('MedievalPseudoYields'),
('RenaissancePseudoYields'),
('IndustrialPseudoYields');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('ClassicalPseudoYields',   	'PseudoYields'),
('ClassicalOperations', 		'AiOperationTypes'),
('ClassicalSettlement', 		'PlotEvaluations'),
('ClassicalSavings', 			'SavingTypes'),
('ClassicalTechs', 			'Technologies'),

('MedievalPseudoYields',    	'PseudoYields'),
('RenaissancePseudoYields', 	'PseudoYields'),
('IndustrialPseudoYields',  	'PseudoYields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalPseudoYields'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalOperations'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalSettlement'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalSavings'),
('STRATEGY_CLASSICAL_CHANGES',   'ClassicalTechs'),
('STRATEGY_MEDIEVAL_CHANGES',    'MedievalPseudoYields'),
('STRATEGY_RENAISSANCE_CHANGES', 'RenaissancePseudoYields'),
('STRATEGY_INDUSTRIAL_CHANGES',  'IndustrialPseudoYields');

INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES 
('STRATEGY_MEDIEVAL_CHANGES', 'MedievalSettlements');

INSERT OR IGNORE INTO Types (Type, Kind) VALUES
('STRATEGY_ANCIENT_CHANGES',     								'KIND_VICTORY_STRATEGY'), 
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',     				'KIND_VICTORY_STRATEGY'),
('STRATEGY_MEDIEVAL_CHANGES_WONDER_OBSESSED',     				'KIND_VICTORY_STRATEGY'),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',     				    'KIND_VICTORY_STRATEGY'),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',     				'KIND_VICTORY_STRATEGY'),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',     				'KIND_VICTORY_STRATEGY'),
('STRATEGY_MODERN_CHANGES_SCIENCE',     						 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_ATOMIC_CHANGES_SCIENCE',     						 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_INFO_CHANGES_SCIENCE',     							 'KIND_VICTORY_STRATEGY'), 
('STRATEGY_ATOMIC_CHANGES',      								'KIND_VICTORY_STRATEGY'), 
('STRATEGY_INFORMATION_CHANGES', 								'KIND_VICTORY_STRATEGY'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 								'KIND_VICTORY_STRATEGY');

INSERT OR IGNORE INTO Strategies (StrategyType, VictoryType, NumConditionsNeeded) VALUES
('STRATEGY_ANCIENT_CHANGES',    						NULL, 1),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		NULL, 2),
('STRATEGY_MEDIEVAL_CHANGES_WONDER_OBSESSED',    		NULL, 2),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',    				NULL, 3),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',    			NULL, 3),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',    				NULL, 3),
('STRATEGY_MODERN_CHANGES_SCIENCE',    					NULL, 2),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',     				NULL, 2),
('STRATEGY_INFO_CHANGES_SCIENCE',       				NULL, 2),
('STRATEGY_ATOMIC_CHANGES',      						NULL, 1),
('STRATEGY_INFORMATION_CHANGES', 						NULL, 1),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 						NULL, 2);

-- not for city states
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier) VALUES
('STRATEGY_ANCIENT_CHANGES',    		 				 'Is Not Major', 1),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		 'Is Not Major', 1),
('STRATEGY_MEDIEVAL_CHANGES_WONDER_OBSESSED',    		 'Is Not Major', 1),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',     			'Is Not Major', 1),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',     			'Is Not Major', 1),
('STRATEGY_MODERN_CHANGES_SCIENCE',     				 'Is Not Major', 1),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      			     'Is Not Major', 1),
('STRATEGY_INFO_CHANGES_SCIENCE',      					 'Is Not Major', 1),
('STRATEGY_ATOMIC_CHANGES',      						 'Is Not Major', 1),
('STRATEGY_INFORMATION_CHANGES', 						 'Is Not Major', 1),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 						'Is Not Major', 1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Disqualifier) VALUES
('STRATEGY_HIGH_DIFF_SETTLEMENT',               'Handicap at or below',			 6,             1);

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, ThresholdValue, Forbidden) VALUES
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      'Has Great Works', 10, 1),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',   'Has Great Works', 12, 1),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',    'Has Great Works', 15, 1),
('STRATEGY_MODERN_CHANGES_SCIENCE',      'Has Great Works', 21, 1),
('STRATEGY_MODERN_CHANGES_SCIENCE',      'Good Culture', 12, 1),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      'Has Great Works', 22, 1),
('STRATEGY_INFO_CHANGES_SCIENCE',      'Has Great Works', 24, 1);

-- double make sure to deactivate on next era
INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, Disqualifier, ThresholdValue) VALUES
('STRATEGY_ANCIENT_CHANGES',     				'Is Classical', 1, 1),
('STRATEGY_CLASSICAL_CHANGES',     				'Is Medieval', 1, 1),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',  'Is Medieval', 1, 1),
('STRATEGY_MEDIEVAL_CHANGES',     				'Is Renaissance', 1, 1),
('STRATEGY_RENAISSANCE_CHANGES',    			'Is Industrial', 1, 1),
('STRATEGY_INDUSTRIAL_CHANGES',     			'Is Modern', 1, 1),
('STRATEGY_MODERN_CHANGES',     				'Is Atomic', 1, 1),
('STRATEGY_ATOMIC_CHANGES',    					'Is Information', 1, 1);
-- Info doesn't need to deactive 

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue, ThresholdValue) VALUES
('STRATEGY_ANCIENT_CHANGES',    						 'Is Ancient',     		NULL, 0), 

('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      				'Is Medieval', 			NULL, 0),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',      				'Is Renaissance', 			NULL, 0),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_RENAISSANCE_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',      				'Is Industrial', 			NULL, 0),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',      				'Cities Under Threat',		 NULL, 1),

('STRATEGY_MODERN_CHANGES_SCIENCE',      				'Is Modern', 			NULL, 0),
('STRATEGY_MODERN_CHANGES_SCIENCE',      				'Has Tech Lead',		 NULL, 35),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Is Atomic', 			NULL, 0),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Has Tech Lead', 		NULL, 35),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Is Atomic', 			NULL, 0),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',      				'Has Tech Lead', 		NULL, 35),
('STRATEGY_INFO_CHANGES_SCIENCE',      					'Is Information', 		NULL, 0),
('STRATEGY_INFO_CHANGES_SCIENCE',      					'Has Tech Lead', 		NULL, 35),
('STRATEGY_ATOMIC_CHANGES',     						 'Is Atomic',      		NULL, 0), 
('STRATEGY_INFORMATION_CHANGES', 						'Is Information', 		NULL, 1), -- testing 1 to remain on

('STRATEGY_HIGH_DIFF_SETTLEMENT',      				  'Cities Under Threat',		 NULL, 1),
('STRATEGY_HIGH_DIFF_SETTLEMENT',     					'Has Settle Spot',      NULL, 0); -- Needs checking

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		'Is Classical',     		'AGENDA_WONDER_OBSESSED'), 
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',    		'Has Agenda',     		'AGENDA_WONDER_OBSESSED');

INSERT OR IGNORE INTO StrategyConditions (StrategyType, ConditionFunction, StringValue) VALUES
('STRATEGY_MEDIEVAL_CHANGES_WONDER_OBSESSED',    		'Is Medieval',     		'AGENDA_WONDER_OBSESSED'), 
('STRATEGY_MEDIEVAL_CHANGES_WONDER_OBSESSED',    		'Has Agenda',     		'AGENDA_WONDER_OBSESSED');





INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AncientYields'),
('AncientPseudoYields'),
('AncientOperations'),
('AncientPerWarOperations'),
('AncientSavings'),
('AncientSettlement'),
('AncientUnitBuilds'),
('AncientTechs'),

('Wonder_Obsessed_Classical_Yields'),
('Wonder_Obsessed_Classical_PseudoYields'),
('Wonder_Obsessed_Classical_Districts'),

('Wonder_Obsessed_Medieval_Yields'),
('Wonder_Obsessed_Medieval_PseudoYields'),
('Wonder_Obsessed_Medieval_Districts'),
('Wonder_Obsessed_Medieval_Projects'),

('MedievalSettlement'),
('MedievalBuildings'),

('Medieval_Science_PseudoYields'),
('Medieval_Science_Projects'),

('RenaissanceSettlement'),
('Renaissance_Science_PseudoYields'),
('RenaissanceBuildings'),
('RenaissanceSavings'),

('IndustrialSettlement'),
('Industrial_Science_PseudoYields'),
('Industrial_Science_Districts'),

('ModernImprovements'),
('ModernSettlement'),
('ModernBuildings'),
('ModernPseudoYields'),
('ModernDistricts'),

('Modern_Science_Yields'),
('Modern_Science_PseudoYields'),
('Modern_Science_Districts'),
('Modern_Science_Savings'),

('Atomic_Science_Yields'),
('Atomic_Science_PseudoYields'),
('Atomic_Science_Districts'),
('Atomic_Science_Savings'),
('Atomic_Science_Diplo'),
('Atomic_Science_Techs'),

('Info_Science_Yields'),
('Info_Science_PseudoYields'),
('Info_Science_Districts'),
('Info_Science_Savings'),
('Info_Science_Diplo'),
('Info_Science_Techs'),

('AtomicImprovements'),
('AtomicSettlement'),
('AtomicBuildings'),  
('AtomicYields'),
('AtomicPseudoYields'),

('InformationImprovements'),
('InformationSettlement'),
('InformationYields'),
('InformationDistricts'),
('InformationOps'),
('InformationPseudoYields'),

('HIGH_DIFF_S_Scout_Uses'),
('HIGH_DIFF_S_Settlement'),
('HIGH_DIFF_S_Unit_Builds'),
('HIGH_DIFF_S_PseudoYields'),
('HIGH_DIFF_S_Units');

INSERT OR IGNORE INTO AiLists (ListType, System) VALUES
('AncientYields',      			 'Yields'),
('AncientPseudoYields', 		'PseudoYields'),
('AncientOperations', 		'AiOperationTypes'),
('AncientSavings', 			'SavingTypes'),
('AncientPerWarOperations', 		'PerWarOperationTypes'),
('AncientSettlement', 		'PlotEvaluations'),
('AncientUnitBuilds', 		'UnitPromotionClasses'),
('AncientTechs', 		'Technologies'),

('Wonder_Obsessed_Classical_Yields',       'Yields'),
('Wonder_Obsessed_Classical_PseudoYields', 'PseudoYields'),
('Wonder_Obsessed_Classical_Districts', 	'Districts'),

('Wonder_Obsessed_Medieval_Yields',       'Yields'),
('Wonder_Obsessed_Medieval_PseudoYields', 'PseudoYields'),
('Wonder_Obsessed_Medieval_Districts', 	'Districts'),
('Wonder_Obsessed_Medieval_Projects', 	'Projects'),

('MedievalSettlement', 			'PlotEvaluations'),
('MedievalBuildings',       			'Buildings'),

('Medieval_Science_PseudoYields', 			'PseudoYields'),
('Medieval_Science_Projects', 			'Projects'),

('RenaissanceSettlement', 			'PlotEvaluations'),
('Renaissance_Science_PseudoYields', 			'PseudoYields'),
('RenaissanceBuildings',       			'Buildings'),
('RenaissanceSavings',       			'SavingTypes'),


('IndustrialSettlement', 			'PlotEvaluations'),
('Industrial_Science_PseudoYields', 	'PseudoYields'),
('Industrial_Science_Districts', 	'Districts'),

('ModernImprovements', 			'Improvements'),
('ModernSettlement', 			'PlotEvaluations'),
('ModernBuildings',       			'Buildings'),
('ModernPseudoYields', 			'PseudoYields'),
('ModernDistricts', 			'Districts'),

('Modern_Science_Yields',       'Yields'),
('Modern_Science_PseudoYields', 'PseudoYields'),
('Modern_Science_Districts', 	'Districts'),
('Modern_Science_Savings', 		'SavingTypes'),

('Atomic_Science_Yields',       'Yields'),
('Atomic_Science_PseudoYields', 'PseudoYields'),
('Atomic_Science_Districts', 	'Districts'),
('Atomic_Science_Savings', 		'SavingTypes'),
('Atomic_Science_Diplo', 		'DiplomaticActions'),
('Atomic_Science_Techs', 		'Technologies'),

('Info_Science_Yields',       'Yields'),
('Info_Science_PseudoYields', 'PseudoYields'),
('Info_Science_Districts', 	'Districts'),
('Info_Science_Savings',       'SavingTypes'),
('Info_Science_Diplo',       'DiplomaticActions'),
('Info_Science_Techs',       'Technologies'),

('AtomicImprovements',       		'Improvements'),
('AtomicSettlement',       			'PlotEvaluations'),
('AtomicBuildings',       			'Buildings'),
('AtomicYields',       			'Yields'),
('AtomicPseudoYields', 			'PseudoYields'),

('InformationImprovements',      		 'Improvements'),
('InformationSettlement',      		 'PlotEvaluations'),
('InformationOps',      		 'AiOperationTypes'),
('InformationDistricts',      		 'Districts'),
('InformationYields',      		 'Yields'),
('InformationPseudoYields', 	'PseudoYields'),

('HIGH_DIFF_S_Scout_Uses',      		 'AIScoutUses'),
('HIGH_DIFF_S_Settlement',      		 'PlotEvaluations'),
('HIGH_DIFF_S_Unit_Builds',      		 'UnitBuilds'),
('HIGH_DIFF_S_PseudoYields',      		 'PseudoYields'),
('HIGH_DIFF_S_Units', 	                  'Units');


INSERT OR IGNORE INTO Strategy_Priorities (StrategyType, ListType) VALUES
('STRATEGY_ANCIENT_CHANGES', 			'AncientYields'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientPseudoYields'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientOperations'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientPerWarOperations'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientSavings'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientSettlement'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientUnitBuilds'),
('STRATEGY_ANCIENT_CHANGES', 			'AncientTechs'),

('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Classical_Yields'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Classical_PseudoYields'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Classical_Districts'),

('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Medieval_Yields'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Medieval_PseudoYields'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Medieval_Districts'),
('STRATEGY_CLASSICAL_CHANGES_WONDER_OBSESSED',		'Wonder_Obsessed_Medieval_Projects'),

('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalSettlement'),
('STRATEGY_MEDIEVAL_CHANGES', 			'MedievalBuildings'),

('STRATEGY_MEDIEVAL_CHANGES_SCIENCE', 			'Medieval_Science_PseudoYields'),
('STRATEGY_MEDIEVAL_CHANGES_SCIENCE', 			'Medieval_Science_Projects'),

('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceSettlement'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceBuildings'),
('STRATEGY_RENAISSANCE_CHANGES', 			'RenaissanceSavings'),

('STRATEGY_RENAISSANCE_CHANGES_SCIENCE', 			'Renaissance_Science_PseudoYields'),

('STRATEGY_INDUSTRIAL_CHANGES', 			'IndustrialSettlement'),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',		'Industrial_Science_PseudoYields'),
('STRATEGY_INDUSTRIAL_CHANGES_SCIENCE',		'Industrial_Science_Districts'),

('STRATEGY_MODERN_CHANGES', 			'ModernImprovements'),
('STRATEGY_MODERN_CHANGES', 			'ModernSettlement'),
('STRATEGY_MODERN_CHANGES', 			'ModernBuildings'),
('STRATEGY_MODERN_CHANGES', 			'ModernPseudoYields'),
('STRATEGY_MODERN_CHANGES', 			'ModernDistricts'),

('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Yields'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_PseudoYields'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Districts'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Savings'),

('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Yields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_PseudoYields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE',		'Atomic_Science_Districts'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Savings'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Diplo'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Techs'),

('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Yields'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_PseudoYields'),
('STRATEGY_INFO_CHANGES_SCIENCE',		'Info_Science_Districts'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Savings'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Diplo'),
('STRATEGY_INFO_CHANGES_SCIENCE', 		'Info_Science_Techs'),

('STRATEGY_ATOMIC_CHANGES',				'AtomicImprovements'),
('STRATEGY_ATOMIC_CHANGES',				'AtomicSettlement'),
('STRATEGY_ATOMIC_CHANGES', 			'AtomicBuildings'),
('STRATEGY_ATOMIC_CHANGES',				'AtomicYields'),
('STRATEGY_ATOMIC_CHANGES', 			'AtomicPseudoYields'),

('STRATEGY_INFORMATION_CHANGES', 		'InformationImprovements'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationSettlement'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationDistricts'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationOps'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationYields'),
('STRATEGY_INFORMATION_CHANGES', 		'InformationPseudoYields'),

('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Scout_Uses'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Settlement'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Unit_Builds'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Units'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_PseudoYields');





INSERT OR IGNORE INTO AiOperationTypes (OperationType, Value) -- New op definition
SELECT 'NAVAL_SUP_MELEE', MAX(Value)+1
FROM AiOperationTypes;

------------------------------------------------------------------------------
-- Time Strategies


--  Firaxis: Yield Sensitivity tries to catch up to the leader in a given yield. Adding this to existing strategies from the base game

/*
Defaults:
  <AiFavoredItems>
    <Row ListType="AvoidDarkAges" Item="PSEUDOYIELD_GOLDENAGE_POINT" Value="500"/>
    <Row ListType="ClassicalSensitivity" Item="YIELD_SCIENCE" Value="10"/>
    <Row ListType="MedievalSensitivity" Item="YIELD_CULTURE" Value="10"/>
    <Row ListType="ModernSensitivity" Item="YIELD_SCIENCE" Value="10"/>
    <Row ListType="ModernSensitivity" Item="YIELD_CULTURE" Value="10"/>
    <Row ListType="ScienceSensitivity" Item="YIELD_SCIENCE" Value="25"/>
    <Row ListType="CultureSensitivity" Item="YIELD_CULTURE" Value="25"/>
  </AiFavoredItems>
  
 */
 
REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernSensitivity', 'YIELD_SCIENCE', 1, -10);

DELETE FROM AiFavoredItems WHERE ListType IN (
'AncientPseudoYields',
'AncientYields',
'ClassicalPseudoYields',
'ClassicalYields',
'MedievalPseudoYields',
'MedievalYields',
'RenaissancePseudoYields',
'RenaissanceYields',
'IndustrialPseudoYields',
'IndustrialYields',
'ModernPseudoYields',
'ModernYields');


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Wonder_Obsessed_Classical_Yields', 'YIELD_PRODUCTION',   						1, 35),
('Wonder_Obsessed_Classical_Yields', 'YIELD_CULTURE',   						1, 10),

('Wonder_Obsessed_Classical_Districts', 'DISTRICT_HARBOR',   						1, 30),

('Wonder_Obsessed_Classical_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   		1, 200),
('Wonder_Obsessed_Classical_PseudoYields', 'PSEUDOYIELD_HAPPINESS',   			1, 100),
('Wonder_Obsessed_Classical_PseudoYields', 'PSEUDOYIELD_WONDER',   				1, 30);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Wonder_Obsessed_Medieval_Yields', 'YIELD_PRODUCTION',   						1, 35),
('Wonder_Obsessed_Medieval_Yields', 'YIELD_CULTURE',   							1, 12),

('Wonder_Obsessed_Medieval_Districts', 'DISTRICT_INDUSTRIAL_ZONE',   			1, 0),

('Wonder_Obsessed_Medieval_Projects', 'PROJECT_ENHANCE_DISTRICT_INDUSTRIAL_ZONE',  1, 0),
('Wonder_Obsessed_Medieval_Projects', 'PROJECT_ENHANCE_DISTRICT_COMMERCIAL_HUB',  1, 0),

('Wonder_Obsessed_Medieval_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   		1, 50),
('Wonder_Obsessed_Medieval_PseudoYields', 'PSEUDOYIELD_HAPPINESS',   			1, 75),
('Wonder_Obsessed_Medieval_PseudoYields', 'PSEUDOYIELD_WONDER',   				1, 60);



INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('HIGH_DIFF_S_Units',            'UNIT_SCOUT',   						1, 25),
('HIGH_DIFF_S_Units',            'UNIT_GALLEY',   						1, 5),
('HIGH_DIFF_S_Scout_Uses',      'LAND_SCOUTS_PER_PRIMARY_REGION',   				1, 200),
('HIGH_DIFF_S_Scout_Uses',      'LAND_SCOUTS_PER_SECONDARY_REGION',   				1, 100),

('HIGH_DIFF_S_PseudoYields', 'PSEUDOYIELD_SETTLER',   		       			  1, 150),
('HIGH_DIFF_S_PseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   		    	1, 3);

/*
 ('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Scout_Uses'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Settlement'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Unit_Builds'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_Units'),
('STRATEGY_HIGH_DIFF_SETTLEMENT', 		'HIGH_DIFF_S_PseudoYields');
 */

-- ANCIENT

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('AncientSettlement', 'Specific Resource', 0, 4, 			'RESOURCE_IRON', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('AncientOperations', 'OP_SETTLE', 		   			1, 1),
('AncientOperations', 'ATTACK_BARBARIANS', 			1, 1),
('AncientOperations', 'NAVAL_SUPERIORITY', 			0, -1),
('AncientOperations', 'CITY_ASSAULT', 				0, -1),

('AncientPerWarOperations', 'NAVAL_SUPERIORITY',    0, -1),

('AncientOperations', 'NAVAL_SUP_MELEE',   			1, 1),
('AncientUnitBuilds', 'PROMOTION_CLASS_RANGED', 			1, 		35),
('AncientSettlement', 'Nearest Friendly City', 0, 1),

('AncientTechs', 'TECH_ENGINEERING', 				0, 0),

('AncientYields', 'YIELD_FAITH',   1, 12), -- Base -22
('AncientYields', 'YIELD_SCIENCE', 1, 10),
('AncientYields', 'YIELD_CULTURE', 1, 3),
('AncientPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 0, -75), -- def -100
('AncientPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, 25), -- pvs 16, 18
('AncientPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, -5),

('AncientPseudoYields', 'PSEUDOYIELD_CITY_BASE',   1, -22),
('AncientPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES',   1, 10),
('AncientPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS',   1, 10), -- pvs 5, 8
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 45), -- pvs 6, 7, 10
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 130), -- pvs 11, 15, 80
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 40), -- pvs 8, 9, 19

('AncientPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',   1, 50),

('AncientPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 25),
('AncientPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 18),

('AncientPseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -30),
('AncientPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 250),
('AncientPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT',   1, -21), -- bringing back as Wu Zetian built 7-8 ships in ancient era
('AncientPseudoYields', 'PSEUDOYIELD_WONDER',   		1, -35),
('AncientPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 		1, -25); -- To reduce chance AI puts farms on strategics and builds loads of workers before settlers etc

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('AncientSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
('AncientSavings', 'SAVING_SLUSH_FUND', 									1),
('AncientSavings', 'SAVING_PLOTS', 										-1); 
--('AncientSavings', 'SAVING_SLUSH_FUND', 								 0); 


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'AncientPseudoYields', PseudoYieldType, 1, -25
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

UPDATE AiFavoredItems SET Value = -35 WHERE ListType = 'AncientPseudoYields' AND Item = 'PSEUDOYIELD_GREATWORK_RELIC';


-- CLASSICAL

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('ClassicalSettlement', 'New Resources', 			0, 2,			 NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_NEW_RESOURCES'), 
('ClassicalSettlement', 'Specific Resource', 		0, 3, 			'RESOURCE_IRON', 	'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('ClassicalSettlement', 'Specific Resource', 		0, 2, 			'RESOURCE_HORSES', 	'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('ClassicalOperations', 'OP_SETTLE', 		   			1, 1),
('ClassicalOperations', 'ATTACK_BARBARIANS', 		   	1, 1),
('ClassicalOperations', 'NAVAL_SUP_MELEE', 		   		1, 1),
--('ClassicalSettlement', 'Nearest Friendly City', 		0, 1), -- pvs 3 Macedon going across half the map to settle, 2

('ClassicalTechs', 'TECH_POTTERY', 				1, 0), 
('ClassicalTechs', 'TECH_MINING', 				1, 0), 

('ClassicalYields', 'YIELD_CULTURE', 1, 10), -- def 0 , pvs 8, 7 (def theater square favoured in base game)
('ClassicalYields', 'YIELD_FAITH',   1, 12), -- def. 20, pvs 12
('ClassicalYields', 'YIELD_FOOD',    1, 15), -- def. 15, pvs 17
('ClassicalYields', 'YIELD_GOLD',    1, 15), -- Def 20, pvs 10, 11, 14
('ClassicalYields', 'YIELD_SCIENCE', 1, 27), -- pvs 20, 26, 25, 22 - Now def 30 in base game
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, 25), -- pvs 4, 10, 20
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 20),
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 50),

('ClassicalPseudoYields', 'PSEUDOYIELD_WONDER',   		1, 10),
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',   1, 12),
('ClassicalPseudoYields', 'PSEUDOYIELD_GPP_GENERAL',   1, 15), -- Player can get them easily
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 35),
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 35), -- pvs 12
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 20), -- For expansion
('ClassicalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 21),
('ClassicalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 17),
('ClassicalPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS',   1, 200),
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -10), -- pvs 3
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 5),
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL',   1, 20),

('ClassicalPseudoYields', 'PSEUDOYIELD_HAPPINESS', 0, -25),
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, 3), -- pvs 15
('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 3), -- pvs 0
('ClassicalPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, -60), -- def nothing
('ClassicalPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 20),
('ClassicalPseudoYields', 'PSEUDOYIELD_UNIT_RELIGIOUS', 1, 20), -- base 0.73
--('ClassicalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -1),
('ClassicalPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 	1, 60),
('ClassicalPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 10),
('ClassicalPseudoYields', 'PSEUDOYIELD_DISTRICT', 		1, 10);

-- Todo BUILDING_MONUMENT

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('ClassicalSavings', 'SAVING_GREAT_PEOPLE', 								 0), 
('ClassicalSavings', 'SAVING_SLUSH_FUND', 									1),
('ClassicalSavings', 'SAVING_PLOTS', 										-1); 
--('ClassicalSavings', 'SAVING_SLUSH_FUND', 								 0); 





INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ClassicalPseudoYields', PseudoYieldType, 1, -25
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

UPDATE AiFavoredItems SET Value = -30 WHERE ListType = 'ClassicalPseudoYields' AND Item = 'PSEUDOYIELD_GREATWORK_RELIC';

-- MEDIEVAL

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('MedievalSettlement', 'New Resources', 		0, 2,			 NULL, 				'LOC_SETTLEMENT_RECOMMENDATION_NEW_RESOURCES'),
('MedievalSettlement', 'Foreign Continent', 	0, 2, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), 
('MedievalSettlement', 'Coastal', 			    0, 4, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- exploration
('MedievalSettlement', 'Specific Resource',     0, 18, 			'RESOURCE_NITER', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- Medieval

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('MedievalYields', 'YIELD_CULTURE',    1, -7), -- pvs -15
('MedievalYields', 'YIELD_FAITH',      1, -18), -- def. -25, pvs -20
('MedievalYields', 'YIELD_FOOD',       1, 35), -- def. 25
('MedievalYields', 'YIELD_GOLD',       1, 22), -- def. 15 (-1 pvs made up for by extra merchant points), pvs 15
('MedievalYields', 'YIELD_PRODUCTION', 1, 20), -- def. 20, pvs 18, 16
('MedievalYields', 'YIELD_SCIENCE',    1, 20), -- def. 15
('MedievalPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 80),
('MedievalPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -11),
('MedievalPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -12),

('MedievalPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 130),
('MedievalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 18),
('MedievalPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 14),
('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 12),
('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 45), -- pvs 10, 35 (AI wasn't build enough ships) -- not any ships in this era
('MedievalPseudoYields', 'PSEUDOYIELD_WONDER',   		1, 80),
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, -15),
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT',   1, 20), -- bigger empire and so now can invest in great people slightly more
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL',   1, 5),

('MedievalPseudoYields', 'PSEUDOYIELD_GPP_WRITER',   1, 10),
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 10),
('MedievalPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 40), -- Player can get them easily
('MedievalPseudoYields', 'PSEUDOYIELD_IMPROVEMENT',   1, 150), -- Fuedalism
('MedievalSettlement', 'Nearest Friendly City', 		0, 1), -- test

('MedievalPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 15),
('MedievalPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 6),
--('MedievalPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, -4),

('MedievalBuildings', 'BUILDING_GRANARY', 1, 900),
('MedievalBuildings', 'BUILDING_MONUMENT', 1, 900),
--('MedievalBuildings', 'BUILDING_WATER_MILL', 1, 0),

('MedievalPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 35),
('MedievalPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),
('MedievalPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, -10),
('MedievalPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 25), -- pvs 3
('MedievalPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 10); -- def 100, pvs 30

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('Medieval_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 95), -- pvs 75
('Medieval_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 60);


INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalBuildings', 'BUILDING_TEMPLE_ARTEMIS', 1, 900
FROM Types WHERE Type = 'BUILDING_TEMPLE_ARTEMIS';

INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalBuildings', 'BUILDING_HANGING_GARDENS', 1, 900
FROM Types WHERE Type = 'BUILDING_HANGING_GARDENS';

INSERT OR IGNORE INTO  AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'MedievalBuildings', 'BUILDING_GREAT_BATH', 1, 900
FROM Types WHERE Type = 'BUILDING_GREAT_BATH';



-- RENAISSANCE
INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('RenaissanceSettlement', 'Foreign Continent', 	0, 8, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), -- Cartography is Renaissance
('RenaissanceSettlement', 'Coastal', 			0, 6, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_COAST'), -- exploration
('RenaissanceSettlement', 'Specific Resource', 0, 12, 			'RESOURCE_NITER', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES');
 

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RenaissanceYields', 'YIELD_CULTURE',    1, 6), -- def 0, pvs 15
('RenaissanceYields', 'YIELD_FAITH',      1, -6), -- def 0 pvs -15, -14, -13
('RenaissanceYields', 'YIELD_FOOD',       1, 50), -- def. 10
('RenaissanceYields', 'YIELD_GOLD',       1, 30), -- def. 15 pvs 10, 12, 15 (AI runs out of gold about now)
('RenaissanceYields', 'YIELD_PRODUCTION', 1, 11), -- def 0, pvs 10, 5
('RenaissanceYields', 'YIELD_SCIENCE',    1, 5), -- def 0 pvs 19, pvs 15, 11
--('RenaissancePseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, -10),
('RenaissancePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 16),
('RenaissancePseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 14),
('RenaissancePseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -10),
('RenaissancePseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, 3),
('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 5),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_PROPHET',   1, -20), -- Def -100
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 15),
('RenaissancePseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 60), -- growth
('RenaissancePseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 15),
('RenaissancePseudoYields', 'PSEUDOYIELD_WONDER',   	1, 90),
('RenaissancePseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 1, 50),

('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 20),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 25),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 40),
('RenaissancePseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 20),

--('RenaissancePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 10), -- pvs 10
('RenaissancePseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 10),
('RenaissancePseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 150),
('RenaissancePseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, 3),

('RenaissancePseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, 25),
('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, 25),
('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_EXPLORER', 1, 10),
('RenaissancePseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 70); -- pvs 30, 50 -- good ships in this era


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('RenaissanceBuildings', 'BUILDING_MONUMENT', 1, 500),
('RenaissanceBuildings', 'BUILDING_GRANARY', 1, 900);
--('RenaissanceBuildings', 'BUILDING_WATER_MILL', 1, 0),


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('RenaissanceSavings', 'SAVING_GREAT_PEOPLE', 								 -1), 
('RenaissanceSavings', 'SAVING_SLUSH_FUND', 									-1),
('RenaissanceSavings', 'SAVING_PLOTS', 											1); 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Renaissance_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 75),
('Renaissance_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 40);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('IndustrialSettlement', 'Foreign Continent', 	0, 9, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), -- Cartography
--('IndustrialSettlement', 'Total Yield', 	 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('IndustrialSettlement', 'Specific Resource', 0, 7, 			'RESOURCE_NITER', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('IndustrialSettlement', 'Specific Resource', 0, 21, 			'RESOURCE_COAL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 
--('IndustrialSettlement', 'Specific Resource', 0, 35, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
--('IndustrialSettlement', 'Specific Resource', 1, 40, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 
--('AtomicSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
-- INDUSTRIAL
--('IndustrialYields', 'YIELD_CULTURE',	1, -3), -- pvs -5
('IndustrialYields', 'YIELD_FAITH',	1, -8), -- def -40 pvs -10, -20, -16
('IndustrialYields', 'YIELD_PRODUCTION', 1, 37), -- pvs 20
('IndustrialYields', 'YIELD_GOLD', 		1, 10),
('IndustrialYields', 'YIELD_SCIENCE',    1, 6), -- pvs 11, 9
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 110),
--('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('IndustrialPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 30),
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -30), -- pvs -20
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -18),
('IndustrialPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 15),
('IndustrialPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER',   1, 18), -- pvs 17
('IndustrialPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE',   1, 20), -- pvs 14
('IndustrialPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 12),
('IndustrialPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 55),
('IndustrialPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 25),

('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 30),
('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 30),
('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 60), -- def 20, pvs 10
('IndustrialPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 20), -- def 20, pvs 10
('IndustrialPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 20),

('IndustrialPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 35),

--('IndustrialPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -5),
('IndustrialPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 110); -- pvs 40


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'IndustrialPseudoYields', PseudoYieldType, 1, 50
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 


INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('Industrial_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST',   1, 75),
('Industrial_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER',   1, 45);

-- MODERN

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('ModernSettlement', 'Foreign Continent', 	0, 7, 				NULL, 					'LOC_SETTLEMENT_RECOMMENDATION_FOREIGN_CONTINENT'), -- Cartography, still needed
('ModernSettlement', 'Total Yield', 	 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('ModernSettlement', 'Specific Resource', 0, 12, 			'RESOURCE_COAL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('ModernSettlement', 'Specific Resource', 0, 30, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('ModernSettlement', 'Specific Feature', 0, 5, 				'FEATURE_ICE', 				'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('ModernSettlement', 'Specific Resource', 1, 40, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); 
--('AtomicSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('ModernImprovements', 'IMPROVEMENT_FARM',  -25), 
('ModernImprovements', 'IMPROVEMENT_FISHING_BOATS',  -20), 
('ModernImprovements', 'IMPROVEMENT_PASTURE',  -20);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernImprovements', 'IMPROVEMENT_MINE', 1, 150), 
('ModernImprovements', 'IMPROVEMENT_LUMBER_MILL', 1, 50),
('ModernImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('ModernImprovements', 'IMPROVEMENT_FORT', 0,  -75), 
('ModernImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('ModernImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 50),
('ModernImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 400),
('ModernImprovements', 'IMPROVEMENT_OIL_WELL', 1, 400);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('ModernImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('ModernImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('ModernImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernYields', 'YIELD_PRODUCTION', 1, 15), -- def 0
('ModernYields', 'YIELD_SCIENCE', 1, 2), -- def 0
('ModernYields', 'YIELD_CULTURE', 1, 2), -- def 0
('ModernYields', 'YIELD_GOLD', 1, 33), -- pvs 10 (tends to be poor in this era)
('ModernYields', 'YIELD_FOOD', 1, 20), -- def 5

('ModernBuildings', 'BUILDING_FERRIS_WHEEL', 1, 500),
('ModernBuildings', 'BUILDING_AQUARIUM', 1, 500),
('ModernBuildings', 'BUILDING_AQUATICS_CENTER', 1, 900),
('ModernBuildings', 'BUILDING_SEAPORT', 1, 900),

--('ModernBuildings', 'BUILDING_WATER_MILL', 1, 300),
('ModernBuildings', 'BUILDING_GRANARY',    1, 900),

('ModernPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 1200), -- pvs 700, 800
--('ModernPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 20),
('ModernPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -60), -- pvs -50
('ModernPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -29), -- pvs -21
('ModernPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 20),
--('ModernPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 60),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 5),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_MUSICIAN', 1, 5),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 1, 10),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 35),
('ModernPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 50),

('ModernPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 40),
('ModernPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, -10),
('ModernPseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 110),
('ModernPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 35), -- pvs 24
('ModernPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 10),
('ModernPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 40),

('ModernPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, -18), -- Only have Bi-Planes in Modern Era, pvs -16
('ModernPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 17), -- world wars, pvs 2
('ModernPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 18), -- bringing back
('ModernPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT',   1, 12),
('ModernPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 100),
('ModernPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -10);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('ModernDistricts', 'DISTRICT_ENCAMPMENT', 					0, 0),
('ModernDistricts', 'DISTRICT_WATER_ENTERTAINMENT_COMPLEX', 1, 0);


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
SELECT 'ModernPseudoYields', PseudoYieldType, 1, 110
FROM PseudoYields
WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 


/*
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_Yields'),
('STRATEGY_MODERN_CHANGES_SCIENCE',		'Modern_Science_PseudoYields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_Yields'),
('STRATEGY_ATOMIC_CHANGES_SCIENCE', 	'Atomic_Science_PseudoYields'),
*/

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('Industrial_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('Modern_Science_Yields', 'YIELD_SCIENCE', 1, 10),
('Modern_Science_Yields', 'YIELD_PRODUCTION', 1, 10),

('Modern_Science_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 	1, 30),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 100),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 55), -- pvs 65, too high
('Modern_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 110),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -20),

('Modern_Science_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, 50),

('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -10),
('Modern_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -10),

('Modern_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('Atomic_Science_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 30),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 100),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 95),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 135),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -20),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 	1, 80),

('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 	1, -25),
('Atomic_Science_PseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 			1, -25),

('Atomic_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('Atomic_Science_Techs', 'TECH_ROCKETRY', 							1, 0),
('Atomic_Science_Techs', 'TECH_SATELLITES', 						1, 0),
('Atomic_Science_Techs', 'TECH_COMBINED_ARMS', 						1, 0),
('Atomic_Science_Techs', 'TECH_NUCLEAR_FISSION', 					1, 0),

('Atomic_Science_Diplo', 'DIPLOACTION_DECLARE_FRIENDSHIP', 			0, 0),
('Atomic_Science_Diplo', 'DIPLOACTION_DEMAND_TRIBUTE', 				1, 0),

('Info_Science_Diplo', 	'DIPLOACTION_DECLARE_FRIENDSHIP', 			0, 0),
('Info_Science_Diplo', 	'DIPLOACTION_DEMAND_TRIBUTE', 				1, 0),

('Info_Science_Techs', 'TECH_ROCKETRY', 							1, 0),
('Info_Science_Techs', 'TECH_SATELLITES', 							1, 0),
('Info_Science_Techs', 'TECH_COMBINED_ARMS', 						1, 0),
('Info_Science_Techs', 'TECH_NUCLEAR_FISSION', 						1, 0),
('Info_Science_Techs', 'TECH_STEALTH_TECHNOLOGY', 					1, 0),

('Info_Science_Districts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('Info_Science_PseudoYields', 'PSEUDOYIELD_RESOURCE_LUXURY', 1, 50),
('Info_Science_PseudoYields', 'PSEUDOYIELD_SPACE_RACE', 1, 100),
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_ARTIST', 0, -15),
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_GENERAL', 0, -20),
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 120), -- pvs 70
('Info_Science_PseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 195); -- Does Campus research grants when supposed to be launching orbital laser -- pvs 75


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('Modern_Science_Savings', 'SAVING_GREAT_PEOPLE', 								 0), 
('Modern_Science_Savings', 'SAVING_SLUSH_FUND', 									-1),
('Modern_Science_Savings', 'SAVING_PLOTS', 											1),
('Modern_Science_Savings', 'SAVING_UNITS', 								 			1); 

-- 1, 3, 3, 4

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('Atomic_Science_Savings', 'SAVING_GREAT_PEOPLE', 								 0), 
('Atomic_Science_Savings', 'SAVING_SLUSH_FUND', 									-1),
('Atomic_Science_Savings', 'SAVING_PLOTS', 											1),
('Atomic_Science_Savings', 'SAVING_UNITS', 								 			1); 

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
--('Info_Science_Savings', 'SAVING_GREAT_PEOPLE', 									 0), 
('Info_Science_Savings', 'SAVING_SLUSH_FUND', 										-1),
('Info_Science_Savings', 'SAVING_PLOTS', 											1),
('Info_Science_Savings', 'SAVING_UNITS', 								 			1); 

-- ATOMIC

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 		TooltipString) VALUES
('AtomicSettlement', 'Specific Feature', 0, 10, 			'FEATURE_ICE', 'LOC_SETTLEMENT_RECOMMENDATION_FEATURES'),
('AtomicSettlement', 'Specific Resource', 0, 35, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AtomicSettlement', 'Specific Resource', 0, 50, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('AtomicSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

--('AtomicSettlement', 'Total Yield', 	 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AtomicImprovements', 'IMPROVEMENT_MINE', 1, 200), 
('AtomicImprovements', 'IMPROVEMENT_FARM', 0, -20), 
('AtomicImprovements', 'IMPROVEMENT_FISHING_BOATS', 0, -40), 
('AtomicImprovements', 'IMPROVEMENT_PASTURE', 0,  -50),
('AtomicImprovements', 'IMPROVEMENT_LUMBER_MILL', 1, 50),

('AtomicImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('AtomicImprovements', 'IMPROVEMENT_FORT', 0,  -75), 
('AtomicImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('AtomicImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 50),
('AtomicImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 400),
('AtomicImprovements', 'IMPROVEMENT_OIL_WELL', 1, 400);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AtomicImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('AtomicImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('AtomicImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('AtomicImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES

('AtomicYields', 'YIELD_CULTURE', 1, 3),
--('AtomicYields', 'YIELD_GOLD', 1, 5),
('AtomicYields', 'YIELD_PRODUCTION', 1, -10),
('AtomicYields', 'YIELD_FOOD', 1, -10),

('AtomicBuildings', 'BUILDING_FERRIS_WHEEL', 1, 90),
('AtomicBuildings', 'BUILDING_AQUARIUM', 1, 90),
('AtomicBuildings', 'BUILDING_AQUATICS_CENTER', 1, 90),
('AtomicBuildings', 'BUILDING_SEAPORT', 1, 500),
('AtomicBuildings', 'BUILDING_GRANARY', 1, 500),
('AtomicBuildings', 'BUILDING_SEWER', 1, 200),

('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 210), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT', 1,  210), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1, 210), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, 210), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT', 1,  210), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING', 1,   115), 
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC', 1, 	 210),
('AtomicPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 	 210), 

('AtomicPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 0, -20),

('AtomicPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 1200),
--('AtomicPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 400),
('AtomicPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -80),
('AtomicPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -45),
('AtomicPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, -15),
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 1, 12),
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 35),
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_SCIENTIST', 1, 15),
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 50),
('AtomicPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 25),

('AtomicPseudoYields', 'PSEUDOYIELD_HAPPINESS', 	1, 85),
('AtomicPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, -10),
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 25), 
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, 20),
('AtomicPseudoYields', 'PSEUDOYIELD_NUCLEAR_WEAPON', 1, 30),
('AtomicPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 1, 11), -- world wars
('AtomicPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 1, 11), -- pvs 10
('AtomicPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 130), -- Lots more for uranium, aluminium, oil (all res discovered)
--('AtomicPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 1, 15),
('AtomicPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -1),

('AtomicPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 1, 50),
('AtomicPseudoYields', 'PSEUDOYIELD_RELIGIOUS_CONVERT_EMPIRE', 1, 15),
('AtomicPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, 30),
('AtomicPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -10);

-- 


--INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value)
--SELECT 'AtomicPseudoYields', PseudoYieldType, 1, 150
--FROM PseudoYields
--WHERE PseudoYieldType LIKE 'PSEUDOYIELD_GREATWORK_%'; 

-- INFORMATION

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal, 					TooltipString) VALUES
('InformationSettlement', 'Total Yield', 0, 1, 					'YIELD_PRODUCTION', 		'LOC_SETTLEMENT_RECOMMENDATION_TOTAL_YIELD'), -- def 1
('InformationSettlement', 'Specific Resource', 0, 15, 			'RESOURCE_OIL', 			'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('InformationSettlement', 'Specific Resource', 0, 40, 			'RESOURCE_ALUMINUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'), 
('InformationSettlement', 'Specific Resource', 1, 70, 			'RESOURCE_URANIUM', 		'LOC_SETTLEMENT_RECOMMENDATION_RESOURCES'); -- pvs 15 -- testing favoured (now 18 from 20)

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('InformationImprovements', 'IMPROVEMENT_MINE', 1, 200), 
('InformationImprovements', 'IMPROVEMENT_FARM', 0, -90), 
('InformationImprovements', 'IMPROVEMENT_FISHING_BOATS', 0, -70), 
('InformationImprovements', 'IMPROVEMENT_PASTURE', 0,  -60),
('InformationImprovements', 'IMPROVEMENT_LUMBER_MILL', 1, 40),

('InformationImprovements', 'IMPROVEMENT_GEOTHERMAL_PLANT', 1, 90),
('InformationImprovements', 'IMPROVEMENT_FORT', 0,  -75), 
('InformationImprovements', 'IMPROVEMENT_CITY_PARK', 1, 90),
('InformationImprovements', 'IMPROVEMENT_MISSILE_SILO', 1, 50),
('InformationImprovements', 'IMPROVEMENT_OFFSHORE_OIL_RIG', 1, 400),
('InformationImprovements', 'IMPROVEMENT_OIL_WELL', 1, 400);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('InformationImprovements', 'IMPROVEMENT_ZIGGURAT', 0, -90),
('InformationImprovements', 'IMPROVEMENT_KURGAN', 0, -90),
('InformationImprovements', 'IMPROVEMENT_SPHINX', 0, -90),
('InformationImprovements', 'IMPROVEMENT_COLOSSAL_HEAD', 0, -90);

INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Value) VALUES
('InformationOps', 'OP_BLITZ',   		 -1),
('InformationOps', 'CITY_ASSAULT',   	 -1),
('InformationOps', 'OP_SETTLE',   		 -1);

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
--('InformationYields', 'YIELD_SCIENCE', 1, 1),
--('InformationYields', 'YIELD_CULTURE', 1, -4),
('InformationYields', 'YIELD_GOLD', 0, -5),
('InformationYields', 'YIELD_FAITH', 0, -10), -- pvs 15, -8
('InformationYields', 'YIELD_PRODUCTION', 1, 8), -- Don't need to focus on increasing production when we are about to win - however industrial zones are important for power etc
('InformationYields', 'YIELD_FOOD', 0, -30), -- pvs -25
('InformationDistricts', 'DISTRICT_ENCAMPMENT', 					0, 0),

('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_SCULPTURE', 1, 650), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_PORTRAIT', 1, 650), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_LANDSCAPE', 1, 650), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIGIOUS', 1, 650), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_ARTIFACT', 1, 650), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_WRITING', 1, 310), 
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_MUSIC', 1, 650),
('InformationPseudoYields', 'PSEUDOYIELD_GREATWORK_RELIC', 1, 650), 

('InformationPseudoYields', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 0, -20),

('InformationPseudoYields', 'PSEUDOYIELD_CITY_BASE', 1, 500), -- pvs 700
--('InformationPseudoYields', 'PSEUDOYIELD_CITY_POPULATION', 1, 1000),
('InformationPseudoYields', 'PSEUDOYIELD_CITY_DEFENSES', 1, -82),
('InformationPseudoYields', 'PSEUDOYIELD_CITY_DEFENDING_UNITS', 1, -25),
('InformationPseudoYields', 'PSEUDOYIELD_CITY_ORIGINAL_CAPITAL', 1, 50),
('InformationPseudoYields', 'PSEUDOYIELD_HAPPINESS', 1, 35),
('InformationPseudoYields', 'PSEUDOYIELD_DISTRICT', 1, -15),
('InformationPseudoYields', 'PSEUDOYIELD_INFLUENCE', 1, -33), -- 40 too high
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_COMBAT', 0, -50), -- pvs -7
('InformationPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_FAVOR', 0, -35),
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_AIR_COMBAT', 1, 5), 
('InformationPseudoYields', 'PSEUDOYIELD_GPP_MERCHANT', 1, 30),
('InformationPseudoYields', 'PSEUDOYIELD_GPP_ADMIRAL', 1, 15),
('InformationPseudoYields', 'PSEUDOYIELD_GPP_ENGINEER', 1, 15),

('InformationPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_NUMBER', 0, -35),
('InformationPseudoYields', 'PSEUDOYIELD_STANDING_ARMY_VALUE', 0, -30), -- Reduced as ai building too many units when should be trying to win
('InformationPseudoYields', 'PSEUDOYIELD_IMPROVEMENT', 1, 70), -- aluminium and uranium -- testing 70, no improvements being built at 35
('InformationPseudoYields', 'PSEUDOYIELD_ENVIRONMENT', 0, -20), -- Building too many carbon recapture projects
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_SETTLER', 1, -25),
('InformationPseudoYields', 'PSEUDOYIELD_UNIT_NAVAL_COMBAT', 1, -35), -- bringing back
('InformationPseudoYields', 'PSEUDOYIELD_DIPLOMATIC_BONUS', 1, -7); -- pvs -5, -10


INSERT OR IGNORE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AvoidDarkAges', 'PSEUDOYIELD_CLEAR_BANDIT_CAMPS', 		1, 			50),
('AvoidDarkAges', 'PSEUDOYIELD_WONDER', 					1, 			55);

-- NO more all civs playing the same way. crazy stuff
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_CAMPUS';
DELETE FROM AiFavoredItems WHERE ListType = 'ClassicalDistricts' AND Item = 'DISTRICT_THEATER';
-- DELETE FROM AiListTypes WHERE ListType = 'ClassicalDistricts';
-- DELETE FROM AiLists WHERE ListType = 'ClassicalDistricts';


