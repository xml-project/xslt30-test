<?xml version="1.0" encoding="UTF-8"?>
<xslt:transform xmlns:my="http://www.example.com/ns/match/var"
   xmlns:pre="http://www.example.com/ns/match/var" xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:xslt="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="my xs pre"
   version="2.0">
   <!-- Purpose: Test of template matching with schema-element($name) where $name has a prefix.-->

   <xslt:import-schema namespace="http://www.example.com/ns/match/var"
      schema-location="variousTypesSchemaMatch.xsd"/>

   <xslt:template match="schema-element(my:userNode)">
      <out>
         <xslt:apply-templates select="*"/>
      </out>
   </xslt:template>

   <xslt:template match="schema-element(my:simpleBuiltin)">
      <xslt:element name="A{position()}">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-element(my:simpleUserElem)">
      <xslt:element name="B{position()}">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-element(my:simpleUserList)">
      <xslt:element name="C{position()}">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-element(my:simpleUserUnion)">
      <xslt:element name="D{position()}">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-element(my:complexSimpleContentElem)">
      <xslt:element name="E{position()}">
         <xslt:value-of select="."/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="schema-element(my:complexMixedUserElem)">
      <xslt:element name="F{position()}">
         <xslt:value-of select="./*[1]"/>
      </xslt:element>
   </xslt:template>

   <xslt:template match="element(*)"> </xslt:template>
</xslt:transform>
