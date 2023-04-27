package cn.itfxq.admin.controller.front;


import cn.itfxq.admin.service.IHotelService;
import cn.itfxq.common.domain.Hotel;
import cn.itfxq.common.util.ResResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @description: HotelFrontController
 * @date: created by 10/27 15:08
 */
@Controller
public class HotelFrontController {

    @Autowired
    private IHotelService hotelService;

    @RequestMapping("/front/hotel/list")
    @ResponseBody
    public ResResult getAllHotels(){
        try {
            List<Hotel> hotels = hotelService.findAll();
            return new ResResult(20000,"操作成功",hotels);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");
    }
}
