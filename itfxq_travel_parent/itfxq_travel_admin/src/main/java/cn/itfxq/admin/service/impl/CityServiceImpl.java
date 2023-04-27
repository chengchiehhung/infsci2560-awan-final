package cn.itfxq.admin.service.impl;
import cn.itfxq.admin.mapper.CityMapper;
import cn.itfxq.admin.service.ICityService;
import cn.itfxq.common.domain.City;
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
public class CityServiceImpl implements ICityService {

    @Autowired
    private CityMapper cityMapper;


    @Override
    public List<City> queryAllCity() {
        return cityMapper.queryAllCity();
    }
}
