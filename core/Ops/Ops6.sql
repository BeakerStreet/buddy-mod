
-- RH Ops 6

UPDATE AiOperationDefs SET Priority = '4', MaxTargetDistInRegion = '-1', MaxTargetDistInArea = '-1', MaxTargetDistInWorld = '-1',  MinOddsOfSuccess = '0', MustHaveUnits = '-1' WHERE OperationName = 'Nuclear Assault' AND TargetType = 'TARGET_ENEMY_COMBAT_DISTRICT'; -- Higher number is higher Priority Default = 3	MaxTargetDistInRegion = -1	MaxTargetDistInArea = -1	MinOddsOfSuccess = 0	MustHaveUnits = -1
-- SelfStart= 'True' (todo maybe test)