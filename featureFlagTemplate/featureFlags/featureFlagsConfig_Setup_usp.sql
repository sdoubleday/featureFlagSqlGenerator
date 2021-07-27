CREATE PROCEDURE [featureFlags].[featureFlagsConfig_Setup_usp]
	 @OptionalFeature1 BIT = NULL
	,@OptionalFeature2 BIT = NULL
AS

IF (SELECT [Id] FROM [featureFlags].[featureFlagsConfig]) IS NULL
BEGIN
	INSERT INTO [featureFlags].[featureFlagsConfig] (
		[Id]
	)
	VALUES (
		default
	);
END

UPDATE [a]
SET
[Id] = default
,[OptionalFeature1] = COALESCE(@OptionalFeature1, [a].[OptionalFeature1]) /*FeatureFlag_ReplacementPoint|OptionalFeature1|,*/
,[OptionalFeature2] = COALESCE(@OptionalFeature2, [a].[OptionalFeature2]) /*Sample*/
FROM [featureFlags].[featureFlagsConfig] AS [a];

