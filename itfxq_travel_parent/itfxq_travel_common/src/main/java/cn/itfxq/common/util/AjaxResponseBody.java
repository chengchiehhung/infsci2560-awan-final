package cn.itfxq.common.util;

import lombok.Data;

/**
 * @description: AjaxResponseBody 返回对象
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class AjaxResponseBody {
    private String status="200";
    private String msg="操作成功";
    private Object resultObj;

    public AjaxResponseBody(String msg) {
        this.status = "500";
        this.msg = msg;
    }

    public AjaxResponseBody() {
    }
}
