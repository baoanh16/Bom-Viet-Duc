<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		

			<section class="home-du-an">
				<div class="container">
					<div class="article-title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="/ProductList/ModuleTitle"></xsl:value-of>
							
							<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
						</h2>
					</div>
					<div class="row">
						<div class="col-md-8">
							<div class="home-project">
								<xsl:apply-templates select='/ProductList/Product' mode='BigNews'></xsl:apply-templates>
							</div>
						</div>
						<div class="col-md-4">
							<div class="home-project">
								<xsl:apply-templates select='/ProductList/Product' mode='SideNews'>
								</xsl:apply-templates>

							</div>
						</div>
					</div>
					<div class="home-project-button">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
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
			</section>

	</xsl:template>
	<xsl:template match="Product" mode='BigNews'>
		<xsl:if test="position()= 1">

			<div class="figure">
				<div class="figure-image shine">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="figure-caption">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<p>
							<xsl:value-of disable-output-escaping="yes" select="SubTitle">
							</xsl:value-of>


						</p>
						<p class="name">
							<xsl:value-of disable-output-escaping="yes" select="Title">
							</xsl:value-of>
						</p>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes">
					</xsl:value-of>
				</div>
			</div>


		</xsl:if>
	</xsl:template>

	<xsl:template match="Product" mode='SideNews'>
		<xsl:if test="position() > 1 and position() &lt; 4">

			<div class="figure">
				<div class="figure-image shine">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="figure-caption">
					<a>
						<xsl:attribute name='href'>
							<xsl:value-of select='Url'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='title'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						<p>
							<xsl:value-of disable-output-escaping="yes" select="SubTitle">
							</xsl:value-of>


						</p>
						<p class="name">
							<xsl:value-of disable-output-escaping="yes" select="Title">
							</xsl:value-of>
						</p>
					</a>
					<xsl:value-of select="EditLink" disable-output-escaping="yes">
					</xsl:value-of>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>