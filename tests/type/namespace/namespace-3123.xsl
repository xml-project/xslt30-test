<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xslt#lre-namespaces?>
    <!-- Purpose: Test for resetting of a specified default namespace by a LRE. -->

<xsl:template match = "/">
  <out xmlns="http://xyz/">
    <xsl:element namespace="http://abc/" name="foo">
      <yyy/>
    </xsl:element>
  </out>
</xsl:template>

</xsl:stylesheet>


