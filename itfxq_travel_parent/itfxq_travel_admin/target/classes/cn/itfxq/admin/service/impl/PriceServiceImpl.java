package cn.itfxq.admin.service.impl;


import cn.itfxq.admin.mapper.LevelMapper;
import cn.itfxq.admin.mapper.PriceMapper;
import cn.itfxq.admin.service.ILevelService;
import cn.itfxq.admin.service.IPriceService;
import cn.itfxq.common.domain.Level;
import cn.itfxq.common.domain.PriceArea;
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
public class PriceServiceImpl implements IPriceService {

    @Autowired
    private PriceMapper priceMapper;

    @Override
    public List<PriceArea> findAllPriceArea() {
        return priceMapper.findAllPriceArea();
    }
}
