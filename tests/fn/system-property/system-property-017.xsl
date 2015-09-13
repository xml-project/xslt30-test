<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:xslt="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="xs"
                version="3.0">
<!-- Purpose: Test that xsl:version is a valid system-property and the returned result is an xs:string with numeric value of2.0 or above.-->

   <xslt:template match="/">
      <out>
         <xslt:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}version') instance of xs:string"/>
         <xslt:value-of select="xs:decimal(system-property('Q{http://www.w3.org/1999/XSL/Transform}version')) ge 2.0"/>
      </out>
   </xslt:template>
</xslt:transform>
