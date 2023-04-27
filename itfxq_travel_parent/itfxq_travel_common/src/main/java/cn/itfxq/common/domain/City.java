package cn.itfxq.common.domain;

import lombok.Data;

/**
 * @description: City城市类
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class City {
    private Long id;
    private String name;
    private Long parentid;
}
