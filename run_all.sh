find * -iname "thconfig" | while read line; do
	echo "Processing file '${line::-8}"
	cd "${line::-8}"
	therion thconfig
	cd ~/Documents/Spéléo/database_speleo/Chartreuse/Réseau_ded/topo_kriska/therion_kriska
done
