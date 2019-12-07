#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main()
{

    int n;
    int m;
    float g;
    float h;
    int sum;
    int diff;
    float suum;
    float diiff;

    scanf("%d %d", &n, &m);
    scanf("%f %f", &g, &h);
    sum = n + m;
    diff = n - m;
    suum = g + h;
    diiff = g - h;

    printf("%d %d\n", sum, diff);
    printf("%.1f %.1f", suum, diiff);
    return 0;
}

