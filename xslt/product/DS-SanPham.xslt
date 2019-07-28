<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="danh-sach-san-pham">
			<div class="product-title">
				<h2>
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
				</h2>
			</div>
			<div class="row">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Product">
			<div class="col-6 col-sm-4 col-lg-3">
				<div class="figure">
					<div class="figure-image shine">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img class="lazyload blur-up">
							<xsl:attribute name="data-src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="figure-caption">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<p>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</p>
							<p class="upper">
								<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
							</p>
						</a>
					</div>
				</div>
			</div>
	</xsl:template>
</xsl:stylesheet>