
-- RH Ops 7

INSERT OR REPLACE INTO AiOperationTypes (OperationType, Value)
SELECT 'OP_BLITZ', MAX(Value)+1
FROM AiOperationTypes;

INSERT OR IGNORE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_PILLAGE', 1),
('PerWarOperationsLimits', 'OP_PILLAGE', 1);

INSERT OR REPLACE INTO AiFavoredItems(ListType, Item, Value) VALUES
('BaseOperationsLimits',   'OP_BLITZ', 1);


INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('DarwinistEnjoysWarOperations');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('DarwinistEnjoysWarOperations', 		'TRAIT_AGENDA_ENJOYS_WAR', 			'AiOperationTypes');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('DarwinistEnjoysWarOperations', 'OP_BLITZ', 1, 1);

INSERT OR IGNORE INTO AiListTypes (ListType) VALUES
('AirPowerOperations');

INSERT OR IGNORE INTO AiLists (ListType, LeaderType, System) VALUES
('AirPowerOperations', 		'TRAIT_AGENDA_PREFER_AIRPOWER', 			'AiOperationTypes');

REPLACE INTO AiFavoredItems (ListType, Item, Favored, Value) VALUES
('AirPowerOperations', 'OP_BLITZ', 1, 1);



