package cn.itfxq.admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * @description: TravelServerApp
 * @date: created by 10/24 17:58
 * @copy: 请严格遵守法律规定，项目源码不能乱分享，乱传播，违者必究。
 *
 */
@SpringBootApplication(scanBasePackages = "cn.itfxq.admin")
@MapperScan("cn.itfxq.admin.mapper")
public class TravelServerApp {


    public static void main(String[] args) {
        SpringApplication.run(TravelServerApp.class, args);
    }

    @Bean
    public BCryptPasswordEncoder getBCryptPasswordEncoder(){
        return new BCryptPasswordEncoder();
    }

}
