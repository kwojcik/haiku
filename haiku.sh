# Generate a haiku with some punctuation and place a period at the end of each line
#
# The first argument can be used as an argument to grep -E for words
#
# protip: haiku | say

for i in 5 7 5; do
    echo -n `cat /usr/share/dict/words | grep -E "$1" | gshuf | head -n 1`;
    for j in `seq 2 $i`; do 
        if [ $(($RANDOM % 5)) -eq '0' ]; then
            echo -n ','
        fi
        echo -n ' '
        echo -n `cat /usr/share/dict/words | grep -E "$1" | gshuf | head -n 1`;
    done
    echo '.';
done
