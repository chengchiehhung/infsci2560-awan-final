package cn.itfxq.admin.service.impl;


import cn.itfxq.admin.mapper.ThemeMapper;
import cn.itfxq.admin.service.IThemeService;
import cn.itfxq.common.domain.Theme;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @description: TODO
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
public class ThemeServiceImpl implements IThemeService {

    @Autowired
    private ThemeMapper themeMapper;


    @Override
    public List<Theme> findAllTheme() {
        return themeMapper.findAllTheme();
    }
}
