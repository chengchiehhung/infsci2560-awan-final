package cn.itfxq.admin.service;


import cn.itfxq.common.domain.City;

import java.util.List;

/**
 * 查询城市
 */
public interface ICityService {

    //查询所有的城市
    List<City> queryAllCity();
}
