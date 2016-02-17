<xsl:transform version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <xsl:variable name="RUN" select="true()" static="yes"/>
    <xsl:strip-space elements="*"/>
   

  <!-- xsl:copy referring to an attribute set that is declared streamable but is not -->
  
  <xsl:attribute-set name="as-3" streamable="yes">
    <xsl:attribute name="x" select="last()"/>
    <xsl:attribute name="y" select="2"/>
  </xsl:attribute-set>
  
  <xsl:template name="cy-903" use-when="$RUN">
    <out>
      <xsl:stream href="../docs/citygml.xml">
        <xsl:copy select="*" use-attribute-sets="as-3"/>
      </xsl:stream>
    </out>
  </xsl:template>  
  
</xsl:transform>  