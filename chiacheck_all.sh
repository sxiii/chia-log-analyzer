#!/bin/bash
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# ..:: CHIACHECK ::.. by Security XIII / Written on 17 may 2021         #
# Script that checks your chia logs and shows you arranged statistics   #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

plots="plotter_log_*txt"
totalnumber=$(ls $plots | wc -l)
echo "Total number of plot log files found: $totalnumber"

printf 'Filename & Hash .................................... \t TC \t RAM ... \t Stage 1 \t Stage 2 \t Stage 3 \t Stage 4 \t Total Time \t Copy time \t Date started .......... \t Date completed \n';

# Go around all files in directory
for filename in *txt; do

	threads=$(cat $filename | grep threads | awk -F" " '{ print $2 }')
	ram=$(cat $filename | grep "Buffer size" | awk -F" " '{ print $4 }')
	stage1=$(cat $filename | grep "Time for phase 1" | awk -F" " '{ print $6 }')
	stage2=$(cat $filename | grep "Time for phase 2" | awk -F" " '{ print $6 }')
	stage3=$(cat $filename | grep "Time for phase 3" | awk -F" " '{ print $6 }')
	stage4=$(cat $filename | grep "Time for phase 4" | awk -F" " '{ print $6 }')
	totaltime=$(cat $filename | grep "Total time" | awk -F" " '{ print $4 }')
	copytime=$(cat $filename | grep "Copy time" | awk -F" " '{ print $4 }')
	datestart=$(head -1 $filename | awk -F" " '{ print $1 }')
	dateend=$(tail -1 $filename | awk -F" " '{ print $1 }' | grep 20) 
	# Grep 20 to filter only rows which has year in them. If there is no year in lasw row, it means the script was cancelled
	# Now we save our data to file
	printf "$filename \t $threads \t $ram \t $stage1 \t $stage2 \t $stage3 \t $stage4 \t $totaltime \t $copytime \t $datestart \t $dateend \n" >> result.tsv
	
done

cat result.tsv

# If you want to keep the resulting file, comment-out the next line
# If you want to remove the resulting file, uncommet the next line
# rm result.tsv

