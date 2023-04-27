package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: HotelQuery 酒店查询条件
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class HotelQuery extends BaseQuery {

    private Integer id;

    private String hotelname;
}
