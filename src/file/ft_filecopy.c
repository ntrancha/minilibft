/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_filecopy.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/23 20:39:38 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/23 21:01:39 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/file.h"
#include "../../includes/strings.h"

int         ft_filecopy(char *file_src, char *path_dst)
{
    char    *content;
    char    *file;
    char    *path;
    char    *file_dst;

    content = ft_get_file(file_src);
    if (content == NULL)
        return (-1);
    file = ft_finpath(file_src);
    path = ft_dinpath(path_dst);
    file_dst = ft_strmjoin(path, "/", file);
    if (ft_filedel(file_dst) == -1)
        return (-1);
    if (ft_write_file(file_dst, content) == -1)
        return (-1);
    ft_strdel(&file);
    ft_strdel(&path);
    ft_strdel(&file_dst);
    return (1);
}
