<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <!-- No match for document node, but spec has changed so its children get processed -->
    
    <xsl:mode streamable="yes" on-no-match="deep-skip" />
    
    <xsl:template match="book | bktlong">
      <o>
        <xsl:value-of select="name(.)"/>
        <xsl:apply-templates />
      </o>  
    </xsl:template>
    
</xsl:stylesheet>
