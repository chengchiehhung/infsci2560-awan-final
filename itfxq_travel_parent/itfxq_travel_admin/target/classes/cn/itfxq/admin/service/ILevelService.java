package cn.itfxq.admin.service;



import cn.itfxq.common.domain.Level;

import java.util.List;

/**
 * @description: ILevelService
 * @date: created by 10/25 21:17
 */
public interface ILevelService {
    List<Level> findAllLevel();
}
