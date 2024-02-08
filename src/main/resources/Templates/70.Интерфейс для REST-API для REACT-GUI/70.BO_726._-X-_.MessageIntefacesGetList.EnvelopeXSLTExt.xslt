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
                    <xsl:when test="RecordFilterFieldName ='Msg_Direction' ">
                      <xsl:value-of select="concat( RecordFilterFieldName, ' = ', $Apos , RecordFilterFieldValue , $Apos )"/>
                    </xsl:when>
                    <xsl:when test="RecordFilterFieldName ='Msg_Type' ">
                      <xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
                    </xsl:when>
                    <xsl:when test="RecordFilterFieldName ='Msg_Typedesc' ">
                      <xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="concat( RecordFilterFieldName, '  =  ', RecordFilterFieldValue) "/>
                    </xsl:otherwise>
                  </xsl:choose>
                </xsl:variable>
                <xsl:value-of select="$TableAddFilter"/>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:variable>
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
            <xsl:variable name="OrderBy" select="Order_By"/>
            <xsl:variable name="ColumnOrderBy" select="Sort"/>
            <xsl:variable name="TableOrderBy">
              <xsl:choose>
                <xsl:when test="Sort ='Rowid' ">operation_id
                <!--<xsl:value-of select="$OrderBy"/>-->
                </xsl:when>
                <xsl:otherwise>
                  <!--<xsl:value-of select="concat('  ',$ColumnOrderBy, '  ', $OrderBy, ' ', $OrderBy) "/>-->
                  <xsl:value-of select="concat('  ', $ColumnOrderBy, '  ', $OrderBy) "/>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:variable>
            <TableOrderBy>
              <xsl:value-of select="$TableOrderBy"/>
            </TableOrderBy>
            <SQLStatement type="select" snum="1">
              <PSTMT>select ROWID, 
  interface_id   ,
  operation_id  ,
  msg_type    ,
  msg_type_own  ,
  msg_typedesc  ,
  msg_direction  ,
  msg_handler   ,
  url_soap_send  ,
  url_soap_ack    ,
  max_retry_count ,
  max_retry_time  ,
  TO_Char(last_update_dt, 'YYYY-MM-DD HH24:MI:SS' ) as last_update_dt
from artx_Proj.Message_Types
 where operation_id=0 <xsl:value-of select="$TableListFilter"/>
Order by  <xsl:value-of select="$TableOrderBy"/> , operation_id OFFSET <xsl:value-of select="$FirstRecordNo"/> ROWS
FETCH NEXT <xsl:value-of select="$PageSize"/> ROWS only</PSTMT>
            </SQLStatement>
            <TotalStatement type="select" snum="1">select count(*) from artx_Proj.Message_Types where operation_id=0 <xsl:value-of select="$TableListFilter"/>
            </TotalStatement>
          </SQLRequest>
        </xsl:for-each>
      </xsl:for-each>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
