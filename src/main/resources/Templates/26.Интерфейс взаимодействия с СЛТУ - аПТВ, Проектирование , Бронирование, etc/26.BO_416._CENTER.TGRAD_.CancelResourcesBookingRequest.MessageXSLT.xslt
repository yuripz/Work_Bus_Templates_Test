<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/" xmlns:proj="http://nri.rt.ru/ProjectProposalSevice">
  <proj:CancelResourcesBookingRequest>
  <xsl:for-each select="CancelResourcesBookingRequest">
    <proj:originator><xsl:value-of select="originator"/></proj:originator>
    <proj:receiver><xsl:value-of select="receiver"/></proj:receiver>
    <proj:payload>
    <xsl:for-each select="payload">
      <proj:reservationId><xsl:value-of select="reservationId"/></proj:reservationId>
                <proj:cancelReason><xsl:value-of select="cancelReason"/></proj:cancelReason>
    </xsl:for-each> <!-- payload -->    
    </proj:payload>
    </xsl:for-each> <!-- CancelResourcesBookingRequest-->    
  </proj:CancelResourcesBookingRequest>
  </xsl:template>

</xsl:stylesheet>