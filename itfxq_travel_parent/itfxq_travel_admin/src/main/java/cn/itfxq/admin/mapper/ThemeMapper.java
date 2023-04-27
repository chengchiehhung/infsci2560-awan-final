package cn.itfxq.admin.mapper;

import cn.itfxq.common.domain.Theme;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @description: ThemeMapper
 * @date: created by 10/25 21:16
 */
public interface ThemeMapper {
    //找到所有的主题
    @Select("select * from t_theme")
    List<Theme> findAllTheme();
}
