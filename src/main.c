/*
* By Dadivaldo
* 2026
*/

#include "header.h"

int main(int ac, char **av)
{
    int i = 0;
    if (ac == 1)
        return (1);
    char dest[100] = {'A', 'B'};


    i = ft_strlen(av[1]);


    ft_strcpy(dest, av[2]);
    printf("%d\n", i);
    printf("%s\n", dest);
    return (0);
}
