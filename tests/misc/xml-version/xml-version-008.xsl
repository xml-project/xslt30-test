<?xml version="1.1" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: To output a document with method 'xml' and version '1.1'. 
                To ensure that in an attribute node for an xsl:element, Control Characters in C0 range are output as
                Numeric Character Reference (NCR).  -->

   <t:output method="xml" version="1.1" encoding="UTF-8"/>

   <t:template match="/">
      <out>
         <t:element name="a">
    		      <t:attribute name="status">&#x8;&#x1f;</t:attribute>
    	    </t:element>
      </out>
  </t:template>
</t:transform>
