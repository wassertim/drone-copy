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

echo "make destination directories"
mkdir -p "$DESTINATION"
mkdir -p "$PHOTOS_DESTINATION"
mkdir -p "$JPG_DESTINATION"
mkdir -p "$VIDEOS_DESTINATION"

echo "copy from RAW files"
find "$SOURCE" -name "*.DNG" -exec cp -v {} "$PHOTOS_DESTINATION" \;

echo "copy JPG photos"
find "$SOURCE" -name "*.JPG" -exec cp -v {} "$JPG_DESTINATION" \;

echo "copy videos"
find "$SOURCE" -name "*.MP4" -exec cp -v {} "$VIDEOS_DESTINATION" \;

echo "copy SRT subtitles"
find "$SOURCE" -name "*.SRT" -exec cp -v {} "$VIDEOS_DESTINATION" \;

