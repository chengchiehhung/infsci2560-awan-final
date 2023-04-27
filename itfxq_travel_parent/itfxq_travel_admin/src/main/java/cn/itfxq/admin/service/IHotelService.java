package cn.itfxq.admin.service;


import cn.itfxq.common.domain.Hotel;
import cn.itfxq.common.query.HotelQuery;
import cn.itfxq.common.util.PageList;

import java.util.List;

/**
 * @description: TODO
 */
public interface IHotelService {
    //查询所有的酒店
    PageList getHotelList(HotelQuery hotelQuery);
    //新增保存酒店
    void addSaveHotel(Hotel hotel);
    //删除酒店
    void delHotel(Long id);
    //编辑保存酒店
    void editSaveHotel(Hotel hotel);

    List<Hotel> findAll();


    Hotel queryHotelById(Long hotelid);
}