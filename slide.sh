#/bin/bash
cat 00.txt
read

for f in 0*.pl; do
    clear;
    echo '# '$f
    cat $f
    read
    echo "# perl $f #=>"
    perl $f
    read
done

clear
cat 99.txt
