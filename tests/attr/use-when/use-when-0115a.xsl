<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <xsl:template match="para" use-when="false()">
    <p><xsl:next-match/></p>
  </xsl:template>


</xsl:stylesheet>