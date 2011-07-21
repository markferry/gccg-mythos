<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:mythos="some.uri" exclude-result-prefixes="mythos">

<!-- Holycrap mapping between schemas in xslt was a stupid idea. -->
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

<xsl:param name="map-file" select="string('mythosdb_gccg_map.xml')" />
<xsl:variable name="map-doc" select="document($map-file)" />

<!-- Declare keys to map mythosdb to gccg -->
<xsl:key name="dim-map" match="/mythosdb-map/dimension/entry" use="@key" />
<xsl:key name="gate-map" match="/mythosdb-map/gate/entry" use="@key" />
<xsl:key name="unique-map" match="/mythosdb-map/unique/entry" use="@key" />
<xsl:key name="value-map" match="/mythosdb-map/value/entry" use="@key" />

<xsl:variable name="dimension-map">
  <entry key="Waking World"></entry>
  <entry key="Dreamlands">{DRM}</entry>
  <entry key="New Æon">{NAE}</entry>
</xsl:variable>

  <xsl:template match="Dimension">
    <xsl:variable name="raw-value" select="." />
        <xsl:for-each select="$map-doc/mythosdb-map">
            <attr key="dimension" value="{key('dim-map', $raw-value)[1]}" />
        </xsl:for-each>
  </xsl:template>

  <xsl:template match="Gate">
    <xsl:variable name="raw-value" select="." />
        <xsl:for-each select="$map-doc/mythosdb-map">
            <attr key="gate" value="{key('gate-map', $raw-value)[1]}" />
        </xsl:for-each>
  </xsl:template>

  <xsl:template match="Unique">
    <xsl:variable name="raw-value" select="." />
        <xsl:for-each select="$map-doc/mythosdb-map">
            <attr key="unique" value="{key('unique-map', $raw-value)[1]}" />
        </xsl:for-each>
  </xsl:template>

  <xsl:template match="Value">
    <xsl:variable name="raw-value" select="." />
        <xsl:for-each select="$map-doc/mythosdb-map">
            <attr key="value" value="{key('value-map', $raw-value)[1]|$raw-value}" />
        </xsl:for-each>
  </xsl:template>

<!-- Convert csv2xml output to GCCG set
        Title_en, Image and Text_en child elements become
        attributes. The rest become parameterized children -->
  <xsl:template match="/">
    <ccg-setinfo name="{$setname}" dir="{$setdir}" abbrev="{$setabbrev}" game="Mythos">
        <cards>
        <!-- Only cards from the specified set -->
        <xsl:for-each select="cards/row[Set=$setid]">
            <card name="{Title_en}" graphics="{Image}" text="{Text_en}" >
                <attr value="{Set}" key="set"/>
                <attr value="{Rarity}" key="rarity"/>
                <attr value="{Type}" key="type"/>
                <attr value="{Sub_Type}" key="subtype"/>
                <xsl:apply-templates select="Value" />
                <xsl:apply-templates select="Gate" />
                <attr value="{Private_Text}" key="private"/>
                <attr value="{Public_Text}" key="public"/>
                <attr value="{Region}" key="region"/>
                <attr value="{Subregion}" key="subregion"/>
                <attr value="{Education}" key="education"/>
                <attr value="{San}" key="san"/>
                <attr value="{Max_San}" key="sanmax"/>
                <attr value="{Hand_Size}" key="hand"/>
                <attr value="{Minimum}" key="handmin"/>
                <attr value="{Maximum}" key="handmax"/>
                <xsl:apply-templates select="Dimension" />
                <xsl:apply-templates select="Unique" />
            </card>
            <xsl:text>&#10;</xsl:text>
        </xsl:for-each>
        </cards>
    </ccg-setinfo>
  </xsl:template>
</xsl:stylesheet>

