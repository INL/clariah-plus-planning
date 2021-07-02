for x in `ls Word/*.docx`; do y=`basename $x .docx`.md; echo $y; pandoc -o $y $x; done
