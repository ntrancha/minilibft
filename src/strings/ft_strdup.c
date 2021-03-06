/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/03 15:30:09 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/18 22:51:56 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/mem.h"
#include "../../includes/strings.h"

char		*ft_strdup(const char *str)
{
	char	*new;
	int		count;

	count = 0;
	if (!str)
		return (NULL);
	new = ft_memalloc(sizeof(char) * ft_strlen(str) + 1);
	if (!new)
		return (NULL);
	while (str[count] != '\0')
	{
		new[count] = str[count];
		count++;
	}
	new[count] = '\0';
	return (new);
}
