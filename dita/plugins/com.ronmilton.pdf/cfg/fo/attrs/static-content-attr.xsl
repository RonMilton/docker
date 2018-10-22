<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="2.0">

    <xsl:attribute-set name="odd__header">
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="end-indent">10pt</xsl:attribute>
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
        <xsl:attribute name="background-image"
            >Customization/OpenTopic/common/artwork/header-logo.png</xsl:attribute>
        <xsl:attribute name="background-repeat">no-repeat</xsl:attribute>
        <xsl:attribute name="background-position-horizontal">left</xsl:attribute>
        <xsl:attribute name="line-height">34pt</xsl:attribute>
        <xsl:attribute name="margin-left">12pt</xsl:attribute>
        <xsl:attribute name="color">#b8b8b8</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="even__header">
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="start-indent">10pt</xsl:attribute>
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
        <xsl:attribute name="background-image"
            >Customization/OpenTopic/common/artwork/header-logo.png</xsl:attribute>
        <xsl:attribute name="background-repeat">no-repeat</xsl:attribute>
        <xsl:attribute name="background-position-horizontal">right</xsl:attribute>
        <xsl:attribute name="line-height">34pt</xsl:attribute>
        <xsl:attribute name="margin-right">12pt</xsl:attribute>
        <xsl:attribute name="color">#b8b8b8</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="odd__footer">
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="end-indent">10pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="space-after.conditionality">retain</xsl:attribute>
        <xsl:attribute name="color">#b8b8b8</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="even__footer">
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="start-indent">10pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="space-after.conditionality">retain</xsl:attribute>
        <xsl:attribute name="color">#b8b8b8</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="center__footer">
        <xsl:attribute name="font-size">6pt</xsl:attribute>
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="color">#b8b8b8</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="space-after.conditionality">retain</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="pagenum">
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>


    <xsl:attribute-set name="__body__odd__footer" use-attribute-sets="odd__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__odd__footer__heading"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__odd__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__even__footer" use-attribute-sets="even__footer"> </xsl:attribute-set>
    
    <xsl:attribute-set name="__body__center__footer" use-attribute-sets="center__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__even__footer__heading"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__even__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__odd__header" use-attribute-sets="odd__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__odd__header__heading"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__odd__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__even__header" use-attribute-sets="even__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__even__header__heading"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__even__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__first__header" use-attribute-sets="odd__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__first__footer" use-attribute-sets="odd__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__first__header__heading"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__first__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__first__footer__heading"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__first__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__last__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__last__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__odd__footer" use-attribute-sets="odd__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__odd__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__even__footer" use-attribute-sets="even__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__even__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__odd__header" use-attribute-sets="odd__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__odd__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__even__header" use-attribute-sets="even__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__toc__even__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__odd__footer" use-attribute-sets="odd__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__odd__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__even__footer" use-attribute-sets="even__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__even__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__odd__header" use-attribute-sets="odd__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__odd__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__even__header" use-attribute-sets="even__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__index__even__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__body__footnote__separator">
        <xsl:attribute name="leader-pattern">rule</xsl:attribute>
        <xsl:attribute name="leader-length">25%</xsl:attribute>
        <xsl:attribute name="rule-thickness">0.5pt</xsl:attribute>
        <xsl:attribute name="rule-style">solid</xsl:attribute>
        <xsl:attribute name="color">black</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__chapter__frontmatter__name__container">
        <xsl:attribute name="font-size">20pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="border-before-style">solid</xsl:attribute>
        <xsl:attribute name="border-after-style">solid</xsl:attribute>
        <xsl:attribute name="border-before-width">2pt</xsl:attribute>
        <xsl:attribute name="border-after-width">2pt</xsl:attribute>
        <xsl:attribute name="padding-top">10pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__chapter__frontmatter__number__container">
        <xsl:attribute name="font-size">40pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__odd__footer" use-attribute-sets="odd__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__odd__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__even__footer" use-attribute-sets="even__footer"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__even__footer__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__odd__header" use-attribute-sets="odd__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__odd__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__even__header" use-attribute-sets="even__header"> </xsl:attribute-set>

    <xsl:attribute-set name="__glossary__even__header__pagenum" use-attribute-sets="pagenum"> </xsl:attribute-set>

</xsl:stylesheet>
