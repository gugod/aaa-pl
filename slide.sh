#/bin/bash
for f in 0*.pl; do ( clear; echo '# '$f; cat $f; read ; echo "#=> " ; perl $f ; read); done
