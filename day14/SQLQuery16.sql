CREATE FUNCTION GetAgentPolicyDetails ()
RETURNS @AgentPolicyInfo TABLE 
(
	agentId INT,
	FirstName varchar(30),
	LastName varchar(30),
	City varchar(30),
	PolicyId INT,
	AnnualPremium numeric(9,2),
	ModalPremium Numeric(9,2)
)
AS
BEGIN
   INSERT INTO @AgentPolicyInfo
   SELECT A.AgentID, FirstName,LastName,City,P.PolicyID,AnnualPremium,ModalPremium
   FROM Agent A INNER JOIN AgentPolicy AP ON A.AgentID = AP.AgentID
   INNER JOIN Policy P ON P.PolicyID = AP.PolicyID
   RETURN
END
GO


select * from dbo.GetAgentPolicyDetails()
GO
