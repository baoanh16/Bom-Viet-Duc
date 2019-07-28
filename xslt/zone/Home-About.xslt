<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<section class="home-about-article">
				<div class="container">
					<div class="article-title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="/ZoneList/ModuleTitle"></xsl:value-of>
							
						
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>

						</h2>

					</div>
					<div class='row'>
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-12 col-sm-4">
			<div class="figure">
				<div class="figure-image">
					<img>
					<xsl:attribute name='src'>
						<xsl:value-of select='ImageUrl'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='alt'>
						<xsl:value-of select='Title'></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
				<div class="figure-caption">
					<h5>
						<xsl:value-of select='Title'></xsl:value-of>
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h5>
					<p>
						<xsl:value-of select='Description' disable-output-escaping='yes'></xsl:value-of>
					</p>
					<div class="figure-button">
						<a>
							<xsl:attribute name="href">
								
								<xsl:text>/gioi-thieu#section-
								</xsl:text>
								<xsl:value-of select="position()"></xsl:value-of>
								
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:text> Xem thêm</xsl:text>
							<em>
								<xsl:attribute name="class">
									<xsl:text>fas fa-long-arrow-alt-right</xsl:text>
								</xsl:attribute>
							</em>
						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>