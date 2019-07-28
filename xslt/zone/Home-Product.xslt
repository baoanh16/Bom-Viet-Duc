<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<section class="home-san-pham">
				<div class="container">
					<div class="swiper-container">
						<div class="swiper-wrapper">
						<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="figure">
				<div class="figure-image shine">
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
					<p>
						<xsl:value-of select='Title'></xsl:value-of>
					</p>
					<div class="figure-button"><a href="javascript:;">Xem thêm<em class="fas fa-long-arrow-alt-right"></em></a></div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>