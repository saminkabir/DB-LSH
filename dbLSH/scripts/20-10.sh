k=100

cd ../build/
declare -a arr=("sift")

for datasetName in "${arr[@]}"
do
    c=1.5
    L=5
    K=10
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-10.txt &

    c=1.75
    L=5
    K=10
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-11.txt &

    c=1.25
    L=5
    K=10
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-12.txt &

    c=1.5
    L=10
    K=10
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-13.txt &

    c=1.5
    L=15
    K=10
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-14.txt &

    c=1.5
    L=5
    K=12
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-15.txt &

    c=1.5
    L=5
    K=14
    beta=0.1
    R_min=0.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-16.txt &

    c=1.5
    L=5
    K=10
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-17.txt &

    c=1.75
    L=5
    K=10
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-18.txt &

    c=1.25
    L=5
    K=10
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-19.txt &

    c=1.5
    L=5
    K=10
    beta=0.1
    R_min=300
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-20.txt &

    c=1.5
    L=5
    K=10
    beta=0.1
    R_min=600
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-21.txt &

    c=1.5
    L=10
    K=10
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-22.txt &

    c=1.5
    L=15
    K=10
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-23.txt &

    c=1.5
    L=5
    K=12
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-24.txt &

    c=1.5
    L=5
    K=14
    beta=0.1
    R_min=6.50
    ./dblsh $datasetName $c $k $L $K $beta $R_min > 20-25.txt &

    # Wait until all parallel jobs for this dataset finish
    wait
done

