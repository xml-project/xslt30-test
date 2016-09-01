<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xslt#for-each?>
    <!-- Purpose: Test for-each with select expression in a global variable. -->

<xsl:variable name="which" select="/doc/critter[@type='cat']"/>

<xsl:template match="/doc">
  <out>
    <xsl:for-each select="$which">
      <xsl:value-of select="name"/><xsl:text>,</xsl:text>
    </xsl:for-each>
  </out>
</xsl:template>

</xsl:stylesheet>
