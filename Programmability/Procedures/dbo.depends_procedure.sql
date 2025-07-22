SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[depends_procedure] (@prm_1 INT, @prm_2 INT)
AS
  EXECUTE object_viewer_procedure
  RETURN
GO