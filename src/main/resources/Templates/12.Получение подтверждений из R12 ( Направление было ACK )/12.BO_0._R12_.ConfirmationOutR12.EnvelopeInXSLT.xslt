<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<Envelope>
				<xsl:variable name="EventKey" select="Header/Context/EventKey"/>
				<xsl:variable name="BusOperationId" select="Header/Context/BusOperationId"/>
				<xsl:for-each select="Header">
					<Header>
						<xsl:for-each select="Context">
							<Context>
								<EventInitiator>R12</EventInitiator>
								<EventKey>
									<xsl:value-of select="EventKey"/>
								</EventKey>
								<Source>R12</Source>
								<Destination>HRMS</Destination>
								<xsl:choose>
<!-- 19,24,--> 
									<xsl:when test="$BusOperationId=19 ">
										<BusOperationId>1219</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=24 ">
										<BusOperationId>1224</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=27 ">
										<BusOperationId>1227</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=28 ">
										<BusOperationId>1228</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=76 ">
										<BusOperationId>1276</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=77 ">
										<BusOperationId>1277</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=78 ">
										<BusOperationId>1278</BusOperationId>
									</xsl:when>
<!-- 90,191  -->
									<xsl:when test="$BusOperationId=90 ">
										<BusOperationId>1290</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=191 ">
										<BusOperationId>1291</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=34 ">
										<BusOperationId>1234</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=72 ">
										<BusOperationId>1272</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=73 ">
										<BusOperationId>1273</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=32 ">
										<BusOperationId>1232</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=142 ">
										<BusOperationId>1242</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=47 ">
										<BusOperationId>1247</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=48 ">
										<BusOperationId>1248</BusOperationId>
									</xsl:when>
									<xsl:when test="$BusOperationId=195 ">
										<BusOperationId>1295</BusOperationId>
									</xsl:when>
									<xsl:otherwise>
										<BusOperationId>33333</BusOperationId>
									</xsl:otherwise>
								</xsl:choose>
							</Context>
						</xsl:for-each>
					</Header>
				</xsl:for-each>
				<xsl:for-each select="Body">
					<Body>
						<Confirmation>
							<EventKey>
								<xsl:value-of select="$EventKey"/>
							</EventKey>
							<BusOperationId>
								<xsl:value-of select="$BusOperationId"/>
							</BusOperationId>
							<xsl:choose>
