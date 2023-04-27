package cn.itfxq.common.domain;

import lombok.Data;

import java.time.LocalDate;

/**
 * @description: Spots 景区
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class Spots {
    private Long id;
    private String name;
    private String address;
    private String opentime;
    private Double price;
    private String tel;
    private String spotsDesc;
    private String info;
    private String purchaseinfo;
    private String features;
    private Long spotsid;
    private City city;
    private Long levelid;
    private Level level;
    private Long themeid;
    private Theme theme;
    private LocalDate createtime;
    private Long salenum;
    private Long creatorid;
    private String fmUrl;


}
