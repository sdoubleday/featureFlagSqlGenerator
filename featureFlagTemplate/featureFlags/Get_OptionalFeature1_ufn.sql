CREATE FUNCTION [featureFlags].[Get_OptionalFeature1_ufn]()
RETURNS BIT
AS
BEGIN
	DECLARE @Returnable BIT = NULL;
	SELECT @Returnable = [OptionalFeature1] FROM [featureFlags].[featureFlagsConfig] WHERE [Id] = 1;
	RETURN @Returnable;
END
