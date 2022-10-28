# Today date variable
export DATE=`date +%Y-%m-%d`
echo "Today date is $DATE"
export DESTINATION="/Volumes/SSD2TBV1/travel/$DATE"
echo "make directory $DESTINATION"
mkdir -p $DESTINATION

echo "make directory $DESTINATION/Photos"
mkdir -p "$DESTINATION/Photos"

echo "make directory $DESTINATION/JPG"
mkdir -p "$DESTINATION/JPG"

echo "make directory $DESTINATION/Videos"
mkdir -p "$DESTINATION/Videos"

echo "copy RAW photos"
rsync -av --progress /Volumes/Untitled/DCIM/100MEDIA/**/*.DNG "$DESTINATION/Photos"
echo "copy JPG photos"
rsync -av --progress /Volumes/Untitled/DCIM/100MEDIA/**/*.JPG "$DESTINATION/JPG"

echo "copy videos"
rsync -av --progress /Volumes/Untitled/DCIM/100MEDIA/**/*.MP4 "$DESTINATION/Videos"

echo "copy SRT subtitles"
rsync -av --progress /Volumes/Untitled/DCIM/100MEDIA/**/*.SRT "$DESTINATION/Videos"

