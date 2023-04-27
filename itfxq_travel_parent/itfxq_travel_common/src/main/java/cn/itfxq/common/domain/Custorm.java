package cn.itfxq.common.domain;

import lombok.Data;

import java.time.LocalDate;

/**
 * @description: Custorm 顾客
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
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
