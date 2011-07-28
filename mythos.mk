# Makefile for gccg-mythos packages
#
#
CLIENT_PACKAGE:=gccg-mythos
CLIENT_VERSION:=0.2.1

DATA_PACKAGE:=gccg-mythos-data
DATA_VERSION:=11071500

PKG_PATH:=packages
SITE_PATH:=site/markferry.net/gccg
SITE_XML:=${SITE_PATH}/available.xml
AVAILABLE_XML="<modules>\n\t<source url=\"http://gccg.sourceforge.net/modules/\"/>\n\t<module name=\"mythos\" version=\"${CLIENT_VERSION}\"></module>\n\t<module name=\"mythos-data\" version=\"${DATA_VERSION}\"></module>\n</modules>"

CLIENT_FILES=data/mythos* decks/Mythos graphics/Mythos scripts/Mythos* xml/mythos.xml xml/Mythos
SERVER_FILES=games.dat
DATA_FILES=graphics/Mythos

SSH_PATH=yuggoth-git:~/public_html/
########################
all: dist

build-dirs:
	mkdir -p ${PKG_PATH}

client: build-dirs
	cd core && tar -czvf ../${PKG_PATH}/${CLIENT_PACKAGE}-${CLIENT_VERSION}.tgz ${CLIENT_FILES} ${SERVER_FILES}

data: build-dirs
	cd mythos && tar -czvf ../${PKG_PATH}/${DATA_PACKAGE}-${DATA_VERSION}.tgz ${DATA_FILES}

dist-dirs:
	rm -rf ${SITE_PATH}
	mkdir -p ${SITE_PATH}

available:
	echo ${AVAILABLE_XML} > ${SITE_XML}

dist: client data dist-dirs available
	cp ${PKG_PATH}/${CLIENT_PACKAGE}-${CLIENT_VERSION}.tgz ${SITE_PATH}/
	cp ${PKG_PATH}/${DATA_PACKAGE}-${DATA_VERSION}.tgz ${SITE_PATH}/

clean:
	rm -rf ${SITE_PATH}
	rm -f ${PKG_PATH}/${CLIENT_PACKAGE}-*.tgz
	rm -f ${PKG_PATH}/${DATA_PACKAGE}-*.tgz

web: dist
	rsync -av ${SITE_PATH} ${SSH_PATH}

