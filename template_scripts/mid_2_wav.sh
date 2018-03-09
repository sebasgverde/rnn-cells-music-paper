for file in *.mid; do
    echo $file
    echo "$(basename "$file" .mid).wav"
    musescore "$file" -o "$(basename "$file" .mid).wav"
done
