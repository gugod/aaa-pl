#/bin/bash
cat 00.txt
read

for f in 0*.pl; do
    clear;
    echo '# '$f
    cat $f
    read
    echo "# perl $f"
    echo "#=>"
    perl $f
    read
done

cat 99.txt
