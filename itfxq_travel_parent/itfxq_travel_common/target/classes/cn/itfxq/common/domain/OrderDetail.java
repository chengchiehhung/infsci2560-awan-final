package cn.itfxq.common.domain;

import lombok.Data;

/**
 * @description: OrderDetail 订单详情
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class OrderDetail {
    private Long id;
    private Long orderid;
    private String travelerName;
    private String cardNum;
}
