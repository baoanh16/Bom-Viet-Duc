<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="support-information">
			<div class="document-title">
				<h2>
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h2>
				<ul class="faq-dashboard">
				<xsl:apply-templates select='/NewsList/News'>

					</xsl:apply-templates>
			</ul>
			</div>
			</section>
	</xsl:template>

	<xsl:template match="News">
		<li>
			<span class="title">
				<xsl:value-of select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</span>
			<div class="content">
				<p>
					<xsl:value-of select='FullContent' disable-output-escaping='yes'></xsl:value-of>
				</p>
			</div>
		</li>

	</xsl:template>
</xsl:stylesheet>