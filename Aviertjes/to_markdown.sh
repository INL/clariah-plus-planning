for x in `ls Plustaken_Juli_2021/*.docx`; 
do 
  y=`basename $x .docx`.md; echo $y; 
  h=`basename $x .docx`.html;
  pandoc -o bla.$h $x;
  pandoc -t commonmark -o bla.$y bla.$h; 
  perl -pe 's/^(\s*)>/$1/g' bla.$h > $y;
  rm bla.$y
  rm bla.$h 
done
