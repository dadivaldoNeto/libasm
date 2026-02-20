/*
* By Dadivaldo
* 2026
*/

# include <string.h>
#include "header.h"

void    ft_test_strcmp(char *s1, char *s2)
{
    int my_v = ft_strcmp(s1, s2);
    int og_v = strcmp(s1, s2);

    printf("MY: %d\n", my_v);
    printf("OG: %d\n", og_v);
}

int main(int ac, char **av)
{
    ft_test_strcmp(av[1], av[2]);
    return (0);
}
