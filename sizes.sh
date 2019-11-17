for l in $( du -a . | sort -n -r | fgrep -v '/.git' | grep -v '\.$' | grep -v -P '/img/designe(r|r_columns)$' | grep -v -P '/img$' | head -n 22 | tr "\t" "Z"); do echo ----------------------$l | sed 's/Z/ /'; fn=$(echo $l | awk -F 'Z' '{print($2);}'); echo $fn; fgrep -c $(basename $fn) ./*.html | fgrep -v ":0"; done

