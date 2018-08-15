#/bin/bash
for f in 0*.pl; do
    clear;
    echo '# '$f
    cat $f
    # source-highlight --out-format esc --src-lang perl < $f
    read
    echo "# perl $f"
    echo "#=> "
    perl $f
    read
done
