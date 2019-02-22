#!bin/bash
echo "Saisir la date de restauration : (format annee-mois-journee)"
read file

if [ ! -d ~/solution-cloud/websave/$file ]; then
echo "sauvegarde inexistante"
else
rsync -a -e ssh ~/solution-cloud/websave/$file/ 192.168.43.208:/var/www/html/nextcloud/ 
echo "sauvegarde resteree"
fi
