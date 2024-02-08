<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:etc="http://etc.ru">
		<etc:PutXml>
			<etc:acLogin>germes</etc:acLogin>
			<etc:acPassword>1Qq</etc:acPassword>
			<etc:escode>rostel</etc:escode>
			<etc:uri>GroupAct#<xsl:value-of select="/GroupAct/@QUEUE_ID"/>:<xsl:value-of select="/GroupAct/NumberReg"/>
			</etc:uri>
			<etc:content>
				<GroupAct>
					<NumberReg>
						<xsl:value-of select="/GroupAct/NumberReg"/>
					</NumberReg>
					<DocDate>
						<xsl:value-of select="/GroupAct/DocDate"/>
					</DocDate>
					<Name>
						<xsl:value-of select="/GroupAct/Name"/>
					</Name>
					<xsl:copy-of select="/GroupAct/Customer"/>
					<NumberOrder>
						<xsl:value-of select="/GroupAct/NumberOrder"/>
					</NumberOrder>
					<IDGroupAct>
						<xsl:value-of select="/GroupAct/IDGroupAct"/>
					</IDGroupAct>
					<ReportPeriodBeginDate>
						<xsl:value-of select="/GroupAct/ReportPeriodBeginDate"/>
					</ReportPeriodBeginDate>
					<ReportPeriodEndDate>
						<xsl:value-of select="/GroupAct/ReportPeriodEndDate"/>
					</ReportPeriodEndDate>
					<xsl:copy-of select="/GroupAct/Act"/>
				</GroupAct>
			</etc:content>
		</etc:PutXml>
	</xsl:template>
</xsl:stylesheet>