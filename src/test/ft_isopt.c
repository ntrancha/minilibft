/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isopt.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/28 21:05:46 by ntrancha          #+#    #+#             */
/*   Updated: 2015/07/28 21:06:13 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libft.h"

int         ft_isopt(char *option)
{
    if (!option[0] || option[0] != '-')
        return (0);
    if (option[1])
        if (option[1] == '-')
            return (2);
    return (1);

}
