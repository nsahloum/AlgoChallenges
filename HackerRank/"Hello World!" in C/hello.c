#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{

    char s[100];
    scanf("%[^\n]%*c", &s);

    printf("%s\n", "Hello, World!");
    printf("%s", s);
    return 0;
}

