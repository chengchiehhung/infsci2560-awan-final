package cn.itfxq.admin.service;



import cn.itfxq.common.domain.Level;
import cn.itfxq.common.domain.PriceArea;

import java.util.List;

/**
 * @description: IPriceService
 * @date: created by 10/25 21:17
 */
public interface IPriceService {
    List<PriceArea> findAllPriceArea();
}
