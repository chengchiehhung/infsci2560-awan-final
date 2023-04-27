package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: BaseQuery 功能的查询
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class BaseQuery {
    private Long isAdmin = 0L; //是否是后台操作 0 表示前台操作 1表示后台操作
    private Long currentPage = 1L;
    private Long pageSize = 10L;

    private Long getStart(){
        return (this.currentPage-1)*this.pageSize;
    }
}
