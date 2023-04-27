package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: CommentsQuery 评论查询
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class CommentsQuery extends BaseQuery{

    private String content;

    private String  username;
}
