/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_screenget_buffer.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/30 06:12:35 by ntrancha          #+#    #+#             */
/*   Updated: 2015/07/30 06:20:56 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "includes/libft.h"

t_case          *ft_screenget_buffer(void)
{
    t_screen    *screen;

    screen = ft_screeninit();
    if (!screen)
        return (NULL);
    return (screen->buffer);
}
