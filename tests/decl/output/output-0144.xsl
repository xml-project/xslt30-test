<?xml version="1.0" encoding="UTF-8"?>
<t:transform xmlns="http://www.w3.org/1999/xhtml"
             xmlns:t="http://www.w3.org/1999/XSL/Transform"
             version="2.0">

   <t:output method="xhtml" include-content-type="yes" indent="no"/>
   <!-- Purpose: Test XHTML output with include-content-type=yes and 'meta http-equiv="Content-Type "' 
				tag already present with additional parameters in the 'content' attribute value. 
				Example from spec.-->

   <t:template match="/">
      <html>
         <head>
            <meta http-equiv="Content-Type" media-type="text/html;version='3.0'"/>
         </head>
         <body>
 this should have a meta tag
</body>
      </html>
   </t:template>
</t:transform>
