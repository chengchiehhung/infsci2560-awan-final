package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: HotelQuery 酒店查询条件
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class HotelQuery extends BaseQuery {

    private Integer id;

    private String hotelname;
}
