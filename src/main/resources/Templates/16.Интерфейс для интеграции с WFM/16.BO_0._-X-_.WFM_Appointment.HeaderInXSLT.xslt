<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:for-each select="Body">
				<xsl:for-each select="notifyAppointmentRequest">
					<xsl:variable name="originator" select="originator"/>
					<xsl:variable name="receiver" select="receiver"/>
					<xsl:choose>
						<xsl:when test="$originator= 'SZ.WFMARGUS' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver!= 'HRMS_O2O'">
									<Context>
										<EventInitiator>SZ.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver= 'HRMS_O2O'">
									<Context>
										<EventInitiator>SZ.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARGUS</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/Reschedule">
									<Context>
										<EventInitiator>SZ.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/AssignFitter">
									<Context>
										<EventInitiator>SZ.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/UpdateStatus">
									<Context>
										<EventInitiator>SZ.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>SZ.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'VLG.WFMARGUS' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver!= 'HRMS_O2O'">
									<Context>
										<EventInitiator>VLG.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver= 'HRMS_O2O'">
									<Context>
										<EventInitiator>VLG.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARGUS</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/Reschedule">
									<Context>
										<EventInitiator>VLG.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/AssignFitter">
									<Context>
										<EventInitiator>VLG.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/UpdateStatus">
									<Context>
										<EventInitiator>VLG.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>VLG.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'SBR.WFM' ">
							<Context>
								<EventInitiator>SBR.WFM</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>SBR.WFM</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>161</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.WFMARGUS' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver!= 'HRMS_O2O'">
									<Context>
										<EventInitiator>URAL.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver= 'HRMS_O2O'">
									<Context>
										<EventInitiator>URAL.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/Reschedule">
									<Context>
										<EventInitiator>URAL.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/AssignFitter">
									<Context>
										<EventInitiator>URAL.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/UpdateStatus">
									<Context>
										<EventInitiator>URAL.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>URAL.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'SOUTH.WFMARGUS' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver!= 'HRMS_O2O'">
									<Context>
										<EventInitiator>SOUTH.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/CompleteAppointment and $receiver= 'HRMS_O2O'">
									<Context>
										<EventInitiator>SOUTH.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARGUS</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/Reschedule">
									<Context>
										<EventInitiator>SOUTH.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/AssignFitter">
									<Context>
										<EventInitiator>SOUTH.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:when test="wfmNotification/UpdateStatus">
									<Context>
										<EventInitiator>SOUTH.WFMARGUS</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARGUS</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>161</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>SOUTH.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.WFMARO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment/orderComments">
									<Context>
										<EventInitiator>URAL.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>URAL.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>URAL.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'SZ.WFMARO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment/orderComments">
									<Context>
										<EventInitiator>SZ.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>SZ.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>SZ.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SZ.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'SOUTH.WFMARO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment/orderComments">
									<Context>
										<EventInitiator>SOUTH.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>SOUTH.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>SOUTH.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SOUTH.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'VLG.WFMARO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment/orderComments">
									<Context>
										<EventInitiator>VLG.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>VLG.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>VLG.WFMARO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>VLG.WFMARO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'SBR.WFMTGO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment">
									<Context>
										<EventInitiator>SBR.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SBR.WFMTGO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>SBR.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SBR.WFMTGO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>SBR.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>SBR.WFMTGO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'CENTR.WFMTGO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment">
									<Context>
										<EventInitiator>CENTR.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>CENTR.WFMTGO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>CENTR.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>CENTR.WFMTGO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>CENTR.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>CENTR.WFMTGO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'DV.WFMTGO2O' ">
							<xsl:choose>
								<xsl:when test="wfmNotification/UpdateAppointment">
									<Context>
										<EventInitiator>DV.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>DV.WFMTGO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>171</BusOperationId>
									</Context>
								</xsl:when>
								<!-- 172 NotifyO2OComplete -->
								<xsl:when test="wfmNotification/CompleteAppointment">
									<Context>
										<EventInitiator>DV.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>DV.WFMTGO2O</Source>
										<BusOperationId>172</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<Context>
										<EventInitiator>DV.WFMTGO2O</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>DV.WFMTGO2O</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>1699</BusOperationId>
									</Context>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<Context>
								<EventInitiator>HRMS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>HRMS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>1699</BusOperationId>
							</Context>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!-- SendCommentRequest -->
			</xsl:for-each>
			<!-- Body -->
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
