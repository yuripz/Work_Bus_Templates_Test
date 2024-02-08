<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:laun="http://launchcontext.application.techservice.argustelecom.ru/">
		<laun:getPageUrl>
			<xsl:for-each select="getPageUrl">
				<UserName>hermes_user</UserName>
				<ViewType>MapOfNeighbourDevelopment</ViewType>
				<Params>
					<entry>
						<key>LocationId</key>
						<value>
							<xsl:value-of select="Params/entry/value"/>
						</value>
					</entry>
					<entry>
						<key>LocationRegistr</key>
						<value>LID</value>
					</entry>
					<entry>
						<key>Technology</key>
						<value>FTTB,FTTH,XPON</value>
					</entry>
				</Params>
			</xsl:for-each>
		</laun:getPageUrl>
	</xsl:template>
</xsl:stylesheet>