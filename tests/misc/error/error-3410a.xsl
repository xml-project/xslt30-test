<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

              <!--If the accumulator is declared with the attribute streamable="yes"
                  then it is a dynamic error if the accumulator-before function is called unless the
                  evaluation is performed in the course of the evaluation of a pre-descent instruction 
                  within the controlling sequence constructor.-->
                  
   <xsl:accumulator name="a" initial-value="0">
     <xsl:accumulator-rule match="*" select="$value + accumulator-before('a')"/>
   </xsl:accumulator>

   <xsl:template name="main">
      <out>
         <xsl:stream href="error-0700a.xsl">
           <xsl:copy-of select="."/>
           <xsl:value-of select="accumulator-before('a')"/>
         </xsl:stream>  
      </out>
   </xsl:template>
   
</xsl:stylesheet>
