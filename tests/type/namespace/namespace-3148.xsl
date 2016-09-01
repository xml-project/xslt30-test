<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xslt#xsl-element?>
    <!-- Purpose: Mix xmlns declaration and namespace attrib (to same) in xsl:element; name has prefix. -->
  <!-- NOTE: Processor developers could legitimately disagree about where the default name
     has to be set in the result. It must be in effect for yyy, but could be for foo
     as well. The spec doesn't address this point. -->

<xsl:template match = "/">
  <out>
    <xsl:element name="wxyz:foo" namespace="http://test.com/" xmlns="http://test.com/">
      <yyy/>
    </xsl:element>
  </out>
</xsl:template>

</xsl:stylesheet>


