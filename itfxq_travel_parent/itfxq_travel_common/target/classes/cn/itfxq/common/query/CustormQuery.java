package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: CustormQuery 顾客查询条件
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class CustormQuery extends  BaseQuery {

    private String account;
    private String username;
    private String password;
}
