package cn.itfxq.common.util;

import org.apache.commons.lang.RandomStringUtils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * @description: CommonUtils 工具类
 * @author: awan-group 
 * @email: ZHQ27@pitt.edu
 * @date: created by 10/29
 * @copyright: itxfq 项目分享圈
 */
public class CommonUtils {

    /**
     * 自动产生订单号
     * @return
     */
    public static String autoGenerateOrderNum(){
        //时间（精确到毫秒）
        DateTimeFormatter ofPattern = DateTimeFormatter.ofPattern("yyyyMMddHHmmssSSS");
        String localDate = LocalDateTime.now().format(ofPattern);
        //随机数
        String randomNumeric = RandomStringUtils.randomNumeric(8);
        return localDate+randomNumeric;
    }
}
