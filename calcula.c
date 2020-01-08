#include "calc.h"
#include <stdio.h>


int main (){
    int a=10;
    int b=5;

    printf("La suma %d i %d es %d\n",a, b, suma(a,b));
    printf("La resta %d i %d es %d\n",a, b, resta(a,b));
    printf("La multiplicació %d i %d es %d\n",a, b, multiplica(a,b));
    printf("La divideix %d i %d es %d\n",a, b, divideix(a,b));
    printf("El major entre %d i %d es %d\n",a, b, major(a,b));
}