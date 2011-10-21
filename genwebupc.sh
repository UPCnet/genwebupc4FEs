#!/bin/sh
# Arranc dels Frontends del servei GenwebUPC
# Arrenca els seguents serveis: zc x2
#
# chkconfig: 2345 85 15
# description: Arranca els Frontends del servei GenwebUPC


GENWEB_FOLDER=/var/plone/genwebupc/produccio

INSTANCIES=/var/plone/genwebupc/produccio/instances

case "$1" in
'start')
        echo "Iniciant Zope Client 1"
        $GENWEB_FOLDER/bin/zc1 start

        sleep 5
        echo "Iniciant Zope Client 2"
        $GENWEB_FOLDER/bin/zc2 start

        sleep 5
        echo "Iniciant Zope Client 3"
        $GENWEB_FOLDER/bin/zc3 start

        sleep 5
        echo "Iniciant Zope Client 4"
        $GENWEB_FOLDER/bin/zc4 start

        sleep 5
        echo "Iniciant Zope Client 5"
        $GENWEB_FOLDER/bin/zc5 start

        sleep 5
        echo "Iniciant Zope Client 6"
        $GENWEB_FOLDER/bin/zc6 start

        #sleep 5
        #echo "Iniciant Zope Client 7"
        #$GENWEB_FOLDER/bin/zc7 start

        #sleep 5
        #echo "Iniciant Zope Client 8"
        #$GENWEB_FOLDER/bin/zc8 start

        #sleep 5
        #echo "Iniciant Zope Client 9"
        #$GENWEB_FOLDER/bin/zc9 start

        #sleep 5
        #echo "Iniciant Zope Client 10"
        #$GENWEB_FOLDER/bin/zc10 start

        #sleep 5
        #echo "Iniciant Zope Client 11"
        #$GENWEB_FOLDER/bin/zc11 start

        #sleep 5
        #echo "Iniciant Zope Client 12"
        #$GENWEB_FOLDER/bin/zc12 start

    ;;
'stop')
        echo "Parant Zope Client 1"
        $GENWEB_FOLDER/bin/zc1 stop

        sleep 5
        echo "Parant Zope Client 2"
        $GENWEB_FOLDER/bin/zc2 stop

        sleep 5
        echo "Parant Zope Client 3"
        $GENWEB_FOLDER/bin/zc3 stop

        sleep 5
        echo "Parant Zope Client 4"
        $GENWEB_FOLDER/bin/zc4 stop

        sleep 5
        echo "Parant Zope Client 5"
        $GENWEB_FOLDER/bin/zc5 stop

        sleep 5
        echo "Parant Zope Client 6"
        $GENWEB_FOLDER/bin/zc6 stop

        #sleep 5
        #echo "Parant Zope Client 7"
        #$GENWEB_FOLDER/bin/zc7 stop

        #sleep 5
        #echo "Parant Zope Client 8"
        #$GENWEB_FOLDER/bin/zc8 stop

        #sleep 5
        #echo "Parant Zope Client 9"
        #$GENWEB_FOLDER/bin/zc9 stop

        #sleep 5
        #echo "Parant Zope Client 10"
        #$GENWEB_FOLDER/bin/zc10 stop

        #sleep 5
        #echo "Parant Zope Client 11"
        #$GENWEB_FOLDER/bin/zc11 stop

        #sleep 5
        #echo "Parant Zope Client 12"
        #$GENWEB_FOLDER/bin/zc12 stop

;;
*)
    echo "Usage: /etc/init.d/genwebupc { start | stop }"
    ;;
esac
exit 0
