<!DOCTYPE xsl:stylesheet SYSTEM "collation.dtd">

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs">

<xsl:strip-space elements="*"/>
<xsl:param name="collation" as="xs:string" select="'&coll;'"/>


<!-- contains() function using explicit collation, default collation, and none -->

<xsl:template match="/">
<out>
  <th><xsl:value-of select="words/word[contains(., 'ou', $collation)]"/></th>
  <th><xsl:value-of select="words/word[contains(., 'ou')]" default-collation="&coll;"/></th>
  <th><xsl:value-of select="words/word[contains(., 'ou')]"/></th>  
</out>
</xsl:template>

</xsl:stylesheet>

