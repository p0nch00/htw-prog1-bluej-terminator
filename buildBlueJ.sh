#!/bin/sh
index=1
rm ../package.bluej
cat ../../blueJTemplate.txt >> ../package.bluej
for i in *.java
 do
   rm ../"$i"
   sed '1d' "$i" >> ../"$i"
   echo "target$index.height=70" >> ../package.bluej
   echo "target$index.name=$i" >> ../package.bluej
   echo "target$index.showInterface=false" >> ../package.bluej
   echo "target$index.type=ClassTarget" >> ../package.bluej
   echo "target$index.width=120" >> ../package.bluej
   echo "target$index.x=130" >> ../package.bluej
   echo "target$index.y=10" >> ../package.bluej
   # shellcheck disable=SC2039
   let index=index+1
  done
cd ..
javac *.java
