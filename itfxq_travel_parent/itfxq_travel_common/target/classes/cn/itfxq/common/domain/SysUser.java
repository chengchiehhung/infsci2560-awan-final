package cn.itfxq.common.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @description: SysUser 系统用户
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class SysUser implements Serializable {
    private static final long serialVersionUID = -5604007880179803027L;

    private Long id;

    private String username;


    private String password;
    /**
     * 头像
     */

    private String icon;
    /**
     * 邮箱
     */

    private String email;

    /**
     * 昵称
     */

    private String nickName;

    /**
     * 备注信息
     */

    private String note;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date createTime;

    /**
     * 最后登录时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")

    private Date loginTime;

    /**
     * 帐号启用状态：0->禁用；1->启用
     */
    private Integer status;

    //用户对应的角色
    private List<SysRole> userRolesList = new ArrayList();
}