<!-- 19,24,--> 
								<xsl:when test="$BusOperationId=19 ">
									<xsl:for-each select="ConfirmNCManageExtCancellationDocDeliveryInProjectRequest">
										<xsl:for-each select="CancelDocDetailConfirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="CancelDocDetailList">
												<DetailList>
													<xsl:for-each select="CancelDocDetail">
														<Detail>
															<DocNum>
																<xsl:value-of select="DocNum"/>
															</DocNum>
															<LineNum>
																<xsl:value-of select="LineNum"/>
															</LineNum>
															<CancelDocNum>
																<xsl:value-of select="CancelDocNum"/>
															</CancelDocNum>
															<CancelDocLineNum>
																<xsl:value-of select="CancelDocLineNum"/>
															</CancelDocLineNum>
															<ResultCode>
																<xsl:value-of select="ResultCode"/>
															</ResultCode>
															<Message>
																<xsl:value-of select="Message"/>
															</Message>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
									<xsl:when test="$BusOperationId=24 ">
									<xsl:for-each select="ConfirmManageExtCancellationDocReturnFromContractorRequest">
										<xsl:for-each select="CancelDocDetailConfirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="CancelDocDetailList">
												<DetailList>
													<xsl:for-each select="CancelDocDetail">
														<Detail>
															<DocNum>
																<xsl:value-of select="DocNum"/>
															</DocNum>
															<LineNum>
																<xsl:value-of select="LineNum"/>
															</LineNum>
															<CancelDocNum>
																<xsl:value-of select="CancelDocNum"/>
															</CancelDocNum>
															<CancelDocLineNum>
																<xsl:value-of select="CancelDocLineNum"/>
															</CancelDocLineNum>
															<ResultCode>
																<xsl:value-of select="ResultCode"/>
															</ResultCode>
															<Message>
																<xsl:value-of select="Message"/>
															</Message>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									</xsl:when>								
								<xsl:when test="$BusOperationId=27 ">
									<xsl:for-each select="ConfirmManageOrderRequest">
										<xsl:for-each select="Confirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=28 ">
									<xsl:for-each select="ConfirmManageOrderRequest">
										<xsl:for-each select="Confirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=76 ">
									<xsl:for-each select="ConfirmManageDocOrderRequest">
										<xsl:for-each select="ConfirmationDocOrder">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<DetailList>
												<Detail>
													<ExtOrderId>
														<xsl:value-of select="ExtOrderId"/>
													</ExtOrderId>
													<SysOrderNum>
														<xsl:value-of select="SysOrderNum"/>
													</SysOrderNum>
												</Detail>
											</DetailList>>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=78 ">
									<BusOperationId>1278</BusOperationId>
									<ResultCode>-1278</ResultCode>
									<Message>-1278</Message>
								</xsl:when>
								<xsl:when test="$BusOperationId=90 ">
									<xsl:for-each select="ConfirmNCCancelExtDocDeliveryInProjectRequest">
										<xsl:for-each select="CancelDocDetailConfirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="CancelDocDetailList">
												<DetailList>
													<xsl:for-each select="CancelDocDetail">
														<Detail>
															<DocNum>
																<xsl:value-of select="DocNum"/>
															</DocNum>
															<LineNum>
																<xsl:value-of select="LineNum"/>
															</LineNum>
															<CancelDocNum>
																<xsl:value-of select="CancelDocNum"/>
															</CancelDocNum>
															<CancelDocLineNum>
																<xsl:value-of select="CancelDocLineNum"/>
															</CancelDocLineNum>
															<ResultCode>
																<xsl:value-of select="ResultCode"/>
															</ResultCode>
															<Message>
																<xsl:value-of select="Message"/>
															</Message>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=191 ">
									<xsl:for-each select="ConfirmCancelDocTransferContractorRequest">
										<xsl:for-each select="CancelDocDetailConfirmation">
												<ResultCode>
													<xsl:value-of select="ResultCode"/>
												</ResultCode>
												<Message>
													<xsl:value-of select="Message"/>
												</Message>
												<xsl:for-each select="CancelDocDetailList">
													<DetailList>
														<xsl:for-each select="CancelDocDetail">
															<Detail>
																<DocNum>
																	<xsl:value-of select="DocNum"/>
																</DocNum>
																<LineNum>
																	<xsl:value-of select="LineNum"/>
																</LineNum>
																<CancelDocNum>
																	<xsl:value-of select="CancelDocNum"/>
																</CancelDocNum>
																<CancelDocLineNum>
																	<xsl:value-of select="CancelDocLineNum"/>
																</CancelDocLineNum>
																<ResultCode>
																	<xsl:value-of select="ResultCode"/>
																</ResultCode>
																<Message>
																	<xsl:value-of select="Message"/>
																</Message>
															</Detail>
														</xsl:for-each>
													</DetailList>
												</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=34 ">
									<xsl:for-each select="ConfirmManageProjectTaskRequest">
										<xsl:for-each select="ProjectTaskConfirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="ProjectTaskDetailList">
												<DetailList>
													<xsl:for-each select="ProjectTaskDetail">
														<Detail>
															<DocId>
																<xsl:value-of select="DocId"/>
															</DocId>
															<TaskId>
																<xsl:value-of select="TaskId"/>
															</TaskId>
															<TaskNumber>
																<xsl:value-of select="TaskNumber"/>
															</TaskNumber>
															<ResultCode>
																<xsl:value-of select="ResultCode"/>
															</ResultCode>
															<Message>
																<xsl:value-of select="Message"/>
															</Message>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=72 ">
									<xsl:for-each select="ConfirmManageCycleOrderRequest">
										<xsl:for-each select="NotFrameContract">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="NotFrameContractDetailList">
												<DetailList>
													<xsl:for-each select="NotFrameContractDetail">
														<Detail>
															<ExtOrderId>
																<xsl:value-of select="ExtOrderId"/>
															</ExtOrderId>
															<SysContractNum>
																<xsl:value-of select="SysContractNum"/>
															</SysContractNum>
															<xsl:for-each select="CycleList">
																<!--<DetailList> -->
																<CycleList>
																	<xsl:for-each select="Cycle">
																		<!--<Detail> -->
																		<Cycle>
																			<ExtCycleId>
																				<xsl:value-of select="ExtCycleId"/>
																			</ExtCycleId>
																			<CycleId>
																				<xsl:value-of select="CycleId"/>
																			</CycleId>
																			<StageId>
																				<xsl:value-of select="StageId"/>
																			</StageId>
																			<!--</Detail>-->
																		</Cycle>
																	</xsl:for-each>
																	<!--</DetailList>-->
																</CycleList>
															</xsl:for-each>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=73 ">
									<xsl:for-each select="ConfirmManageCycleOrderRequest">
										<xsl:for-each select="NotFrameContract">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="NotFrameContractDetailList">
												<DetailList>
													<xsl:for-each select="NotFrameContractDetail">
														<Detail>
															<ExtOrderId>
																<xsl:value-of select="ExtOrderId"/>
															</ExtOrderId>
															<SysContractNum>
																<xsl:value-of select="SysContractNum"/>
															</SysContractNum>
															<xsl:for-each select="CycleList">
																<!--<DetailList> -->
																<CycleList>
																	<xsl:for-each select="Cycle">
																		<!--<Detail> -->
																		<Cycle>
																			<ExtCycleId>
																				<xsl:value-of select="ExtCycleId"/>
																			</ExtCycleId>
																			<CycleId>
																				<xsl:value-of select="CycleId"/>
																			</CycleId>
																			<StageId>
																				<xsl:value-of select="StageId"/>
																			</StageId>
																			<!--</Detail>-->
																		</Cycle>
																	</xsl:for-each>
																	<!--</DetailList>-->
																</CycleList>
															</xsl:for-each>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=32 ">
									<xsl:for-each select="ConfirmManageInvoiceRequest">
										<xsl:for-each select="Confirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<PurchaseOrderId>
												<xsl:value-of select="PurchaseOrderId"/>
											</PurchaseOrderId>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=142 ">
									<xsl:for-each select="ConfirmCancelInvoiceRequest">
										<xsl:for-each select="Confirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=47 ">
									<xsl:for-each select="ConfirmManageInputOrderRequest">
										<xsl:for-each select="InputOrderConfirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="InputOrderDetailList">
												<DetailList>
													<xsl:for-each select="InputOrderDetail">
														<Detail>
															<SourceOrderId>
																<xsl:value-of select="SourceOrderId"/>
															</SourceOrderId>
															<DestinationOrderId>
																<xsl:value-of select="DestinationOrderId"/>
															</DestinationOrderId>
															<ResultCode>
																<xsl:value-of select="ResultCode"/>
															</ResultCode>
															<Message>
																<xsl:value-of select="Message"/>
															</Message>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=48 ">
									<xsl:for-each select="ConfirmManageProjectAssetsRequest">
										<xsl:for-each select="AssetsConfirmation">
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="AssetsDetailList">
												<DetailList>
													<xsl:for-each select="AssetsDetail">
														<Detail>
															<ObjectCode>
																<xsl:value-of select="ObjectCode"/>
															</ObjectCode>
															<AssetNumber>
																<xsl:value-of select="AssetNumber"/>
															</AssetNumber>
															<ResultCode>
																<xsl:value-of select="ResultCode"/>
															</ResultCode>
															<Message>
																<xsl:value-of select="Message"/>
															</Message>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:when test="$BusOperationId=195 ">
									<xsl:for-each select="ConfirmManageCIPRequest">
										<xsl:for-each select="CIPConfirmation">
											<!-- Подтверждение КИП -->
											<ResultCode>
												<xsl:value-of select="ResultCode"/>
											</ResultCode>
											<Message>
												<xsl:value-of select="Message"/>
											</Message>
											<xsl:for-each select="CIPDetailList">
												<!--  Детальная информация по загрузке пакета -->
												<DetailList>
													<xsl:for-each select="CIP">
														<Detail>
															<ExtCIPProjectId>
																<xsl:value-of select="ExtCIPProjectId"/>
															</ExtCIPProjectId>
															<SysZSKNum>
																<xsl:value-of select="SysZSKNum"/>
															</SysZSKNum>
															<ZSKId>
																<xsl:value-of select="ZSKId"/>
															</ZSKId>
															<StageType>
																<xsl:value-of select="StageType"/>
															</StageType>
														</Detail>
													</xsl:for-each>
												</DetailList>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:otherwise>
									<BusOperationId>33333</BusOperationId>
									<ResultCode>-33333</ResultCode>
									<Message>-33333</Message>
								</xsl:otherwise>
							</xsl:choose>
						</Confirmation>
					</Body>
				</xsl:for-each>
				<!-- Body -->
			</Envelope>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>