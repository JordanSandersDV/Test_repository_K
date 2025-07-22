SET QUOTED_IDENTIFIER OFF
GO

CREATE RULE [dbo].[rule1] AS
@range>= $1000 AND @range <$20000;
GO

EXEC sys.sp_addextendedproperty N'extended property for Rule', N'rule range_rule', 'SCHEMA', N'dbo', 'RULE', N'rule1'
GO