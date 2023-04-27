package cn.itfxq.admin.mapper;

import cn.itfxq.common.domain.City;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @description: CityMapper
 */
public interface CityMapper {

    @Select("select * from t_city")
    List<City> queryAllCity();
}
