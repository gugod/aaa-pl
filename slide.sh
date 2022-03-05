#/bin/bash
reset
cat 00.txt
read

for f in 0*.pl; do
    clear;
    echo "# cat $f"
    cat $f
    read
    echo "# perl $f #=>"
    perl $f
    read
done

clear
cat 99.txt
