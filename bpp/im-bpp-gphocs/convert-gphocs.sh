# change '12 500' to 'locusX 12 500'
for i in {1..2000}; do sed -i "0,/^12 500/{s/^12 500/locus$i 12 500/}" mydata-gphocs.txt; done

# Change labels
sed -i 's/\^[A-D]//' mydata-gphocs.txt

# delete spaces within sequences
sed -i "s/\([ACGT]\) \([ACGT]\)/\1\2/g" mydata-gphocs.txt

# delete empty lines
# sed -i '/^[[:space:]]*$/d' mydata-gphocs.txt

# prepend number of loci as first line in the file
sed -i '1 i\2000' mydata-gphocs.txt
