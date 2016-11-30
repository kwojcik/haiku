# Generate a haiku and place a period at the end of each line
#
# The first argument can be used as an argument to grep -E for words
for n in 5 7 5; do
    cat /usr/share/dict/words | grep -E "$1" | gshuf | head -n $n | tr '\n' ' ' | sed 's/ $/./g';
done
