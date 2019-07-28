<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
	<div class="current-language">
		<xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates><em class="mdi mdi-menu-down"></em>
	</div>
	<div class="language-list">
		<xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
	</div>
  </xsl:template>

  <xsl:template match="Language" mode="Active">
    <xsl:if test="IsActive='true'">
      <p><xsl:value-of select="Title"></xsl:value-of></p>
    </xsl:if>
  </xsl:template>
  <xsl:template match="Language">
   	 <div class="item">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</a>
	</div>
  </xsl:template>
</xsl:stylesheet>