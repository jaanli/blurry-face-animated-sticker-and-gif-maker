# convert all jpg files in a directory to gif
mogrify -path $1 -format gif -resize 20% "$1/*.jpg"

# make the gif
convert -delay 10 -loop 0 $1/*.gif $1/output.gif