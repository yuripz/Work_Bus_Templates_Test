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
							<PSTMT>select Template_Id,
       Interface_Id,
       Operation_Id,
       Msg_Type,
       Msg_Type_Own,
       Template_Name,
       Template_Dir,
       Source_Id,
       Destin_Id,
       Src_Subcod,
       Dst_Subcod,
       Lastmaker,
       TO_Char( Lastdate, 'YYYY-MM-DD HH24:MI:SS') Lastdate,
       (select t.ROWID from artx_Proj.Message_Types t where t.interface_id = m.Interface_Id and t.operation_id = m.Operation_Id ) Message_Types_ROW,
       case
          when Template_Dir = 'IN' and Source_Id != 0 and  Src_Subcod is not null then 
             ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = m.Source_Id and s.Subsys_Cod = m.Src_Subcod  )
          when Template_Dir = 'IN'  and Source_Id != 0 and  Src_Subcod is null then  
            ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = m.Source_Id and s.Subsys_Cod is null  )
            
          when Template_Dir = 'OUT' and Destin_Id != 0 and  Dst_Subcod is not null then 
             ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = m.Destin_Id and s.Subsys_Cod = m.Dst_Subcod  )
          when Template_Dir = 'OUT'  and Destin_Id != 0 and  Dst_Subcod is null then  
            ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = m.Destin_Id and s.Subsys_Cod is null  )              
          else NULL   
        end Templates_Msgdirection_Cod
  from artx_Proj.Message_Templates M where 1=1 <xsl:value-of select="$TableListFilter"/> and ROWnum=1</PSTMT>
						</SQLStatement>
						<TotalStatement type="select" snum="1">select -1 as mycount from dual</TotalStatement>
					</SQLRequest>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>