package cn.itfxq.common.domain;

import lombok.Data;

import java.time.LocalDate;

/**
 * @description: Custorm 顾客
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class Custorm {
    private Long id;
    private String username;
    private String email;
    private String password;
    private String headImg;
    private String tel;
    private LocalDate createtime;
    private Long totalpoints;
    private String captchaVal;
    private String captchaToken;
    private String account;
}
