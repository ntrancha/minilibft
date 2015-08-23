/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_filecopy.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/23 20:39:38 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/23 21:36:11 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/file.h"
#include "../../includes/strings.h"

int         ft_filecopy(char *file_src, char *path_dst)
{
    char    *content;

    content = ft_get_file(file_src);
    if (content == NULL)
        return (-1);
    ft_filedel(path_dst);
    if (ft_write_file(path_dst, content) == -1)
        return (-3);
    ft_strdel(&content);
    return (1);
}
