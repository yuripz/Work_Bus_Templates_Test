<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:for-each select="Body">
				<xsl:for-each select="Parametrs">
					<xsl:variable name="Apos">'</xsl:variable>
					<xsl:variable name="TableListFilter">
						<xsl:value-of select="concat(' and ', Pk_FieldName, ' = ', $Apos, Pk_Value , $Apos )"/>
					</xsl:variable>
					<SQLRequest>
						<SQLStatement type="select" snum="1">
							<PSTMT>select * from ( select q.Queue_Id, 
(select t.ROWID from artx_Proj.Message_Types t where t.Msg_Type = q.Msg_Type and t.operation_id = q.Operation_Id ) Message_Types_ROW, 
case
  when q.Msgdirection_Id != 0 and  q.Subsys_Cod is not null then 
     ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = q.Msgdirection_Id and s.Subsys_Cod = q.Subsys_Cod  )
  when q.Msgdirection_Id != 0 and  q.Subsys_Cod is null then  
    ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = q.Msgdirection_Id and s.Subsys_Cod is null  )             
  else NULL   
end Queue_Msgdirection_Cod,
q.Queue_Direction, q.Queue_Date, q.Msg_Status, q.Msg_Type, q.Operation_Id, 
q.Msg_Type_Own, NVL(q.Msg_Reason, ' ') as Msg_Reason, NVL(q.Msg_Result, ' ') as Msg_Result,
q.Msg_Date, q.Msgdirection_Id, q.Subsys_Cod, q.Queue_Create_Date, q.Link_Queue_Id, q.Perform_Object_Id, q.Prev_Queue_Direction, q.Prev_Msg_Date, q.Priority_Level
from artx_Proj.Message_Queue q ) que Where 1=1 <xsl:value-of select="$TableListFilter"/> and ROWnum=1
</PSTMT>
						</SQLStatement>
						<TotalStatement type="select" snum="1">select -1 as mycount from dual</TotalStatement>
					</SQLRequest>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
