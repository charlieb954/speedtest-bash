pip install speedtest-cli

if [ -e results.csv ]
then
    rm results.csv
fi

if [ -e results_cut.csv ]
then
    rm results_cut.csv
fi

for i in {1..3}; do 
	echo "Running speed test: $i/3"
	echo "Speed test: $i" >> results.csv
	speedtest-cli --simple >> results.csv
	echo " " >> results.csv 
	sleep 1
done

echo " "
cat results.csv

#cut -d ',' -f 4,5,6,7,8,10 results.csv > results_cut.csv
#column -s, -t results.csv
