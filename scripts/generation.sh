#!/bin/sh

#cvs up -Pd de phpdoc-all
cd /home/user/doc/cvs/phpdoc-all
echo "Update cvs..."
cvs up -Pd
echo "...termin�."
echo "G�n�ration des bases Sql"

# On commence par Php
echo "G�n�ration du revcheck PHP"
/usr/bin/php4 -q /home/user/doc/scripts/rev.php php pt_BR zh hk tw cs nl fi fr de el he hu it kr pl ro ru sk sl es sv tr ja
echo "...termin�."

# Puis Pear
echo "G�n�ration du revcheck Pear"
/usr/bin/php4 -q /home/user/doc/scripts/rev.php pear nl fr hu ru ja
echo "...termin�."

# Puis smarty
echo "G�n�ration du revcheck smarty"
/usr/bin/php4 -q /home/user/doc/scripts/rev.php smarty pt_BR fr de ru
echo "...termin�."

# Puis Gtk
echo "G�n�ration du revcheck gtk"
/usr/bin/php4 -q /home/user/doc/scripts/rev.php gtk pt_BR cs fr de it es ja
echo "...termin�."

############
# G�n�ration des images info_revcheck
############
echo "G�n�ration des images info_revcheck Php"
/usr/bin/php4 -q /home/user/doc/scripts/gen_picture_info.php php pt_BR zh hk tw cs nl fi fr de el he hu it kr pl ro ru sk sl es sv tr ja
echo "... termin�"

echo "G�n�ration des images info_revcheck Smarty"
/usr/bin/php4 -q /home/user/doc/scripts/gen_picture_info.php smarty pt_BR zh hk tw cs nl fi fr de el he hu it kr pl ro ru sk sl es sv tr ja
echo "... termin�"

echo "G�n�ration des images info_revcheck Pear"
/usr/bin/php4 -q /home/user/doc/scripts/gen_picture_info.php pear pt_BR zh hk tw cs nl fi fr de el he hu it kr pl ro ru sk sl es sv tr ja
echo "... termin�"


echo "G�n�ration des images info_revcheck Gtk"
/usr/bin/php4 -q /home/user/doc/scripts/gen_picture_info.php gtk pt_BR zh hk tw cs nl fi fr de el he hu it kr pl ro ru sk sl es sv tr ja
echo "... termin�"


echo "G�n�ration des images info_revcheckDOC_all_lang.png pour chaqu'une des documentations"
/usr/bin/php4 -q /home/user/doc/scripts/gen_picture_info_all_lang.php
echo "... termin�"
