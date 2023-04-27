package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: UserQuery 用户查询条件
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class UserQuery extends BaseQuery {

    //登录用户id
    private Integer id;

    private String username;

    private String email;



}
