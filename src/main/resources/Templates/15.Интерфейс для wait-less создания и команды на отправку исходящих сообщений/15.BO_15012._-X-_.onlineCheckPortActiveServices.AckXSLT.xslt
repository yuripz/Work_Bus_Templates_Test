<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/">
  <xsl:for-each select="Confirmation">
<!--<onlineWsSaveGeoObjectResponse>-->
	<ResultCode><xsl:value-of select="ResultCode"/></ResultCode>
	<ResultMessage><xsl:value-of select="Message"/></ResultMessage>
		<!-- <Queue_ID><xsl:value-of select="PayLoad/AppResponse"/></Queue_ID> -->
	<payload>
		<serviceLocation>String</serviceLocation>
		<serviceList>
			<service>
				<client>
					<partyRole>CLIENT</partyRole>
					<partyId>String</partyId>
					<partyName>String</partyName>
					<partyAttributes>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
					</partyAttributes>
				</client>
				<technology>String</technology>
				<serviceItem>
					<serviceItemId>String</serviceItemId>
					<serviceItemCategory>Product</serviceItemCategory>
					<serviceItemName>String</serviceItemName>
					<serviceItemType>String</serviceItemType>
					<serviceItemParentId>String</serviceItemParentId>
				</serviceItem>
			</service>
			<service>
				<client>
					<partyRole>INITIATOR</partyRole>
					<partyId>String</partyId>
					<partyName>String</partyName>
					<partyAttributes>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
					</partyAttributes>
				</client>
				<technology>String</technology>
				<serviceItem>
					<serviceItemId>String</serviceItemId>
					<serviceItemCategory>CFS</serviceItemCategory>
					<serviceItemName>String</serviceItemName>
					<serviceItemType>String</serviceItemType>
					<serviceItemParentId>String</serviceItemParentId>
				</serviceItem>
			</service>
			<service>
				<client>
					<partyRole>SALES</partyRole>
					<partyId>String</partyId>
					<partyName>String</partyName>
					<partyAttributes>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
					</partyAttributes>
				</client>
				<technology>String</technology>
				<serviceItem>
					<serviceItemId>String</serviceItemId>
					<serviceItemCategory>CRFS</serviceItemCategory>
					<serviceItemName>String</serviceItemName>
					<serviceItemType>String</serviceItemType>
					<serviceItemParentId>String</serviceItemParentId>
				</serviceItem>
			</service>
			<service>
				<client>
					<partyRole>ACCOUNT</partyRole>
					<partyId>String</partyId>
					<partyName>String</partyName>
					<partyAttributes>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
					</partyAttributes>
				</client>
				<technology>String</technology>
				<serviceItem>
					<serviceItemId>String</serviceItemId>
					<serviceItemCategory>RFS</serviceItemCategory>
					<serviceItemName>String</serviceItemName>
					<serviceItemType>String</serviceItemType>
					<serviceItemParentId>String</serviceItemParentId>
				</serviceItem>
			</service>
			<service>
				<client>
					<partyRole>CONTACT</partyRole>
					<partyId>String</partyId>
					<partyName>String</partyName>
					<partyAttributes>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
						<attribute name="String" isChanged="false" status="CE">text</attribute>
						<attribute name="String" isChanged="false" status="AC">text</attribute>
					</partyAttributes>
				</client>
				<technology>String</technology>
				<serviceItem>
					<serviceItemId>String</serviceItemId>
					<serviceItemCategory>Product</serviceItemCategory>
					<serviceItemName>String</serviceItemName>
					<serviceItemType>String</serviceItemType>
					<serviceItemParentId>String</serviceItemParentId>
				</serviceItem>
			</service>
		</serviceList>
		<resourceList>
			<resource>
				<serviceItemId>String</serviceItemId>
				<listNumber>String</listNumber>
				<ldn>String</ldn>
				<listNumberTypeId>String</listNumberTypeId>
				<resourceSpecificationList>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
				</resourceSpecificationList>
			</resource>
			<resource>
				<serviceItemId>String</serviceItemId>
				<listNumber>String</listNumber>
				<ldn>String</ldn>
				<listNumberTypeId>String</listNumberTypeId>
				<resourceSpecificationList>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
				</resourceSpecificationList>
			</resource>
			<resource>
				<serviceItemId>String</serviceItemId>
				<listNumber>String</listNumber>
				<ldn>String</ldn>
				<listNumberTypeId>String</listNumberTypeId>
				<resourceSpecificationList>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
				</resourceSpecificationList>
			</resource>
			<resource>
				<serviceItemId>String</serviceItemId>
				<listNumber>String</listNumber>
				<ldn>String</ldn>
				<listNumberTypeId>String</listNumberTypeId>
				<resourceSpecificationList>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
				</resourceSpecificationList>
			</resource>
			<resource>
				<serviceItemId>String</serviceItemId>
				<listNumber>String</listNumber>
				<ldn>String</ldn>
				<listNumberTypeId>String</listNumberTypeId>
				<resourceSpecificationList>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
					<resourceSpecification>
						<resourceId>String</resourceId>
						<resourceType>String</resourceType>
						<resourceName>String</resourceName>
						<resourceParentId>String</resourceParentId>
						<resourceAttributes>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
							<attribute name="String" isChanged="false" status="AC">text</attribute>
							<attribute name="String" isChanged="false" status="CE">text</attribute>
						</resourceAttributes>
					</resourceSpecification>
				</resourceSpecificationList>
			</resource>
		</resourceList>
	</payload>
<!--</onlineWsSaveGeoObjectResponse>-->
  </xsl:for-each>
  <xsl:for-each select="Fault">
<!--<Result>-->
   <ResultCode><xsl:value-of select="ResultCode"/></ResultCode> 
   <ResultMessage>Fault:<xsl:value-of select="Message"/></ResultMessage> 
<!--</Result>-->
  </xsl:for-each>
 </xsl:template>
</xsl:stylesheet>