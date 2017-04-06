
# $1 -- image disk
# $2 -- mount file system
# $3 -- start_section * 512 -- $((start * 512))
mount $1 $2 -o loop,offset=$3
