package cn.itfxq.admin.service;



import cn.itfxq.common.domain.Comments;
import cn.itfxq.common.domain.Order;
import cn.itfxq.common.query.CommentsQuery;
import cn.itfxq.common.util.PageList;

import java.util.List;

/**
 * @description: ICommentsService
 * @date: created by 10/28 7:51
 */
public interface ICommentsService {

    List<Order> queryOrderByUseridAndSpots(Comments comments);

    void saveComments(Comments comments);

    List<Comments> queryCommentsBySpotsid(Long spotsid);

    PageList getCommentsList(CommentsQuery commentsQuery);

    void delComments(Long id);
}
