<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Set ID in database -->
<xsl:param name="setid"></xsl:param>
<!-- Set abbreviation -->
<xsl:param name="setabbrev"></xsl:param>
<!-- Full name for the set -->
<xsl:param name="setname"></xsl:param>
<!-- Directory for set images -->
<xsl:param name="setdir"></xsl:param>

<xsl:output omit-xml-declaration="no"
            encoding="UTF-8"
            doctype="ccg-setinfo"
            doctype-system="../gccg-set.dtd"
            indent="yes"/>
<!--                                              --> 
  <xsl:strip-space elements="*"/>


<!-- Convert csv2xml output to GCCG set
        Title_en, Image and Text_en child elements become
        attributes. The rest become parameterized children -->

  <xsl:template match="/">
    <ccg-setinfo name="{$setname}" dir="{$setdir}" abbrev="{$setabbrev}" game="Mythos">
        <cards>
        <!-- Only cards from the specified set -->
        <xsl:for-each select="cards/row[Set=$setid]">
            <card name="{Title_en}" graphics="{Image}" text="{Text_en}" >
                <attr value="{Rarity}" key="rarity" />
                <attr value="{Set}" key="set"/>
                <attr value="{Rarity}" key="rarity"/>
                <attr value="{Type}" key="type"/>
                <attr value="{Sub_Type}" key="subtype"/>
                <attr value="{Value}" key="value"/>
                <attr value="{Gate}" key="gate"/>
                <attr value="{Private_Text}" key="private"/>
                <attr value="{Region}" key="region"/>
                <attr value="{Subregion}" key="subregion"/>
                <attr value="{Education}" key="education"/>
                <attr value="{San}" key="san"/>
                <attr value="{Max_San}" key="sanmax"/>
                <attr value="{Hand_Size}" key="hand"/>
                <attr value="{Minimum}" key="handmin"/>
                <attr value="{Maximum}" key="handmax"/>
                <attr value="{Dimension}" key="dimension"/>
                <attr value="{Unique}" key="unique"/>
            </card>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        </cards>
    </ccg-setinfo>
  </xsl:template>
</xsl:stylesheet>

