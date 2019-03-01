<xsl:package
    name="http://www.w3.org/xslt30tests/package-922"  
    package-version="1.0.0"
    version="3.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:f="urn:myfunc"
    >
  
    <!-- tests error XTSE3025 to be raised with xsl:expose and abstract, if there's no declared visibility -->

    <xsl:function name="f:abstract" />
    
    <xsl:template name="xsl:initial-template" visibility="public">
      <not-ok/>
    </xsl:template>
    
    <xsl:expose visibility="abstract" component="function" names="*"/>

</xsl:package>   