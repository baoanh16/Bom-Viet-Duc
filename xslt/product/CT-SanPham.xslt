<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="thong-tin-san-pham">
			<div class="row">
				<div class="col-lg-7">
					<div class="swiper-product-top">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Big">
								</xsl:apply-templates>
							</div>
						</div>
					</div>
					<div class="swiper-product-thumbs">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ProductDetail/ProductImages" mode="Small">
								</xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<article>
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/Title"></xsl:value-of>
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/EditLink"></xsl:value-of>

						</h2>
						<p class="title">Performance Range</p>
						<div class="caption">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/BriefContent">
							</xsl:value-of>
						</div>
						<p class="title">Application Limits</p>
						<div class="full-content">
							<xsl:value-of disable-output-escaping="yes" select="/ProductDetail/FullContent">
							</xsl:value-of>
						</div>
						<div class="file-attach">
							<em class="far fa-file-pdf"></em>
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="/ProductDetail/FileUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:text disable-output-escaping="yes">File</xsl:text>
							</a>
						</div>
						<div class="contact-button">
							<a href="mailto:info@bomvietduc.com.vn">
								<em class="mdi mdi-email"></em>Liên hệ</a>
						</div>
					</article>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<article>
						<xsl:apply-templates select="/ProductDetail/ProductAttributes"></xsl:apply-templates>
					</article>
				</div>
			</div>
		</section>
		<section class="product-form">
			<div class="grey-title">
				<p>Gửi yêu cầu</p>
			</div>
			<div class="wrap-form">
				<div class="row">
					<div class="col-12">
						<div class="form-group">
							<input class="form-control" type="text" aria-describedby="basic-addon3"
								placeholder="Họ tên" /><span class="input-group-text"></span>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group">
							<input class="form-control" type="text" aria-describedby="basic-addon3"
								placeholder="Email" /><span class="input-group-text"></span>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group">
							<input class="form-control" type="text" aria-describedby="basic-addon3"
								placeholder="Công ty" /><span class="input-group-text"></span>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group">
							<input class="form-control" type="text" aria-describedby="basic-addon3"
								placeholder="Số điện thoại" /><span class="input-group-text"></span>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group">
							<textarea class="form-control" id="inpputTextArea" rows="3"
								placeholder="Nội dung"></textarea><span class="input-group-text"></span>
						</div>
					</div>
					<div class="col-12">
						<div class="form-group frm-btnwrap">
							<div class="frm-btn">
								<div class="button-wrapper">
									<input type="submit" value="Gửi Yêu Cầu" /><em class="mdi mdi-arrow-right"></em>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<xsl:if test="count(/ProductDetail/ProductOther) &gt; 0">
			<section class="san-pham-khac">
				<div class="other-product-wrapper">
					<div class="grey-title">
						<p>Sản phẩm khác</p>
					</div>
					<div class="other-product">
						<div class="swiper-container">
								<div class="swiper-wrapper">
							<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>


	<xsl:template match="ProductImages" mode="Big">
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

	<xsl:template match="ProductImages" mode="Small">
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

	<xsl:template match="ProductAttributes">
		<p class="title">
			<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
		</p>
		<div class="attribute-content">
			<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
		</div>
	</xsl:template>

	<xsl:template match="ProductOther">

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
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>