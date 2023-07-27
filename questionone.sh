grep '" 200 ' web-server.log > fileone
wc -l fileone > answerone
cat answerone


sed -e 's/^.*\(HTTP\/1\.1"\)/ /g' web-server.log > filetwo
cut -c 1-5 filetwo > filethree
sort filethree > filefour
uniq -c filefour > answertwo
cat answertwo
