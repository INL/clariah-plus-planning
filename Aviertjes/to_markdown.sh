for x in `ls Plustaken_Juli_2021/*.docx`; do y=`basename $x .docx`.md; echo $y; pandoc -o $y $x; done
