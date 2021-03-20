#!/bin/bash

id_current=$(cat ~/.conky/dacha-custom/current/current.txt)
id_new=`~/.conky/dacha-custom/scripts/id.sh`
cover=
imgurl=

if [ "$id_new" != "$id_current" ]; then

	cover=`ls ~/.conky/dacha-custom/covers | grep $id_new`

	if [ "$cover" == "" ]; then

		imgurl=`~/.conky/dacha-custom/scripts/imgurl.sh $id_new`
		wget -O ~/.conky/dacha-custom/covers/$id_new.jpg $imgurl
		cover=`ls ~/.conky/dacha-custom/covers | grep $id_new`
	fi

	if [ "$cover" != "" ]; then
		cp ~/.conky/dacha-custom/covers/$cover ~/.conky/dacha-custom/current/current.jpg
	else
		cp ~/.conky/dacha-custom/covers/empty.jpg ~/.conky/dacha-custom/current/current.jpg
	fi

	echo $id_new > ~/.conky/dacha-custom/current/current.txt
fi
