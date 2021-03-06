/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_tabdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/12/15 12:22:08 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/19 06:44:17 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "../../includes/tab.h"

t_tab       *ft_tabdel(t_tab **tab)
{
    int i;

    i = 0;
    while (i < (*tab)->col)
    {
        free((*tab)->tab[i]);
        i++;
    }
    free((*tab)->tab);
    free(*tab);
    return (NULL);
}
