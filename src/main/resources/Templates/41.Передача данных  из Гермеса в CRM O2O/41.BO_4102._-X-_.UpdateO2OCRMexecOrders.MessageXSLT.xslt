<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<UpdateO2OCRMexecOrders>
			<from>HRMS</from>
			<to>CRM B2O</to>
			<id>
				<xsl:value-of select="/UpdateO2OCRMexecOrders/id"/>
			</id>
			<xsl:for-each select="UpdateO2OCRMexecOrders">
				<number>
					<xsl:value-of select="number"/>
				</number>
				<externalOrderId>
					<xsl:value-of select="externalOrderId"/>
				</externalOrderId>
				<executorFio>
                                        <xsl:value-of select="executorFio"/>
                                </executorFio>
				<executorPhone>
					<xsl:value-of select="executorPhone"/>
				</executorPhone>
				<executorEmail>
					<xsl:value-of select="executorEmail"/>
				</executorEmail>
			</xsl:for-each>
		</UpdateO2OCRMexecOrders>
	</xsl:template>
</xsl:stylesheet>