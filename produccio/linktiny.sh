#!/bin/bash
#Directori actual (suposem que es el buildout)
BUILDOUT=`pwd`

SOURCES=( )

DESTINATIONS=( )

function add {
    SOURCES[${#SOURCES[*]}]="$1"
    DESTINATIONS[${#DESTINATIONS[*]}]="$2"
}

#Ruta a la carpeta de tiny con * en la version
add /o2k7 '/eggs/Products.TinyMCE-*-py2.6.egg/Products/TinyMCE/skins/tinymce/themes/advanced/skins'

#Parche plonelink.js
add /patch_tiny/plonelink.js '/eggs/Products.TinyMCE-*-py2.6.egg/Products/TinyMCE/skins/tinymce/plugins/plonelink/js/'
    

for s in ${SOURCES[@]}; do
    
    #Expandim las rutes destí (aixi poden contenir *)
    for a in `echo $BUILDOUT${DESTINATIONS[$i]}`; do
        echo 'Link to: '$a
        ln -s -f $BUILDOUT$s $a
    done
    i=$(( $i + 1 ))

done

