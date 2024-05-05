<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/greeting">
        <html>
            <head>
                <title>A Simple XSLT 3.0 Example</title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="."/>
                </h1>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>