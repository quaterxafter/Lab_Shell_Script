for file in $(find . -type f -name "p*.c")
do
  trimmedName=`echo $file | cut -d'/' -f2 | cut -d'.' -f1`
  gcc -o $trimmedName $file
  if [ -f $trimmedName ]
  then
     ans=$(./$trimmedName)
   if [ $ans = 20 ]
   then
      point=10
   else
      point=7
fi
else
    point=5
fi
  echo $file $point
done
