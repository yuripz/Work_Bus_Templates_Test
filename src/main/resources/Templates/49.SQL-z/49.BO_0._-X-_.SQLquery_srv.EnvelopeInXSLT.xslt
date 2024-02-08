<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<Envelope>
				<xsl:for-each select="Body">
					<xsl:for-each select="Parametrs">
						<xsl:variable name="originator" select="Report_Type"/>
						<xsl:choose>
							<xsl:when test="$originator= 'SELECT_FROM' ">
								<Header>
									<Context>
										<EventInitiator>TRY.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>TRY.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>491</BusOperationId>
									</Context>
								</Header>
								<Body>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'ARTX_PROJ.MESSAGE_DIRECTIONS' ">
								<Header>
									<Context>
										<EventInitiator>TRY.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>TRY.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>492</BusOperationId>
									</Context>
								</Header>
								<Body>
									<xsl:copy-of select="/Envelope/Body/Parametrs"/>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'do_PIPE_Response' ">
								<Header>
									<Context>
										<EventInitiator>TRY.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>TRY.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>493</BusOperationId>
									</Context>
								</Header>
								<Body>
								 <xsl:copy-of select="/Envelope/Body/Parametrs"/>
								</Body>
							</xsl:when>
							<xsl:otherwise>
								<Header>
									<Context>
										<EventInitiator>GET.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>GET.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>491</BusOperationId>
									</Context>
								</Header>
								<Body>
									<SQLquery_001>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</SQLquery_001>
								</Body>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
					<!-- Parametrs-->
				</xsl:for-each>
				<!-- Body -->
			</Envelope>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>