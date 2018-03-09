for file in *.mid; do
    echo $file
    echo "$(basename "$file" .mid).mp3"
    musescore "$file" -o "$(basename "$file" .mid).mp3"
done
