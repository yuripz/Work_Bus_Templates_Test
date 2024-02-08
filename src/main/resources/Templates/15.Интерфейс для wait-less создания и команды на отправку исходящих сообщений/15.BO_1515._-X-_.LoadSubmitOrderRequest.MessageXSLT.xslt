<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="submitOrderRequest">
			<submitOrderRequest>
				<originator>URAL.CRMB2B</originator>
				<receiver>HRMS</receiver>
				<!--<callbackEndpoint>URAL.CRMB2B</callbackEndpoint>-->
				<mode>ASYNC</mode>
				<requestId>LOADTEST.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/></requestId>
				<order>
					<orderId>COM.B2B.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/></orderId>
					<orderType>CHECK</orderType>
					<orderAttributes>
						<attribute name="CustomerProjectId">COM.B2B.LOADTEST.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/></attribute>
						<attribute name="CustomerProjectName">COM.B2B. LOADTEST.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/></attribute>
					</orderAttributes>
					<orderComments>
						<Comment>
							<text>Нагрузочное тестирование Гермес ПредПрод</text>
						</Comment>
					</orderComments>
					<orderDate>2019-12-29T00:00:00.000Z</orderDate>
					<orderParties>
						<orderParty>
							<partyRole>ACCOUNT</partyRole>
							<partyId>747732</partyId>
							<partyName>574002385657</partyName>
						</orderParty>
						<orderParty>
							<partyRole>CLIENT</partyRole>
							<partyId>747732</partyId>
							<partyName>Общество с ограниченной ответственностью Мастер-Студия Август</partyName>
							<partyAttributes>
								<attribute name="CustomerPhone">9512400444</attribute>
								<attribute name="CustomerEmail"/>
								<attribute name="CustomerSegment"/>
								<attribute name="CustomerMacroSegment"/>
								<attribute name="CustomerKPP">745501001</attribute>
								<attribute name="CustomerTaxId">7445034536</attribute>
								<attribute name="CustomerContactsName">Осипенко Станислав</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>INITIATOR</partyRole>
							<partyId>Belonogova-ev@ural.rt.ru</partyId>
							<partyName>БЕЛОНОГОВА ЕКАТЕРИНА ВИКТОРОВНА</partyName>
							<partyAttributes>
								<attribute name="email">belonogova-ev@ural.rt.ru</attribute>
								<attribute name="phone">9222092505</attribute>
								<attribute name="employeeNumber">216000</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>SALES</partyRole>
							<partyId>poletavkina-sv@ural.rt.ru</partyId>
							<partyName>Полетавкина Светлана Владимировна</partyName>
							<partyAttributes>
								<attribute name="email">poletavkina-sv@ural.rt.ru</attribute>
								<attribute name="phone">9222092505</attribute>
								<attribute name="employeeNumber">371826</attribute>
							</partyAttributes>
						</orderParty>
					</orderParties>
					<orderItems>
					<orderItem>
    						<orderItemId>COM.B2B.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/>-1-1</orderItemId>
    						<orderItemAction>CREATE</orderItemAction>
    						<orderItemCategory>CFS</orderItemCategory>
    						<orderItemSpecification>
     							<catalogId>SC</catalogId>
     							<specId>cfs_internet</specId>
    							</orderItemSpecification>
    						<orderItemAttributes>
     							<attribute name="ServiceSpeedValue">10</attribute>
     							<attribute name="ServiceSpeedMeasure">Мб/с</attribute>
    						</orderItemAttributes>
    						<orderItemBillingInfo>
     							<attribute name="SinglePayment">1500.0</attribute>
     							<attribute name="MonthRevenue">2583.33</attribute>
    						</orderItemBillingInfo>
						</orderItem>
						<orderItem>
							<orderItemId>COM.B2B.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/>-1</orderItemId>
							<orderItemAction>CREATE</orderItemAction>
							<orderItemCategory>CFS</orderItemCategory>
							<orderItemSpecification>
								<catalogId>SC</catalogId>
								<specId>cfs_copper_access</specId>
								<specVersion>1.0</specVersion>
								<specName>Доступ по медной линии</specName>
							</orderItemSpecification>
							<orderItemLocation>
								<locationId><xsl:value-of select="/submitOrderRequest/payload/globalId"/></locationId>
								<locationCategory>STRICT</locationCategory>
								<locationRegister>GID</locationRegister>
								<locationAttributes>
									<attribute name="locationPremises">Офис 1</attribute>
									<attribute name="AddrComment">Вестибюль второго этажа</attribute>
								</locationAttributes>
							</orderItemLocation>
							<orderItemAttributes>
								<attribute name="technology"/>
							</orderItemAttributes>
							<orderItemAppointmentId/>
						</orderItem>
						<orderItem>
							<orderItemId>COM.B2B.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/>-2</orderItemId>
							<orderItemAction>CREATE</orderItemAction>
							<orderItemCategory>CFS</orderItemCategory>
							<orderItemSpecification>
								<catalogId>SC</catalogId>
								<specId>cfs_TDM_telephone_service</specId>
								<specVersion>1.0</specVersion>
								<specName>Местная телефонная связь</specName>
							</orderItemSpecification>
							<orderItemAttributes/>
							<orderItemReferences>
								<reference name="cfs_copper_access" specId="cfs_copper_access" status="AC" isChanged="false">COM.B2B.<xsl:value-of select="/submitOrderRequest/payload/MessageID"/>-1</reference>
							</orderItemReferences>
						</orderItem>
					</orderItems>
				</order>
			</submitOrderRequest>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>