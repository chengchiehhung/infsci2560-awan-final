package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: UserQuery 用户查询条件
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
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
