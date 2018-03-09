for file in *.mid; do
    echo $file
    echo "$(basename "$file" .mid).png"
    musescore "$file" -o "$(basename "$file" .mid).png"
done
