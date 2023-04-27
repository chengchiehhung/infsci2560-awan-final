package cn.itfxq.common.domain;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

/**
 * @description: Notes
 * @author: soulcoder 灵魂码仔
 * @email: 2579692606@qq.com
 * @date: created by 10/30 8:29
 * @copyright: itxfq 项目分享圈
 */
@Data
public class Notes {
    private Long id;
    private String title;
    private String notesdesc;
    private String departureTime;
    private Long traveldays;
    private Long travelnums;
    private String hotelname;
    private String precost;
    private String content;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private LocalDateTime createtime;
    private Long viewnum;
    private Long creatorid;
    private String fmUrl;
    private Custorm custorm;
}
