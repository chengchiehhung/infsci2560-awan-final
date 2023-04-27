package cn.itfxq.admin.service.impl;

import cn.itfxq.admin.mapper.SpotsMapper;
import cn.itfxq.admin.mapper.UserMapper;
import cn.itfxq.admin.service.ISpotsService;
import cn.itfxq.auth.config.util.AuthUtils;
import cn.itfxq.common.domain.Spots;
import cn.itfxq.common.domain.SysUser;
import cn.itfxq.common.query.SpotsQuery;
import cn.itfxq.common.util.PageList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.List;

/**
 * @description: TODO
 */
@Service
@Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
public class SpotsServiceImpl implements ISpotsService {

    @Autowired
    private SpotsMapper spotsMapper;

    @Autowired
    private UserMapper userMapper;


    @Override
    @Transactional
    public void saveSpots(Spots spots) {
        spots.setCreatetime(LocalDate.now());
        SysUser sysUser = userMapper.selectByUsername(AuthUtils.getLoginUsername());
        Long userId = sysUser.getId();
        spots.setCreatorid(userId);
        spotsMapper.saveSpots(spots);
    }

    //前台分页查询
    @Override
    public PageList getSpotsPageList(SpotsQuery spotsQuery) {
        //查询景区的总数
        Long total  =  spotsMapper.queryTotal(spotsQuery);
        //查询景区的每页显示的数据
        List spotsList = spotsMapper.queryData(spotsQuery);
        PageList pageList = new PageList(spotsQuery.getCurrentPage(),total,spotsList);
        return pageList;
    }

    @Override
    public void updateSaveSpots(Spots spots) {
        spotsMapper.updateSaveSpots(spots);
    }

    @Override
    public void deleteSpotsById(Long id) {
        spotsMapper.deleteSpotsById(id);
    }

    @Override
    public Spots getSpotById(SpotsQuery spotsQuery) {
        return spotsMapper.getSpotById(spotsQuery.getId()) ;
    }


}
