<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="container">
			<div class="row">
				<div class="col-lg-9">
					<section class="news-detail">
						<article>
							<h2>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes">
								</xsl:value-of>
							</h2>
							<time><em class="mdi mdi-clock-outline"></em>
								<p>
									<xsl:value-of select='/NewsDetail/CreatedDate'></xsl:value-of>
								</p>
							</time>
							<div class="content">
								<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes">
								</xsl:value-of>
							</div>
							<div class="social-button">
								<div class="social-network">
									<div class="fb-like" data-width="" data-layout="button_count" data-action="like"
										data-size="small" data-show-faces="true" data-share="true">
										<xsl:attribute name="data-herf">
											<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>

									</div>
								</div>
								<div class="social-network">
									<a class="twitter-share-button" href="https://twitter.com/intent/tweet">
										<xsl:attribute name="herf">
											<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:text>Tweet</xsl:text>
									</a>
								</div>
							</div>
						</article>
					</section>
				</div>
				<div class="col-lg-3">
					<section class="news-sidebar">
						<div class="grey-title">
							<p>
								<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
							</p>
						</div>
						<div class="news-sidebar-wrapper">
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</div>
					</section>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="figure">
			<div class="figure-image">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
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
				<time><em class="mdi mdi-clock-outline"></em>
					<p>
						<xsl:value-of select='CreatedDate'></xsl:value-of>
					</p>
				</time>
				<p class="title">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>

				</p>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>