package cn.itfxq.common.domain;

import lombok.Data;

/**
 * @description: OrderDetail 订单详情
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
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
