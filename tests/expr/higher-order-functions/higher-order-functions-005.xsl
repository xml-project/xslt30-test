<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="http://local/"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <!-- inline function literal, system function -->
    

    
    <xsl:template name="main">
        <out><xsl:value-of select="let $f := concat#8 return $f('a','b','c','d','e','f','g','h')"/></out>
    </xsl:template>
    
</xsl:stylesheet>