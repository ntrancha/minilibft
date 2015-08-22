/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/22 22:17:08 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/22 23:12:17 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libft.h"

int     main(int argc, char **argv)
{
    char    **tab;
    t_fdos  *list;
    int     index;

    list = ft_getdir_rec(".", NULL);
    tab = ft_listtotab(list);
    index = 0;
    while (tab[index])
        ft_putendl(tab[index++]);
    ft_tabstrdel(tab);
}
