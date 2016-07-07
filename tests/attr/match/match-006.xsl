<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xslt#patterns?>
    <!-- Purpose: Test of or in predicate of match pattern. -->

<xsl:template match="letters">
  <out>
    <xsl:apply-templates/>
  </out>
</xsl:template>

<xsl:template match="letter[.='b' or .='h']">
  <xsl:value-of select="."/>
  <xsl:text> </xsl:text>
</xsl:template>

<xsl:template match="text()"/>

</xsl:stylesheet>
