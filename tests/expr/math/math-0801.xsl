<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec fo#func-numeric-divide?>
<!-- PURPOSE:  Test of 'div' operator. -->
<xsl:template match="doc">
  <out>
    <xsl:value-of select="6 div 2"/>
  </out>
</xsl:template>
 
</xsl:stylesheet>
