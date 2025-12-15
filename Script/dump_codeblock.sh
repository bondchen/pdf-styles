#!/bin/sh
echo "| style |font | codeblock font size |"
echo "| -- | -- | -- |"

for f in style71/*;
do
 FONT_SIZE=$(xmlstarlet sel -T -t -v "//Element[@name='codeblock']/Context/BaseProperties/Font/@size" -n $f)
 FONT_SIZE=$(xmlstarlet sel -T -t -v "//Element[@name='codeblock']/Context/BaseProperties/@propertySetReferences" -n $f)
 echo "| $f | $FONT|$FONT_SIZE |"
done
