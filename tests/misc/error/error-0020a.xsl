<?xml version="1.0" encoding="UTF-8"?>
<!--It is a static error if an
                           attribute (other than an attribute written using curly brackets in a
                           position where an attribute
                              value template is permitted) contains a value that is not
                           one of the permitted values for that attribute.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<!-- Error: xsl:decimal-format  -->
<?spec xslt#errors?><?error XTSE0020?>

   <xsl:decimal-format name="dec-format" decimal-separator="must-be-a-char"/>

  <xsl:template match="doc" name="this">
      <out>
         <xsl:value-of select="format-number(1234.56, '####0.00', 'dec-format')"/>
         <xsl:message>Error not detected!</xsl:message>
      </out>
  </xsl:template>
  

</xsl:stylesheet>
