./svm-train -s 1 -n 0.12 -t 2 -v 4 ../data/points_2
mv points_2* data/
./svm-predict data/points_2 data/points_2.model data/points_2.out
cd data
python ../collect_data.py points_2 points_2.model points_2.out
gnuplot -p -e "plot \"../data/points_2.prediction\" u 2:3:1 with points pointtype 7 palette"
