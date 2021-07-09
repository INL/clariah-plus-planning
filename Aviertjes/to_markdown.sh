for x in `ls Plustaken_Juli_2021/*.docx`; 
do 
  y=`basename $x .docx`.md; echo $y; 
  pandoc -o bla.$y $x; 
  perl -pe 's/^(\s*)>/$1/g' bla.$y > $y;
  rm bla.$y
done
