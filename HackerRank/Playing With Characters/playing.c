#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{
    char ch;
    char s[1000];
    char sen[1000][1000];

    scanf("%c", &ch);
    scanf("%s", &s);
    scanf("\n");
    scanf("%[^\n]%*c", &sen);

    printf("%c\n", ch);
    printf("%s\n", s);
    printf("%s", sen);
    return 0;
}