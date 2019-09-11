<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position()=1">

			<section class="gioi-thieu-article" id="section-1">
				<div class="container">
					<div class="row">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">

			<section class="gioi-thieu-linh-vuc" id="section-2">
				<div class="container">
					<div class="article-title">
						<h2>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="row">

						<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">

			<section class="doi-tac-swiper" id="section-3">
				<div class="container">
					<div class="article-title">
						<h2>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() =4">

			<section class="about-us-vision">
				<div class="container">
					<div class="article-title-yl-center-upper">
						<p>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</p>
					</div>
					<div class="row figure-wrapper">
						<xsl:apply-templates select="News" mode="Vision"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="col-lg-6">
			<article>
				<h3>
					<xsl:value-of select="SubTitle"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h3>
				<h5>


					<xsl:value-of select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h5>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

			</article>
		</div>
		<div class="col-lg-6">
			<article>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</article>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-sm-4">
			<div class="figure">
				<div class="figure-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<div class="figure-caption">
					<p class="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</p>
					<p class="caption">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="swiper-slide">
			<div class="banner">
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="News" mode="Vision">
		<div class="col-lg-5">
			<div class="content-image">
				<div class="figure-image">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
		<div class="col-lg-7">
			<div class="content-caption">
				<div class="content">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
