/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/22 22:17:08 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/22 22:53:27 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libft.h"

int     main(int argc, char **argv)
{
    char    **tab;
    int     index;

    tab = ft_getdirtab(".", NULL);
    index = 0;
    while (tab[index])
        ft_putendl(tab[index++]);
    ft_tabstrdel(tab);
}
