echo compiling java sources...
rm -rf class
mkdir class

javac -cp ./library/commons-math3-3.2.jar -d class $(find ./src -name *.java)

echo make jar archive...
cd class
jar cf CoreScope-1.0.jar ./
rm ../CoreScope-1.0.jar
mv CoreScope-1.0.jar ../
cd ..
rm -rf class

echo done.
