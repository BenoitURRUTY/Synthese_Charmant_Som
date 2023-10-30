find * -iname "thconfig" | while read line; do
	echo "Processing file '${line::-8}"
	cd "${line::-8}"
	therion thconfig > ~/Documents/Speleo/database_speleo/Chartreuse/Reseau_ded/topo_kriska/therion_kriska/test.txt
	cd ~/Documents/Speleo/database_speleo/Chartreuse/Reseau_ded/topo_kriska/therion_kriska
done
