#!/bin/bash
cp README_prefix.md README.md
FILES=`ls *.templ`
for FILE in $FILES; do
	echo -e "## `echo "$FILE" | sed s':.templ::g'`\n" >> README.md
	VARIABLES=''
	AUTHOR=''
	DESC=''
	while read -r LINE; do
		case $LINE in
			"-->")
				break
				;;
			Author:*)
				AUTHOR=$LINE
				;;
			Variables:*)
				# GFM table!
				VARIABLES="|Name|Description|\n|:-----:|:----------------------|\n"
				;;
			*)
				if [[ $VARIABLES = '' ]]; then
					DESC=$LINE
				else
					VARNAME=`echo "$LINE" | sed s':-.*::g'`
					VARDESC=`echo "$LINE" | sed s':.*-::g'`
					VARIABLES="$VARIABLES| \`$VARNAME\` | $VARDESC |\n"
				fi
				;;
			esac
		done < $FILE
		echo -e "$DESC\n" >> README.md
		echo -e "$AUTHOR\n" >> README.md
		echo -e "Variables: \n\n$VARIABLES" >> README.md
	done
	IFS=$BACKUPIFS
