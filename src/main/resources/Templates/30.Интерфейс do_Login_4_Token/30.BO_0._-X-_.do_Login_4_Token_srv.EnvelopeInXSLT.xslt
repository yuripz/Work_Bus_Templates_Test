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
         <BusOperationId>3001</BusOperationId>
      </Context>
   </Header>
   <Body>
   <do_Login_4_Token>
	<xsl:copy-of select="Envelope/Body"/>
   </do_Login_4_Token>
  </Body>   
</Envelope>
	</xsl:template>
</xsl:stylesheet>