<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <xsl:for-each select="Confirmation">
      <xsl:choose>
        <xsl:when test="ResultCode=0">
        <data>
          <xsl:for-each select="DetailList">
              <xsl:copy-of select="Record"/>
          </xsl:for-each>
          </data>
        </xsl:when>
        <xsl:when test="ResultCode=60606">
          <ResultCode>60606</ResultCode>
          <Message>
            <xsl:value-of select="Message"/>
          </Message>
        </xsl:when>
        <xsl:otherwise>
          <ResultCode>60606</ResultCode>
          <Message>Ошибка во входных данных</Message>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:for-each>
    <xsl:for-each select="Fault">
      <ResultCode>160606</ResultCode>
      <Text>AckXSLT: <xsl:value-of select="faultstring"/>
      </Text>
      <Next>ERRIN</Next>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>