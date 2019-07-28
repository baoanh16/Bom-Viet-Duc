<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="du-an-chi-tiet">
			<div class="container">
				<div class="row">
					<div class="col-lg-5">
						<article>
							<p class="title">
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title">
								</xsl:value-of>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
							</p>
							<p class="blue">
								<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/SubTitle">
								</xsl:value-of>
							</p>
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent">
							</xsl:value-of>
						</article>
					</div>
					<div class="col-lg-7">
						<div class="project-detail-swiper">
							<xsl:if test="count(/ProductDetail/ProductImages) &gt; 0">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<xsl:apply-templates select="/ProductDetail/ProductImages">
										</xsl:apply-templates>
									</div>
									<div class="swiper-button-prev project-detail-prev"></div>
									<div class="swiper-button-next project-detail-next"></div>
								</div>
							</xsl:if>
						</div>
					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(/ProductDetail/ProductRelated) &gt; 0">
			<section class="san-pham-khac">
				<div class="container">
					<div class="other-product-wrapper">
						<div class="grey-title">
							<p>
								<!-- <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ProductRelatedText">
								</xsl:value-of> -->
								Sản phẩm đã sử dụng
							</p>
						</div>
						<div class="other-product">
							<div class="swiper-container">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="/ProductDetail/ProductRelated"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
			<section class="other-project">
				<div class="container">
					<div class="grey-title">
						<p>
							<!-- <xsl:value-of disable-output-escaping="yes" select="/ProductDetail/ProductOtherText">
							</xsl:value-of> -->
							Các dự án khác
						</p>
					</div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>

	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<div class="banner"><img>
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

	<xsl:template match="ProductRelated">
		<div class="swiper-slide">
			<div class="figure">
				<div class="figure-image shine">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
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
				</div>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<div class="figure">
				<div class="figure-image">
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
					<p>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
						<xsl:value-of disable-output-escaping="yes" select="EditLink"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>