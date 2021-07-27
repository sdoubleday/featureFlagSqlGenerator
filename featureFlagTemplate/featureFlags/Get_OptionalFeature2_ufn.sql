CREATE FUNCTION [featureFlags].[Get_OptionalFeature2_ufn]()
RETURNS BIT
AS
BEGIN
	DECLARE @Returnable BIT = NULL;
	SELECT @Returnable = [OptionalFeature2] FROM [featureFlags].[featureFlagsConfig] WHERE [Id] = 1;
	RETURN @Returnable;
END
