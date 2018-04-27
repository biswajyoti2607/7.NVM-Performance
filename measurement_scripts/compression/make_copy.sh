ITER=10
for (( c=3; c<=$ITER; c++ ))
do
  mkdir -p ./photorepo${c}
  cp -R ./photorepo1/*.jpg ./photorepo${c} 
done
