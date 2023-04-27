package cn.itfxq.admin.service;


import cn.itfxq.common.domain.Spots;
import cn.itfxq.common.query.SpotsQuery;
import cn.itfxq.common.util.PageList;

/**
 * @description: TODO
 */
public interface ISpotsService {

    void saveSpots(Spots spots);

    PageList getSpotsPageList(SpotsQuery spotsQuery);

    void updateSaveSpots(Spots spots);

    void deleteSpotsById(Long id);

    Spots getSpotById(SpotsQuery spotsQuery);
}