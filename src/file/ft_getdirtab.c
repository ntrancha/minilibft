/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_getdirtab.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ntrancha <ntrancha@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/08/22 01:14:10 by ntrancha          #+#    #+#             */
/*   Updated: 2015/08/22 01:24:52 by ntrancha         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <dirent.h>
#include "../../includes/file.h"
#include "../../includes/mem.h"
#include "../../includes/strings.h"

char        **get_dir_tab(t_list *list, int count)
{
    char            **ret;
    t_node          *node;
    int             index;

    ret = ft_memalloc(sizeof(char*) * count + 1);
    node = list->start;
    index = 0;
    while (node)
    {
        ret[index] = ft_strdup(node->content);
        index++;
        node = node->next;
    }
    ft_listdel(list, ft_memdel);
    ret[index] = NULL;
    return (ret);
}

char        **ft_getdirtab(char *path, char *error)
{
    t_list          *list;
    struct dirent   *file;
    DIR             *rep;
    int             count;

    rep = ft_opendir(path, error);
    if (rep == NULL)
        return (NULL);
    list = ft_listcreate();
    if (list == NULL)
        return (NULL);
    count = 0;
    while ((file = readdir(rep)))
        if (ft_listadd(list, (void *)file->d_name) == NULL)
            return (NULL);
        else
            count++;
    return (get_dir_tab(list, count));
}
