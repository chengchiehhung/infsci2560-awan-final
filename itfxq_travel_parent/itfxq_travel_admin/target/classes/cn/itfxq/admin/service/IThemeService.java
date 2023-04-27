package cn.itfxq.admin.service;


import cn.itfxq.common.domain.Theme;

import java.util.List;

/**
 * @description: IThemeService
 * @date: created by 10/25 21:17
 */
public interface IThemeService {
    List<Theme> findAllTheme();
}
