package cn.itfxq.admin.controller;


import cn.itfxq.admin.service.IOrderService;
import cn.itfxq.common.query.OrderQuery;
import cn.itfxq.common.util.PageList;
import cn.itfxq.common.util.ResResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @description:OrderController
 * @date: created by 10/26 8:15
 */
@RestController
public class OrderController {

    @Autowired
    private IOrderService orderService;


    @PostMapping("/order/page")
    public ResResult getOrderList(OrderQuery orderQuery){
        try {
            PageList orderList = orderService.getOrderList(orderQuery);
            return new ResResult(ResResult.CodeStatus.OK,"操作成功",orderList);
        }catch (Exception e){
            return new ResResult(ResResult.CodeStatus.ILLEGAL_REQUEST,"操作失败");
        }
    }


}
