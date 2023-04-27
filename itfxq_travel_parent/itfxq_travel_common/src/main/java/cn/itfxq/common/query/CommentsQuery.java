package cn.itfxq.common.query;

import lombok.Data;

/**
 * @description: CommentsQuery 评论查询
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class CommentsQuery extends BaseQuery{

    private String content;

    private String  username;
}
