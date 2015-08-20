#!/bin/bash
MODULENAME=gridster-js
CWD=`pwd`
PUBLISHDIR=${CWD}/publish
VERSION="0.5.6"
URL="http:\/\/gridster.net\/"
for ext in css js
do
  filename=jquery.gridster.$ext
  curl -O https://raw.githubusercontent.com/ducksboard/gridster.js/v$VERSION/dist/$filename
  sed -e 's/root\.\$ \|\| root.jQuery/require\(\"jquery\"\)/g' \
  $filename > $MODULENAME.$ext
  rm $filename
done

echo $VERSION
for var in README.md kanso.json
do
  sed -e s/@VERSION@/$VERSION/g \
      -e s/@MODULENAME@/$MODULENAME/g \
      -e s/@URL@/$URL/g \
             $var.in > $var 
done
rm -rf ${PUBLISHDIR}
mkdir -p ${PUBLISHDIR}/css 
cp README.md kanso.json $MODULENAME.js ${PUBLISHDIR} 
cp $MODULENAME.css ${PUBLISHDIR}/css
cd ${PUBLISHDIR}
kanso publish
cd ${CWD} 
rm -rf ${PUBLISHDIR} 

