/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/04 14:29:14 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/19 06:39:52 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/put.h"

void	ft_putstr(char const *str)
{
	while (*str != '\0')
	{
		ft_putchar(*str);
		str++;
	}
}
