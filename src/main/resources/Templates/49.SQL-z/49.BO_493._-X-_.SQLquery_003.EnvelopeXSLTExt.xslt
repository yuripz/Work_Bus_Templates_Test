<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:for-each select="Header">
				<SQLRequest>
					<SQLStatement type="select" snum="1">
						<PSTMT>SELECT * FROM  TABLE( artx_proj.x_refcursor.do_PIPE_Response( ?,?,
                                               333,
                                                'p_err_str- eeeeeeeeerererer',
                                                'p_result_string -- rrrrrrrrrrrrr',
                                                'p_add_1_tag', 'p_add_1_value => :p_add_1_value',
                                                'p_add_2_tag => :p_add_2_tag',
                                                'p_add_2_value => :p_add_2_value',
                                                'p_add_3_tag => :p_add_3_tag',
                                                'p_add_3_value => :p_add_3_value',
                                                'p_add_4_tag => :p_add_4_tag',
                                                'p_add_4_value => :p_add_4_value',
                                                'p_add_5_tag => :p_add_5_tag',
                                                'p_add_5_value => :p_add_5_value')</PSTMT>
						<Param pnum="1"><xsl:value-of select="MsgId"/></Param>
						<Param pnum="2">
							<xsl:value-of select="/Envelope/Body/Parametrs/Msgdirection_Id"/>
						</Param>
						<ResultSet>
							<Result rnum="1" type="number">ResultCode</Result>
						</ResultSet>
					</SQLStatement>
					<Return>
						<Normal>
							<Confirmation>
								<ResultCode>0</ResultCode>
							</Confirmation>
						</Normal>
						<Fault>
  </Fault>
					</Return>
				</SQLRequest>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>