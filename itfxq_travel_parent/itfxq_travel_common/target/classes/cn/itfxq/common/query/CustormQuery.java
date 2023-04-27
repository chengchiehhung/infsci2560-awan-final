package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: CustormQuery 顾客查询条件
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class CustormQuery extends  BaseQuery {

    private String account;
    private String username;
    private String password;
}
