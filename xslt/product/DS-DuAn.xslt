<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="danh-sach-du-an">
			<div class="container">
				<div class="article-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
					</h2>
				</div>
				<div class="row no-gutters">
					<xsl:apply-templates select="/ProductList/Product" mode="Big"></xsl:apply-templates>
					<div class="col-12 col-md-4">
						<div class="project-display-wrapper">
							<xsl:apply-templates select="/ProductList/Product" mode="Side"></xsl:apply-templates>
						</div>
					</div>
					<xsl:apply-templates select="/ProductList/Product" mode="Small"></xsl:apply-templates>
				</div>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="Product" mode="Big">
		<xsl:if test="position() = 1">
			<div class="col-12 col-md-8">
				<div class="project-display-wrapper">
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
							</a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product" mode="Side">
		<xsl:if test="position() &gt; 1 and position() &lt; 4">
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
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product" mode="Small">
		<xsl:if test="position() &gt; 3">
			<div class="col-12 col-sm-4">
				<div class="project-display-wrapper">
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
						<div class="figure-caption-under">
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
							</a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>