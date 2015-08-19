/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_screenget_size.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/07/30 06:12:35 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/19 07:12:51 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/screen.h"

int             ft_screenget_size(void)
{
    t_screen    *screen;

    screen = ft_screeninit();
    if (!screen)
        return (-1);
    return (screen->size);
}
