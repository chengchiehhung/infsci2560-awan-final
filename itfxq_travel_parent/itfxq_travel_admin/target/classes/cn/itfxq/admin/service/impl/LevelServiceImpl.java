package cn.itfxq.admin.service.impl;


import cn.itfxq.admin.mapper.LevelMapper;
import cn.itfxq.admin.service.ILevelService;
import cn.itfxq.common.domain.Level;
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
public class LevelServiceImpl implements ILevelService {

    @Autowired
    private LevelMapper levelMapper;


    @Override
    public List<Level> findAllLevel() {
        return levelMapper.findAllLevel();
    }
}
