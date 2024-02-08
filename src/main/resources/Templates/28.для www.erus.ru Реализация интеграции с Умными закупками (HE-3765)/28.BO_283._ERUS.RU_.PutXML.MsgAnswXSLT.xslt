<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:variable name="outermostElementName" select="name(/*)"/>
	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="PutXmlResponse/PutXmlResult!=''">
				<Confirmation>
					<xsl:choose>
						<xsl:when test="/PutXmlResponse/PutXmlResult/Status!='Fail'">
							<ResultCode>0</ResultCode>
						</xsl:when>
						<xsl:otherwise>
							<ResultCode>60606</ResultCode>
						</xsl:otherwise>
					</xsl:choose>
					<Message>
						<xsl:value-of select="/PutXmlResponse/PutXmlResult/Messages/string[1]"/>
					</Message>
					<DetailList>
						<xsl:copy-of select="/PutXmlResponse/PutXmlResult"/>
					</DetailList>
				<Next>RESOUT</Next>
				</Confirmation>
			</xsl:when>
			<xsl:when test="Fault">
				<xsl:for-each select="Fault">
					<xsl:choose>
						<xsl:when test="ResultCode > 0">
							<Confirmation>
								<ResultCode>
									<xsl:value-of select="ResultCode"/>
								</ResultCode>
								<Message>
									<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
									<xsl:copy-of select="/Fault"/>
									<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
								</Message>
								<DetailList>
									<xsl:copy-of select="/Fault"/>
								</DetailList>
								<Next>RESOUT</Next>
							</Confirmation>
						</xsl:when>
						<xsl:otherwise>
							<Confirmation>
								<ResultCode>66066</ResultCode>
								<Message>
									<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
									<xsl:copy-of select="/Fault"/>
									<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
								</Message>
								<DetailList>
									<xsl:copy-of select="/Fault"/>
								</DetailList>
								<Next>RESOUT</Next>
							</Confirmation>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<Confirmation>
					<ResultCode>60606</ResultCode>
					<Message>� ������ �� �������� ��������� ������ ������� ������� ������� XML c ����������� �������� �����, ��.DetailList</Message>
					<DetailList>
						<xsl:copy-of select="/*"/>
					</DetailList>
					<Next>RESOUT</Next>
				</Confirmation>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>