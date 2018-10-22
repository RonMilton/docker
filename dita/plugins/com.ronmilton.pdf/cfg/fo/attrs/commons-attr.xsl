<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet exclude-result-prefixes="xs ditaarch opentopic e dita-ot opentopic-func" version="2.0" xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot" xmlns:ditaarch="http://dita.oasis-open.org/architecture/2005/" xmlns:e="com.ronmilton.pdf" xmlns:opentopic="http://www.idiominc.com/opentopic" xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:variable as="xs:string" name="e:root-id" select="'root'" />
  <xsl:attribute-set name="common.border__top">
    <xsl:attribute name="border-before-color">#b7b7b7</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="common.border__bottom">
    <xsl:attribute name="border-after-color">#b7b7b7</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="common.border__right">
    <xsl:attribute name="border-end-color">#b7b7b7</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="common.border__left">
    <xsl:attribute name="border-start-color">#b7b7b7</xsl:attribute>
  </xsl:attribute-set>
  
  <xsl:attribute-set name="__fo__root">
    <xsl:attribute name="font-family">sans-serif</xsl:attribute>
  </xsl:attribute-set>

</xsl:stylesheet>
