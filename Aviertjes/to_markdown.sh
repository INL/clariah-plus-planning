for x in `ls *.docx`; do y=`basename $x .docx`.md; echo $y; pandoc -o $y $x; done
