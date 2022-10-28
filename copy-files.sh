#!/bin/bash

DATE=$(date +%Y-%m-%d)

SOURCE=/Volumes/Untitled/DCIM/100MEDIA
DESTINATION="/Volumes/SSD2TBV1/travel/$DATE"

PHOTOS=Photos
VIDEOS=Videos
JPG=JPG

PHOTOS_DESTINATION="$DESTINATION/$PHOTOS"
VIDEOS_DESTINATION="$DESTINATION/$VIDEOS"
JPG_DESTINATION="$DESTINATION/$JPG"

echo "make directory $DESTINATION"
mkdir -p "$DESTINATION"

echo "make directory $PHOTOS_DESTINATION"
mkdir -p "$PHOTOS_DESTINATION"

echo "make directory $JPG_DESTINATION"
mkdir -p "$JPG_DESTINATION"

echo "make directory $VIDEOS_DESTINATION"
mkdir -p "$VIDEOS_DESTINATION"

echo "copy RAW photos"
rsync -av --progress "$SOURCE/**/*.DNG" "$PHOTOS_DESTINATION"
echo "copy JPG photos"
rsync -av --progress "$SOURCE/**/*.JPG" "$JPG_DESTINATION"

echo "copy videos"
rsync -av --progress "$SOURCE/**/*.MP4" "$VIDEOS_DESTINATION"

echo "copy SRT subtitles"
rsync -av --progress "$SOURCE/**/*.SRT" "$VIDEOS_DESTINATION"

