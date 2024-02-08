<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<urn1:ConfirmManageUnitsDicRequest xmlns:urn1="urn:ru:rt:fuip:confirmationmessageinr12">
<xsl:for-each select="Confirmation">
 <Confirmation>
  <ResultCode><xsl:value-of select="ResultCode"/></ResultCode>
 <xsl:if test="ResultCode != 0">
  <Message><xsl:value-of select="Message"/></Message>
 </xsl:if>  
 </Confirmation>
</xsl:for-each>
</urn1:ConfirmManageUnitsDicRequest>
</xsl:template>
</xsl:stylesheet>