#!/bin/bash
IFS="	"

echo "<link rel=stylesheet href=style.css>" > index.html
echo "<script src=script.js></script>" >> index.html
echo "<ol>" >> index.html
while read -r title theme number start two three four
do
	pages=($start $two $three $four)
	pageString=$(echo ${pages[@]} | sed 's/ /,/g')
#	echo "<title>$title($theme)</title>" > $number.html
#	echo '<link rel="stylesheet" href="style.css" type="text/css" />' >>$number.html
#	for p in ${pages[@]};
#	do
#		echo "<img src=$p.png />" >> $number.html
#	done

	echo "	<li id=\"$number\" data=\"$pageString\"><a href=\"index.html?$number\">$title</a></li>" >> index.html
done < hymn-titles.csv
echo "<ol>" >> index.html
echo "<a id="pages" />" >> index.html