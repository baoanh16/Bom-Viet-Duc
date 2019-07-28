<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="download-document">
			<div class="document-title">
				<h2>
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
			</div>
			<div class="document-table-wrapper">
				<table>
					<thead>
						<tr>
							<th>Tên tài liệu</th>
							<th>ngày đăng</th>
							<th>Tải về</th>
						</tr>
					</thead>
					<tbody>
						<xsl:apply-templates select='/NewsList/News'>

						</xsl:apply-templates>
					</tbody>
				</table>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">

		<tr>
			<td data-title="Tên tài liệu">

				<a download="download">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>

					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
			</td>
			<td data-title="Ngày đăng">
				<xsl:value-of select="CreatedDate"></xsl:value-of>
			</td>
			<td data-title="Tải về"><a download="download">
					<xsl:attribute name="href">
						<xsl:value-of select="FileUrl"></xsl:value-of>
					</xsl:attribute>
					<em class="lnr lnr-download"></em>
				</a></td>
		</tr>



	</xsl:template>

</xsl:stylesheet>