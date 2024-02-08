<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/">
  <xsl:for-each select="Confirmation">
<Response>
	<resultCode><xsl:value-of select="ResultCode"/></resultCode>
	<resultMessage><xsl:value-of select="Message"/></resultMessage>
	<payLoad>
		<_usrToken><xsl:value-of select="PayLoad/AppResponse"/></_usrToken>
		<Usr_ID><xsl:value-of select="PayLoad/Usr_ID"/></Usr_ID>
		<Usr_Name><xsl:value-of select="PayLoad/Usr_Name"/></Usr_Name>
		<Usr_Login><xsl:value-of select="PayLoad/Login"/></Usr_Login>
		<Role_Name><xsl:value-of select="PayLoad/Role_Name"/></Role_Name>
		<Role_Id><xsl:value-of select="PayLoad/Role_ID"/></Role_Id>
		<Role_Label><xsl:value-of select="PayLoad/Role_Label"/></Role_Label>
		<token><xsl:value-of select="PayLoad/AppResponse"/></token>
		<usrId><xsl:value-of select="PayLoad/Usr_ID"/></usrId>
		<usrName><xsl:value-of select="PayLoad/Usr_Name"/></usrName>
	</payLoad>
</Response>
  </xsl:for-each>
  <xsl:for-each select="Fault">
<Fault>
   <faultcode>Server problem 30.BO-3001.do_Login-4-Token <xsl:value-of select="ResultCode"/></faultcode> 
   <faultstring><xsl:value-of select="ResultMessage"/></faultstring> 
</Fault>
  </xsl:for-each>
 </xsl:template>
</xsl:stylesheet>