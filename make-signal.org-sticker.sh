## Description: Stickers must be in PNG, APNG, or WebP format with a transparent background and 512x512 pixels. Recommended margin is 16px.

# take images with a height of 512 and add white borders to make them 512x512
mogrify -path $1 -format jpg -resize 512x512 -background white -gravity center -extent 512x512 "$1/*.jpg"

# convert directory of jpg to png
mogrify -path $1 -format png "$1/*.jpg"

# convert white to transparent
mogrify -transparent white "$1/*.png"

# make the sticker in webp format
convert -delay 10 -loop 0 $1/*.png $1/sticker.webp