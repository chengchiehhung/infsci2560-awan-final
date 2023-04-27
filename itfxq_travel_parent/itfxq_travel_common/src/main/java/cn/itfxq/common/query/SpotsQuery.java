package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: SpotsQuery 景区查询条件
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class SpotsQuery  extends  BaseQuery {
    private Long id;
    private String name;
    private Long levelid;
    private Long themeid;
    private Long cityid;
    private Long pricefwid;
    private String orderByType="id";

}
