<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-media-swiper">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>


				</div>
				<div class="swiper-pagination home-media-swiper-pagination"></div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="banner">
				<div class="swiper-media">

					<xsl:if test="Title != ''">
						<div class="play">
							<div class="play__icon"></div>
							<video muted="" loop="" onclick="this.controls=false;">
								<xsl:attribute name="poster">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<source src="./img/1.mp4" type="video/mp4">
								<xsl:attribute name='src'>
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</source>
							</video>

						</div>
					</xsl:if>
					<xsl:if test="Title = ''">
						<img>

						<xsl:attribute name="alt">
							<xsl:value-of select="Description" disable-output-escaping='yes'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>

						</img>
					</xsl:if>
				</div>
				<div class="swiper-caption">
					<xsl:value-of select="Description" disable-output-escaping='yes'></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>