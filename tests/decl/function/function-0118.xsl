<?xml version="1.0"?> 

<?spec xslt#stylesheet-functions?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
xmlns:app="http://app.com/" exclude-result-prefixes="app">

  <!-- simple xsl:function, test with @identity-sensitive="Yes" (not allowed) -->

  <xsl:function name="app:count-elements" identity-sensitive="Yes">
    <xsl:param name="doc"/>
    <xsl:sequence select="count($doc//*)"/>   
</xsl:function>

  <xsl:template match="/">
    <out>
      <xsl:value-of select="app:count-elements(/)"/>
    </out>
  </xsl:template>

</xsl:stylesheet>
