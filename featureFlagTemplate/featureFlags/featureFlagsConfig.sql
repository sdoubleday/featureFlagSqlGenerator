CREATE TABLE [featureFlags].[featureFlagsConfig]
(
	 [Id] INT NOT NULL PRIMARY KEY DEFAULT (1)
	,CONSTRAINT [ck_featureFlags_featureFlagsConfig_Id] CHECK ([Id] = 1)
	,[OptionalFeature1] BIT NOT NULL DEFAULT (0) /*FeatureFlag_ReplacementPoint|OptionalFeature1|,*/
	,[OptionalFeature2] BIT NOT NULL DEFAULT (0) /*Sample*/
)
