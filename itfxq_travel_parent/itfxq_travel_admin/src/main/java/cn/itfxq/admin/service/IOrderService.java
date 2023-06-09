package cn.itfxq.admin.service;



import cn.itfxq.common.domain.Custorm;
import cn.itfxq.common.domain.Order;
import cn.itfxq.common.query.OrderQuery;
import cn.itfxq.common.util.PageList;

import java.util.List;

/**
 * @description:
 * @author:awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/27 16:53
 */
public interface IOrderService {
    void makeScheduleOrder(Order order);

    List<Order> queryMyOrder(Custorm custorm);
    //查询订单的状态 根据订单号
    Order findOrderStatus(String orderNo);
    //删除未支付的订单
    void deleteOrder(Long orderId);
    //支付订单
    void goPayOrder(Long orderId);

    PageList getOrderList(OrderQuery orderQuery);
}
