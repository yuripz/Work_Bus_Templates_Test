<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:variable name="MsgId" select="Header/MsgId"/>
			<xsl:for-each select="Body">
				<xsl:for-each select="Parametrs">
					<xsl:variable name="Apos">'</xsl:variable>
					<xsl:variable name="TableListFilter">
						<xsl:for-each select="RecordFilters">
							<xsl:for-each select="RecordFilter">
								<xsl:value-of select="concat(' ',  'and', ' ') "/>
								<xsl:variable name="TableAddFilter">
									<xsl:choose>
										<xsl:when test="RecordFilterFieldName ='Msg_Type' ">
											<xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Queue_Direction' ">
											<xsl:value-of select="concat( RecordFilterFieldName, ' =  ', $Apos , RecordFilterFieldValue , $Apos )"/>
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Template_Name' ">
											<xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Template_Dir' ">
											<xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Queue_Date' ">
											<xsl:choose>
												<xsl:when test="OrderBy='ASC' ">
													<xsl:value-of select="concat( RecordFilterFieldName, ' &gt;= to_Date( ', $Apos , RecordFilterFieldValue,  ' 23:59:59'  , $Apos, ', ' , $Apos, 'YYYY-MM-DD HH24:MI:SS', $Apos, ' )'  )"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="concat( RecordFilterFieldName, ' &lt;=to_Date( ', $Apos , RecordFilterFieldValue,  ' 23:59:59'  , $Apos, ', ' , $Apos, 'YYYY-MM-DD HH24:MI:SS', $Apos, ' )'  )"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Rownum' ">1=1
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Operation_Id' "><xsl:value-of select="concat( RecordFilterFieldName, ' = ', RecordFilterFieldValue) "/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="OrderBy='ASC' ">
													<xsl:value-of select="concat( RecordFilterFieldName, ' &gt;= ', RecordFilterFieldValue) "/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="concat( RecordFilterFieldName, ' &lt;= ', RecordFilterFieldValue) "/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:value-of select="$TableAddFilter"/>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:variable>
					<xsl:variable name="RownumParamValue">
						<xsl:for-each select="RecordFilters">
							<xsl:for-each select="RecordFilter">
								<xsl:choose>
									<xsl:when test="RecordFilterFieldName ='Rownum' ">
										<xsl:value-of select="RecordFilterFieldValue"/>
									</xsl:when>
									<xsl:otherwise>
										</xsl:otherwise>
								</xsl:choose>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:variable>
					<xsl:variable name="RownumFilterValue">
						<xsl:if test="$RownumParamValue='' ">100</xsl:if>
						<xsl:if test="$RownumParamValue!='' ">
							<xsl:value-of select="$RownumParamValue"/>
						</xsl:if>
					</xsl:variable>
					<!--<RownumFilter><xsl:value-of select="$RownumFilterValue"/></RownumFilter>-->
					<SQLRequest>
						<xsl:variable name="FirstRecord2Fetch" select="FirstRecord2Fetch"/>
						<FirstRecord2Fetch>
							<xsl:value-of select="$FirstRecord2Fetch"/>
						</FirstRecord2Fetch>
						<xsl:variable name="PageSize" select="LastRecord2Fetch - $FirstRecord2Fetch"/>
						<PageSize>
							<xsl:value-of select="$PageSize"/>
						</PageSize>
						<xsl:variable name="FirstRecordNo" select="$FirstRecord2Fetch"/>
						<FirstRecordNo>
							<xsl:value-of select="$FirstRecordNo"/>
						</FirstRecordNo>
						<xsl:variable name="OrderBy" select="OrderBy"/>
						<xsl:variable name="ColumnOrderBy" select="Sort"/>
						<xsl:variable name="TableOrderBy">
							<xsl:value-of select="concat('  ', $ColumnOrderBy, '  ', $OrderBy) "/>
						</xsl:variable>
						<TableOrderBy>
							<xsl:value-of select="$TableOrderBy"/>
						</TableOrderBy>
						<SQLStatement type="select" snum="1">
							<PSTMT>select * from ( select q.Queue_Id, 
     (select t.ROWID from artx_Proj.Message_Types t 
       where t.Msg_Type = q.Msg_Type and t.operation_id = q.Operation_Id ) Message_Types_ROW, 
        case
          when q.Msgdirection_Id != 0 and  q.Subsys_Cod is not null then 
             ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = q.Msgdirection_Id and s.Subsys_Cod = q.Subsys_Cod  )
          when q.Msgdirection_Id != 0 and  q.Subsys_Cod is null then  
            ( select Msgdirection_Cod from artx_Proj.Message_Directions s where s.Msgdirection_Id = q.Msgdirection_Id and s.Subsys_Cod is null  )             
          else NULL   
        end Queue_Msgdirection_Cod   ,
q.Queue_Direction, q.Queue_Date, q.Msg_Status, q.Msg_Type, q.Operation_Id, 
q.Msg_Type_Own, NVL(q.Msg_Reason, ' ') as Msg_Reason, NVL(q.Msg_Result, ' ') as Msg_Result,
q.Msg_Date, q.Msgdirection_Id, q.Subsys_Cod, q.Queue_Create_Date, q.Link_Queue_Id, q.Perform_Object_Id, q.Prev_Queue_Direction, q.Prev_Msg_Date, q.Priority_Level
from artx_Proj.Message_Queue q Where 1=1 <xsl:value-of select="$TableListFilter"/>
Order by  <xsl:value-of select="$TableOrderBy"/> ) que where ROWNUM &lt;=<xsl:value-of select="$RownumFilterValue"/>
OFFSET <xsl:value-of select="$FirstRecordNo"/> ROWS FETCH NEXT <xsl:value-of select="$PageSize"/> ROWS only</PSTMT>
						</SQLStatement>
						<TotalStatement type="select" snum="1">select min(count_r) from (
select count(*) count_r from artx_Proj.Message_Queue where 1=1 <xsl:value-of select="$TableListFilter"/>
union all select <xsl:value-of select="$RownumFilterValue"/> as count_r from dual) cnt
						</TotalStatement>
					</SQLRequest>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
