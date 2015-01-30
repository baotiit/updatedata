USE [SAVVY]

ALTER proc [dbo].[sp_Claim_UpdateField]
@idclaim varchar(10), @key nvarchar(50), @value nvarchar(Max)
as
begin
	Declare @SQLQuery as nvarchar(Max)
	Declare @ValueUpdate as nvarchar(Max)
	
	set @SQLQuery = 'update CLAIM set '+ @key +'=N'''+ @value +''' where ID_Claim=' + @idclaim
	
	EXECUTE sp_executesql @SQLQuery
	
end

exec [sp_Claim_UpdateField] @idclaim=1603, @key=C1, @value=N'giá trị C111'

select C1 from CLAIM where ID_Claim=1603
