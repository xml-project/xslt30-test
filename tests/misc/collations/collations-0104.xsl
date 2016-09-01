<!DOCTYPE xsl:stylesheet SYSTEM "collation.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

<xsl:strip-space elements="*"/>

<xsl:param name="collation" as="xs:string" select="'&coll;'"/>


<!-- grouping using a case-blind collation as default collation -->

<xsl:template match="/" default-collation="&coll;">
<out>
  <xsl:for-each-group select="words/word" group-by=".">
    <group>
      <xsl:copy-of select="current-group()"/>
    </group>
  </xsl:for-each-group>
</out>
</xsl:template>

</xsl:stylesheet>

