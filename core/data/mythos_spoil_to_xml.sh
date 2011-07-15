#!/bin/sh
#
# mythos_spoil_to_xml.sh SRC
#    SRC: source CSV file
#
# CSV source is sorted by Set, Title_en, Image
#

SRC="$1"

# Extra processing to keep GCCG happy
SEDSCRIPT="s/&apos;/'/g"

# csv2xml needs a root element
HEADER="<cards>"
FOOTER="</cards>"
XSLT="mythosdb_to_xml.xslt"
XSLTPROC="xsltproc"

# Map database SET IDs to GCCG set vars
#
get_setfname()
{
    case $1 in
        "Limited")
            SET_NAME="Limited"
            SET_FNAME="ltd.xml"
            SET_ABBREV="LTD"
            ;;
        "B1")
            SET_NAME="Expeditions of Miskatonic University"
            SET_FNAME="eomu.xml"
            SET_ABBREV="EOMU"
            ;;
        "B2")
            SET_NAME="Cthulhu Rising"
            SET_FNAME="cr.xml"
            SET_ABBREV="CR"
            ;;
        "B3")
            SET_NAME="Legends of the Necronomicon"
            SET_FNAME="lotn.xml"
            SET_ABBREV="LOTN"
            ;;
        "Standard")
            SET_NAME="Standard Game"
            SET_FNAME="msgs.xml"
            SET_ABBREV="MSGS"
            ;;
        "Dreamlands")
            SET_NAME="Dreamlands"
            SET_FNAME="drm.xml"
            SET_ABBREV="DRM"
            ;;
        "New Æon")
            SET_NAME="New Æon"
            SET_FNAME="nae.xml"
            SET_ABBREV="NAE"
            ;;
        "ScoobyDoo")
            SET_NAME="Scooby Doo - Where Are You?"
            SET_FNAME="sd.xml"
            SET_ABBREV="SD"
            ;;
        "Promo")
            SET_NAME="Promotional Cards"
            SET_FNAME="pr.xml"
            SET_ABBREV="PR"
            ;;
        *)
            SET_NAME="None"
            SET_FNAME="none.xml"
            SET_ABBREV="NONE"
            ;;
        esac
}

gen_xml_test() {
echo "$XSLTPROC" \
        --stringparam  setid "$SET_ID"  \
        --stringparam  setabbrev "$SET_ABBREV" \
        --stringparam  setname "$SET_NAME" \
        "$XSLT" -
}

gen_xml() {
(
    echo $HEADER
    cat "$SRC" | csv2xml | sed "$SEDSCRIPT"
    echo $FOOTER
) | "$XSLTPROC" \
        --stringparam  setid "$SET_ID"  \
        --stringparam  setabbrev "$SET_ABBREV" \
        --stringparam  setname "$SET_NAME" \
        "$XSLT" -
}

for SET_ID in Limited B1 B2 B3 Standard Dreamlands "New Æon" ScoobyDoo Promo
do
    get_setfname "$SET_ID"
    gen_xml > "$SET_FNAME"
done

