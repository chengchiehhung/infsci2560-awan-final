package cn.itfxq.admin.controller.front;


import cn.itfxq.admin.service.ISpotsService;
import cn.itfxq.common.domain.Spots;
import cn.itfxq.common.query.SpotsQuery;
import cn.itfxq.common.util.PageList;
import cn.itfxq.common.util.ResResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @description:SpotsController
 * @date: created by 10/26 8:15
 */
@Controller
public class SpotsFrontController {

    @Autowired
    private ISpotsService spotsService;
    //分页查询数据
    @RequestMapping("/front/spots/page")
    @ResponseBody
    public ResResult getSpotsPageList(@RequestBody SpotsQuery spotsQuery){
        try {
            PageList spotsPageList = spotsService.getSpotsPageList(spotsQuery);
            return new ResResult(20000,"操作成功",spotsPageList);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");
    }

    @RequestMapping("/front/spots/getSpotById")
    @ResponseBody
    public ResResult getSpotById(@RequestBody SpotsQuery spotsQuery){
        try {
            Spots spot = spotsService.getSpotById(spotsQuery);
            return new ResResult(20000,"操作成功",spot);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new ResResult(50000,"操作失败");
    }




}
