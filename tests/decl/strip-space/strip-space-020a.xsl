<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:abc="http://abc.uri/">

<xsl:preserve-space elements="abc:x abc:y abc:z q"/>

  <xsl:template match="/"><xsl:copy-of select="."/></xsl:template>

</xsl:stylesheet>
