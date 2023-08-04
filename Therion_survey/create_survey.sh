echo "Creating survey folder for : $1"
mkdir $1
cd $1
mkdir Outputs
mkdir Data

sed "s/<CAVENAME>/$1/g" ../Therion_files_pattern/CAVENAME-SC.th > ${1}-SC.th
sed "s/<CAVENAME>/$1/g" ../Therion_files_pattern/CAVENAME-SP.th > ${1}-SP.th
sed "s/<CAVENAME>/$1/g" ../Therion_files_pattern/CAVENAME-tot.th > ${1}-tot.th
sed "s/<CAVENAME>/$1/g" ../Therion_files_pattern/thconfig > thconfig

sed "s/<CAVENAME>/$1/g" ../Therion_files_pattern/CAVENAME-coupe.th2 > Data/${1}-coupe.th2
sed "s/<CAVENAME>/$1/g" ../Therion_files_pattern/CAVENAME-plan.th2 > Data/${1}-plan.th2

