find . * | grep -P "^ueb[0-9]{2}\$" | while read line
do
  cd $line/src || continue
  bash ../../buildBlueJ.sh
  cd ../..
done