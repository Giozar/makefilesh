echo
"helloprintlibrary.o: helloprintlibrary.c"
echo "gcc -c helloprintlibrary. -o helloprintlibrary.o"
gcc -c helloprintlibrary.c -o helloprintlibrary.o
echo "libprintlibrary.so: helloprintlibrary.o"
echo "gcc -shared helloprintlibrary.o -o libhelloprintlibrary.so"
gcc -shared helloprintlibrary.o -o libhelloprintlibrary.so
echo "helloSOexe: hellomainlibrary.o"
echo "gcc -L/home/usuario/so210/makeso/makelibso/ -Wall -o helloSOexe hellomainlibrary. -helloprintlibrary"
# gcc -L/home/usuario/so21o/makeso/makelibso/ -Wall -o helloSOexe hellomainlibrary. -helloprintlibrary
gcc -L/home/giozar/development/personal/c/makelibso -Wall -o helloSOexe hellomainlibrary.c -lhelloprintlibrary
echo "to clean: rm hellomainlibrary.o helloprintlibrary.o libhelloprintlibrary.so helloSOexe"
echo "LD_LIBRARY_PATH=/home/usuario/so210/makeso/makelibso/:$LD_LIBRARY_PATH"
# LD_LIBRARY_PATH=/home/usuario/so210/makeso/makelibso/:$LD_LIBRARY_PATH
LD_LIBRARY_PATH=/home/giozar/development/personal/c/makelibso/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH

echo "Ejecucion con carga de la shared object"
./helloSOexe
