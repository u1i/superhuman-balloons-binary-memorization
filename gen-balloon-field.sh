# we want that many balloons
n=48

# start with the first
i=1

# start a fresh html page
> index.html

# we want a horizontal line after 8 balloons so we count the balloons in a row
rc=0

# do this for every balloon
while [ "$i" -le "$n" ]
do
    # get a random number
    rnd=$(( ( RANDOM % 1000 )  + 1 ))

    # even number means read balloon,otherwise blue
    if [ $((rnd%2)) -eq 0 ]
    then
        echo "<img src='http://www2.sotong.io/static/redc.png' border='0'>" >> index.html
    else
        echo "<img src='http://www2.sotong.io/static/bluec.png' border='0'>" >> index.html
    fi

    rc=$((rc+1))

    # add  line after 8 balloons
    if [ "$rc" = "8" ]
    then
        echo "<hr>" >> index.html
        rc=0
    fi

    i=$((i+1))
done
