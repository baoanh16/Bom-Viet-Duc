<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	
	<xsl:template match="/">
		<section class="news-line pad-0">
			<div class="container">
				<div class="article-title">
					<h2 class="postname text-xs-center">
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					</h2>
				</div>
				
				<div class="row">
					<div class="col-md-6">
						<xsl:apply-templates select="/NewsList/News" mode="BigNews"></xsl:apply-templates>
					</div>
					<div class="col-md-6">
						<div class="half-new">
							<xsl:apply-templates select="/NewsList/News" mode="SideNews"></xsl:apply-templates>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="tin-tuc-lower">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode="SmallNews"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode="BigNews">
		<xsl:if test="position()= 1">
			
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
				<div class="figure-caption-large">
					<p class="name">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
			
			
		</xsl:if>
	</xsl:template>
	
	<xsl:template match="News" mode="SideNews">
		<xsl:if test="position() > 1 and position() &lt; 4">
			<div class="figure">
				<div class="figure-image shine">
					<a href="#">
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
					<p class="name-small">
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</p>
					<time>
						<em class="mdi mdi-clock-outline"></em>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					<p class="caption">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	
	
	<xsl:template match="News" mode="SmallNews">
		<xsl:if test="position() > 3">
			<div class="col-sm-4">
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
						<p class="name-small">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Title"></xsl:value-of>
							</a>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</p>
						<time>
							<em class="mdi mdi-clock-outline"></em>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
						<p class="caption">
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
