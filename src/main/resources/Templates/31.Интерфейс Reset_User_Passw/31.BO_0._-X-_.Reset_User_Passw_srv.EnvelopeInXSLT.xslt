<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<Envelope>
   <Header>
      <Context>
         <EventInitiator>GET.HRMS</EventInitiator>
         <EventKey>-1</EventKey>
         <Source>GET.HRMS</Source>
         <Destination>HRMS</Destination>
         <BusOperationId>3101</BusOperationId>
      </Context>
   </Header>
   <Body>
   <Reset_User_Passw>
	<xsl:copy-of select="Envelope/Body"/>
   </Reset_User_Passw>
  </Body>   
</Envelope>
	</xsl:template>
</xsl:stylesheet>