<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="1.0">
	<xsl:output method="text"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="/">
		<xsl:text>{ "dhc":"</xsl:text>
		<xsl:value-of select="/GetPropertyByAddressGlobalID/AddressGlobalID"/>
		<xsl:text>",&#10;</xsl:text>
		<xsl:text>  "dt":"</xsl:text>
		<xsl:value-of select="/GetPropertyByAddressGlobalID/AddressGlobalID"/>
		<xsl:text>",&#10;</xsl:text>
		<xsl:text>  "hospital": {</xsl:text>
		<xsl:text> "id":"</xsl:text>
		<xsl:value-of select="/GetPropertyByAddressGlobalID/AddressGlobalID"/>
		<xsl:text>",  "name":"</xsl:text>SOAP.HRMS<xsl:text>"  },&#10;</xsl:text>
		<xsl:text> "box_name":"</xsl:text>
		<xsl:value-of select="/Notify_KASU_4_Box/Box_Name"/>
		<xsl:text>"  }</xsl:text>
	</xsl:template>
</xsl:stylesheet>