<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<Envelope>
				<xsl:for-each select="Body">
					<xsl:for-each select="Parametrs">
						<xsl:variable name="originator" select="ServiceType"/>
						<xsl:choose>
							<xsl:when test="$originator= 'tryCheckAccessCapability' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>151</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryCheckAccessCapability>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryCheckAccessCapability>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'tryBookResourcesForInstallation' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>152</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryBookResourcesForInstallation>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryBookResourcesForInstallation>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'tryCancelResourcesBooking' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>153</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryCancelResourcesBooking>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryCancelResourcesBooking>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'tryCheckClientActiveServices' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>154</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryCheckClientActiveServices>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryCheckClientActiveServices>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'tryLastBookingRequestStatus' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>155</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryLastBookingRequestStatus>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryLastBookingRequestStatus>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'tryLastBookingCancelRequestStatus' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>156</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryLastBookingCancelRequestStatus>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryLastBookingCancelRequestStatus>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineCheckAccessCapability' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>157</BusOperationId>
									</Context>
								</Header>
								<Body>
									<tryCheckAccessCapability>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</tryCheckAccessCapability>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineWsSearchAddrElByFullName' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>158</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineWsSearchAddrElByFullName>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineWsSearchAddrElByFullName>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineCreateWsSaveGeoObject' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1501</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineCreateWsSaveGeoObject>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineCreateWsSaveGeoObject>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineCreate4MapGeoObject' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1506</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineCreate4MapGeoObject>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineCreate4MapGeoObject>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineCreateGeoObjectSync' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1506</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineCreate4MapGeoObject>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineCreate4MapGeoObject>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineWsSaveGeoObject' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>159</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineWsSaveGeoObject>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineWsSaveGeoObject>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineCheckDevicePorts' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>15011</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineCheckDevicePorts>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineCheckDevicePorts>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineCheckPortActiveServices' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>15012</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineCheckPortActiveServices>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineCheckPortActiveServices>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'sendCommentO2OAppointment' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1504</BusOperationId>
									</Context>
								</Header>
								<Body>
									<sendCommentO2OAppointment>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</sendCommentO2OAppointment>
								</Body>
							</xsl:when>							
							<xsl:when test="$originator= 'onlineAddressElementGlobalIDData' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1505</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineAddressElementGlobalIDData>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineAddressElementGlobalIDData>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'asyncPutDocument2DWH' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1507</BusOperationId>
									</Context>
								</Header>
								<Body>
									<asyncPutDocument2DWH>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</asyncPutDocument2DWH>
								</Body>
							</xsl:when>					
							<xsl:when test="$originator= 'getWebNRICardViewURL' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1510</BusOperationId>
									</Context>
								</Header>
								<Body>
									<getWebNRICardViewURL>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</getWebNRICardViewURL>
								</Body>
							</xsl:when>
							<xsl:when test="$originator= 'onlineManualBookResources' ">
								<Header>
									<Context>
										<EventInitiator>HTTP.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>HTTP.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1517</BusOperationId>
									</Context>
								</Header>
								<Body>
									<onlineManualBookResources>
										<xsl:copy-of select="/Envelope/Body/Parametrs"/>
									</onlineManualBookResources>
								</Body>
							</xsl:when>																
																
							<xsl:otherwise>
								<Header>
									<Context>
										<EventInitiator>GET.HRMS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>GET.HRMS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>999</BusOperationId>
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