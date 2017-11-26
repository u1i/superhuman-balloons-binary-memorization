# we want that many balloons
n=24

# start with the first
i=1

# start a fresh html page
#echo "<table><tr>" > index2.html

cat > index2.html <<EOF
<html>
<head>
<title>Balloons</title>
<style>
</style>
</head>
<body>
<table><tr style="height: 5vh">
EOF

# do this for every balloon
while [ "$i" -le "$n" ]
do
    # get a random number
    rnd=$(( ( RANDOM % 1000 )  + 1 ))

    # even number means read balloon,otherwise blue
    if [ $((rnd%2)) -eq 0 ]
    then
        echo "<td style='padding-left: 1vh; width: 5vh' bgcolor='#ff0000'><h1>$i</h1></td>" >> index2.html
    else
        echo "<td style='padding-left: 1vh; width: 5vh' bgcolor='#0000ff'><h1>$i</h1></td>" >> index2.html
    fi

    rc=$((rc+1))

    i=$((i+1))
done

echo "</tr></table></body></html>" >> index2.html
