<?xml version='1.0'?>
<?spec fo#func-resolve-uri?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<xsl:import href="level2/level2_import3.xsl"/>

<xsl:template match="one-tag">
  From stylesheet level1_import3.xsl: <xsl:value-of select="self::node()"/>
  importing level2_import3.xsl
</xsl:template>

</xsl:stylesheet>