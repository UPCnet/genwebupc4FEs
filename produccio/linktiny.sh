#!/bin/bash
#Directori on estan les traduccions
SRC=`pwd`/o2k7

#Ruta a la carpeta de tiny con * en la version
DST='eggs/Products.TinyMCE-*-py2.6.egg/Products/TinyMCE/skins/tinymce/themes/advanced/skins'

    
#Expandim las rutes destí (aixi poden contenir *)
for a in `echo $DST`; do
    echo "Link $SRC to: "$a
    ln -s -f $SRC $a
done

