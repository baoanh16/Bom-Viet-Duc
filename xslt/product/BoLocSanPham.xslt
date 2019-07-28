<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		
		<section class="sidebar-product-navigation">
			<h2>Ứng dụng</h2>
			<ul class="product-filter-wrapper">
				<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
			</ul>
		</section>
	</xsl:template>
	<xsl:template match="Group">
		<li>
			<xsl:if test="FieldType = 1">
				
				<span class="filter-title">
					<em class="mdi mdi-menu-right"></em>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					
				</span>
				<div class="filter-item-wrapper">
					<xsl:apply-templates select="Option" mode="Color"></xsl:apply-templates>
				</div>
			</xsl:if>
			<xsl:if test="FieldType = -1">
				<span class="filter-title">
					<em class="mdi mdi-menu-right"></em>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					
				</span>
				<div class="filter-item-wrapper">
					
					<xsl:if test="FilterType = 1">
						<xsl:apply-templates select="Option" mode="Radio"></xsl:apply-templates>
						
					</xsl:if>
					<xsl:if test="FilterType = 2">
						<xsl:apply-templates select="Option" mode="CheckBox"></xsl:apply-templates>
						
					</xsl:if>
				</div>
			</xsl:if>
		</li>
	</xsl:template>
	<xsl:template match="Option" mode="Color">
		<a class="color">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>color active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="style">
				<xsl:text disable-output-escaping="yes">
					background-color:
				</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="Color"></xsl:value-of>
			</xsl:attribute>
		</a>
	</xsl:template>
	<xsl:template match="Option" mode="Radio">
		<a class="radio">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>radio active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
			
		</a>
	</xsl:template>
	<xsl:template match="Option" mode="CheckBox">
		<a class="checkbox">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>checkbox active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</a>
	</xsl:template>
</xsl:stylesheet>
