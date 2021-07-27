# featureFlagSqlGenerator
Generator of SQL for feature flag table

## Core template
The template creates a table that defends itself against having more than one row and has a stored procedure that updates BIT flags in that table ONLY when the relevant parameter for the stored procedure is specified with a 0 or a 1. All parameters default to NULL, which leaves the relevant column unchanged.

## Get functions
There is a folder with a template for a function to get specific flag values.