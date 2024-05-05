<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:pom="http://maven.apache.org/POM/4.0.0">

    <xsl:param name="version" select="'0.0'"/>

    <xsl:output method="xml" encoding="utf-8" indent="yes"/>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="pom:project/pom:version/text()">
        <xsl:value-of select="$version"/>
    </xsl:template>

</xsl:stylesheet>