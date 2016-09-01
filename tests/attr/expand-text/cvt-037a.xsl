<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    
    <xsl:template name="xsl:initial-template">
        <xsl:for-each select="1 to 10">
            <xsl:choose expand-text="yes">
                <xsl:when test="position() mod 2">
                    <xsl:value-of select=" 'foo-', position()" separator="" />
                </xsl:when>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>    
    
</xsl:stylesheet>