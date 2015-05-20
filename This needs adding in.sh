#!/bin/bash

echo 'Line number one can be pretty long as well.' | pbcopy; osascript -e '
on run p
set theSubtitle to item 1 of p
display notification "Stuff is on your clipboard now." with title "This is the title" subtitle theSubtitle
end run
' "$(pbpaste)"

osascript -e "display notification \"The url(s) are on your clipboard from my.app\" with title \"my.app has finished\" subtitle (the clipboard as string)" 