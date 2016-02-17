<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns:t="http://www.w3.org/1999/XSL/Transform" version="2.0">
<!-- Purpose: Test that pattern "document-node(element(*))" gets a default priority of -0.5. -->

   <t:output method="xml" indent="no" encoding="UTF-8"/>

   <t:template match="document-node(element(*))">
      <out>
         <t:value-of select="doc/a/@x5"/>
      </out>
   </t:template>

   <t:template match="document-node(element(*))" priority="-0.4">
      <out>
         <t:value-of select="doc/a/@x4"/>
      </out>
   </t:template>

   <t:template match="document-node(element(*))" priority="-0.6">
      <out>
         <t:value-of select="doc/a/@x6"/>
      </out>
   </t:template>
</t:transform>
