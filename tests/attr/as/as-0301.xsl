<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                version="2.0">
<!-- Purpose: Test with global xsl:variable where the value of @select is an attribute 
  				obtained at run time, @as="xs:untypedAtomic". Verify that the 
  				resulting variable type is xs:untypedAtomic-->

   <xslt:output method="xml" encoding="UTF-8"/>

   <xslt:variable name="v" select="/doc/item/@attr" as="xs:untypedAtomic"/>

   <xslt:template match="/doc">
      <out>
         <xslt:value-of select="$v instance of xs:untypedAtomic"/>
      </out>
   </xslt:template>
</xslt:transform>
