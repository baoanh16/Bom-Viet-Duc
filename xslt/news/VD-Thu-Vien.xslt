<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="library-images-display">
			<div class="container">
				<div class="article-title">
					<p>
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					</p>

				</div>
				<div class="row no-gutters">
					<div class="col-12 col-lg-6">
						<div class="row no-gutters">
							<xsl:apply-templates select="/NewsList/News" mode="Image1">

							</xsl:apply-templates>

						</div>
						<div class="row no-gutters">
							<xsl:apply-templates select="/NewsList/News" mode="Image2">

							</xsl:apply-templates>
						</div>
					</div>
					<div class="col-12 col-lg-6">
						<div class="row no-gutters">
							<xsl:apply-templates select="/NewsList/News" mode="Image3">
							</xsl:apply-templates>

						</div>
						<div class="row no-gutters">
							<xsl:apply-templates select="/NewsList/News" mode="Image4">

							</xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="News" mode="Image1">
		<xsl:if test="position()= 1 ">
			<div class="col-12">
				<div>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="lightgallery">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<div class="library-image library-image-fit">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>

					</a>

					<xsl:apply-templates select="NewsImages">

					</xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Image2">
		<xsl:if test="position() > 1 and position() &lt; 4">
			<div class="col-6">
				<div>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="lightgallery">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<div class="library-image">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>

					</a>
					<xsl:apply-templates select="NewsImages">

					</xsl:apply-templates>

				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Image3">
		<xsl:if test="position() > 3 and position() &lt; 6">
			<div class="col-6">
				<div>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="lightgallery">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<div class="library-image">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>

					</a>
					<xsl:apply-templates select="NewsImages">

					</xsl:apply-templates>

				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Image4">
		<xsl:if test="position()= 6 ">
			<div class="col-12">
				<div>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="lightgallery">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<div class="library-image library-image-fit">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>

					</a>



					<xsl:apply-templates select="NewsImages">

					</xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="NewsImages">
		<xsl:if test="position() > 1 ">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<div class="library-image library-image-fit">
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>

			</a>
		</xsl:if>

	</xsl:template>

</xsl:stylesheet>