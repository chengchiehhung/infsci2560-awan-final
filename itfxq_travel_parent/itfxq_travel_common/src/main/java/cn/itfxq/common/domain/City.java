package cn.itfxq.common.domain;

import lombok.Data;

/**
 * @description: City城市类
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class City {
    private Long id;
    private String name;
    private Long parentid;
}
